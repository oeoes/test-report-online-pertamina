<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\TestRequest;
use App\SpesificReport;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $kotak_masuk = TestRequest::where('status', 'pending')->count();
        $process = TestRequest::where('status', 'approved')->where('progress', '!=', 'released')->count();
        $print_approve = SpesificReport::where('print_coq', 1)
                        ->orWhere('print_before', 1)
                        ->orWhere('print_after', 1)
                        ->orWhere('print_distribution', 1)->count();
        Schema::defaultStringLength(191);
        View::share('kotak_masuk', $kotak_masuk);
        View::share('process', $process);
        View::share('print_approve', $print_approve);
    }
}
