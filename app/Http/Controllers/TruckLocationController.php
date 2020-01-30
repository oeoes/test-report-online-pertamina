<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TruckLocation;

class TruckLocationController extends Controller
{
    public function truckLookup($user_id, $request_id) {
        $data = TruckLocation::where('user_id', $user_id)
                ->where('test_request_id', $request_id)
                ->where('state', 0)->get();
        if (count($data)) {
            return "True";
        }
        else {
            return "False";
        }
    }

    public function setLocation() {
        $data = TruckLocation::where('user_id', request('user_id'))
                ->where('test_request_id', request('request_id'))
                ->where('state', 0)->first();
        $current = TruckLocation::find($data->id);

        $current->lat = request('lat');
        $current->lng = request('lng');
        $current->save();
        return $current;
    }

    public function getLocation($user_id, $request_id) {
        $data = TruckLocation::where('user_id', request('user_id'))
                ->where('test_request_id', request('request_id'))
                ->where('state', 0)->first();
        return $data;
    }
}
