<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('home-banners', HomeBannerController::class);
    $router->resource('contacts', ContactController::class);
    $router->resource('regions', RegionController::class);
    $router->resource('destinations', DestinationDetailsController::class);
    $router->resource('tourdetails', TourListController::class);




});
