<?php

namespace App\Casts;

use App;
use Illuminate\Contracts\Database\Eloquent\CastsAttributes;
use Illuminate\Support\Facades\Log;

class LocalizedJsonData implements CastsAttributes
{
    /**
     * Cast the given value.
     *
     * @param  \Illuminate\Database\Eloquent\Model $model
     * @param  string                              $key
     * @param  mixed                               $value
     * @param  array                               $attributes
     * @return array
     */
    public function get($model, $key, $value, $attributes)
    {
        return $value;
    }

    public function set($model, $key, $value, $attributes){
    
    }
}
