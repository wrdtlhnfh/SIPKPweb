<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FileController extends Controller
{
    public function image($type, $file_id)
    {
        if ($type == 'profile-pict') {
            return response()->file(
                storage_path('app/'.config('central.path.avatars').'/'.$file_id)
            );
        }
    }

    public function file_balasan($type,$file_id)
    {
            return response()->file(
                storage_path('app/'.$type.'/'.$file_id)
            );
    }

    public function lihat_file($type,$file_id)
    {
            return response()->file(
                storage_path('app/'.$type.'/'.$file_id)
            );
    }
}
