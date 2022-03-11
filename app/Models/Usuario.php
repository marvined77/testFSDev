<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Usuario
 *
 * @property $id
 * @property $nombre
 * @property $telefono
 * @property $username
 * @property $fecha_nacimiento
 * @property $email
 * @property $estado
 * @property $password
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Usuario extends Model
{
    use SoftDeletes;
    static $rules = [
		'nombre' => 'required',
		'telefono' => 'required',
		'username' => 'required',
		'fecha_nacimiento' => 'required',
		'email' => 'required',
    'password' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre','telefono','username','fecha_nacimiento','email','estado','password'];



}
