<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ConstructionR├ęparation extends Model
{
    protected $fillable = [
        'date',
        'materiel',
        'quantite',
        'PriceUnitaire',
        'obs'
      ];

   

}
