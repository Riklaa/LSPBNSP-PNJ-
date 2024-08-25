<?php

namespace App\Models;

use App\Traits\UuidTraits;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class MProvinsi extends Authenticatable
{
    use HasFactory, Notifiable, UuidTraits;
    protected $table = 'tbl_provinsi';
    protected $primaryKey = 'id_provinsi';
}
