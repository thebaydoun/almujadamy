<?php

namespace Modules\UserManagement\Entities;

use App\Traits\HasUuid;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Modules\BookingModule\Entities\Booking;
use Modules\CartModule\Entities\AddedToCart;
use Modules\ChattingModule\Entities\ChannelConversation;
use Modules\CustomerModule\Entities\SearchedData;
use Modules\ProviderManagement\Entities\Provider;
use Modules\ReviewModule\Entities\Review;
use Modules\ServiceManagement\Entities\VisitedService;
use Modules\TransactionModule\Entities\Account;
use Modules\TransactionModule\Entities\Transaction;
use Modules\ZoneManagement\Entities\Zone;
use Laravel\Passport\Token;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, SoftDeletes;

    use HasFactory, HasUuid;

    protected $hidden = [
        'password'
    ];

    protected $casts = [
        'is_phone_verified' => 'integer',
        'is_email_verified' => 'integer',
        'is_active' => 'integer',
        'identification_image' => 'array',
        'wallet_balance' => 'float',
        'loyalty_point' => 'float',
    ];

    protected $fillable = [
        'uuid', 'first_name', 'last_name', 'email', 'phone', 'identification_number', 'identification_type', 'identification_image', 'date_of_birth', 'gender',
        'profile_image', 'fcm_token', 'is_phone_verified', 'is_email_verified', 'phone_verified_at', 'email_verified_at', 'password', 'is_active', 'provider_id', 'user_type',
        'wallet_balance', 'loyalty_point', 'ref_code', 'referred_by'
    ];

    public function roles(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Role::class, 'user_roles');
    }

    public function bookings(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(Booking::class, 'customer_id', 'id');
    }

    public function reviews(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(Review::class, 'customer_id');
    }

    public function zones(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Zone::class, 'user_zones');
    }

    public function addresses(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(UserAddress::class);
    }

    protected function scopeOfType($query, array $type)
    {
        $query->whereIn('user_type', $type);
    }

    protected function scopeOfStatus($query, $status)
    {
        $query->where('is_active', $status);
    }

    public function account(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Account::class);
    }

    public function referred_by_user()
    {
        return $this->belongsTo(User::class, 'referred_by');
    }

    public function provider(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Provider::class);
    }

    public function serviceman(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(Serviceman::class);
    }

    public function transactions_for_from_user(): HasMany
    {
        return $this->hasMany(Transaction::class, 'from_user_id');
    }

    public function added_to_carts(): HasMany
    {
        return $this->hasMany(AddedToCart::class, 'user_id', 'id');
    }

    public function visited_services(): HasMany
    {
        return $this->hasMany(VisitedService::class, 'user_id', 'id');
    }

    public function searched_data(): HasMany
    {
        return $this->hasMany(SearchedData::class, 'user_id', 'id');
    }

    public function channelConversations(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(ChannelConversation::class, 'user_id', 'id');
    }

    public static function boot()
    {
        parent::boot();

        self::creating(function ($model) {
            $model->ref_code = generate_referer_code();
        });

        self::created(function ($model) {
            $account = new Account();
            $account->user_id = $model->id;
            $account->save();
        });

        self::updating(function ($model) {
            if ($model->isDirty('is_active')) {
                if ($model->is_active == 0){
                    $model->fcm_token = '';
                }
            }
        });

        self::updated(function ($model) {
            if ($model->isDirty('is_active')) {

                if ($model->is_active == 0){

                    $title = translate('Your account has been deactivated! Please contact with admin');
                    if ($model->fcm_token && $title) {
                        device_notification($model->fcm_token, $title, null, null, null, 'logout', null, $model->id);
                    }

                    $model->tokens->each(function ($token, $key) {
                        $token->revoke();
                    });
                }
            }
        });

        self::deleting(function ($model) {
            // ... code here
        });

        self::deleted(function ($model) {
            // ... code here
        });
    }
}
