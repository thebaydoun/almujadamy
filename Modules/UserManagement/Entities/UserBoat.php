<?php

namespace Modules\UserManagement\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UserBoat extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'boat_name',
        'boat_number',
    ];
    
    protected static function newFactory()
    {
        return \Modules\UserManagement\Database\factories\UserBoatFactory::new();
    }
}
