<?php

namespace Modules\ProductModule\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'description', 'price', 'quantity'
    ];
    
    protected static function newFactory()
    {
        return \Modules\ProductModule\Database\factories\ProductFactory::new();
    }
}
