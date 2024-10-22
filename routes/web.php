<?php


use App\Http\Middleware\CorsMiddleware;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([CorsMiddleware::class])->group(function () {
    Route::get('/elementos', function () {
        return response()->json([
            [
                'id' => 1,
                'nombre' => 'Monster',
                'descripcion' => 'Un thriller psicológico sobre un doctor que persigue a un asesino al que una vez salvó la vida.'
            ],
            [
                'id' => 2,
                'nombre' => 'Attack on Titan',
                'descripcion' => 'La humanidad lucha por sobrevivir en un mundo donde los titanes devoran a las personas.'
            ],
            [
                'id' => 3,
                'nombre' => 'Death Note',
                'descripcion' => 'Un estudiante de secundaria encuentra un cuaderno que le permite matar a cualquiera con solo escribir su nombre.'
            ]
        ]);
    });
});

