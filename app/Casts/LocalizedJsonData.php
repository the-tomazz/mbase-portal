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
        $language = App::getLocale();

        if (is_string($value) && $value !== 'null') {
            $rawValue = $value;
            $value = json_decode($value, true);

            if ($value == null) {
                \Log::error('Invalid json in json encoded database data!', ['lang' => $language, 'data' => $rawValue]);
                throw new \Exception("Invalid json in json encoded database data!");
            }
        }

        // Main feature
        if (isset($value[$language]) && !empty($value[$language])) {
            return $value[$language];
        }

        // Primary fallback - english
        if (isset($value['en']) && !empty($value['en'])) {
            return $value['en'];
        }

        // Anything will do
        if (is_array($value) && count($value) >= 1) {
            foreach ($value as $item) {
                if (!empty($item)) {
                    return $item;
                }
            }
        }

        // Give up
        return "";
    }

    /**
     * Prepare the given value for storage.
     *
     * @param  \Illuminate\Database\Eloquent\Model $model
     * @param  string                              $key
     * @param  array                               $value
     * @param  array                               $attributes
     * @return string
     */
    public function set($model, $key, $value, $attributes)
    {
        if (is_array($value)) {
            return json_encode($value);
        }

		if (isset($attributes[$key])) {
			$new = json_decode($attributes[$key], true);
		}

		$new[App::getLocale()] = $value;
        return json_encode($new);
    }
}
