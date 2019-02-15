<?php

namespace App; 

use Illuminate\Database\Eloquent\Model;

class MahasiswaKP extends Model
{
    protected $table = 'mahasiswa_kp';

    public function mahasiswa_kp(){
    	return $this->belongsTo(Mahasiswa::class, 'mahasiswa_id');

    }
     public function instansi()
    {
        return $this->belongsTo('App\Instansi');
    }

    
    public function harian(){
        return $this->hasMany(KegiatanHarian::class, 'mhs_kp_id');
    }

    public function proposal()
    {
        return $this->belongsTo('App\Proposal','proposal_id', 'id');
    }
    public function statuskp()
    {
        return $this->belongsTo('App\StatusKP','status', 'id');
    }
    public function mhs()
    {
        return $this->belongsTo('App\Mahasiswa','mahasiswa_id', 'id');
    }
    // public function pembimbing()
    // {
    //     return $this->belongsTo('App\Dosen','pembimbing', 'id');
    // }

    public function data_pembimbing()
    {
        return $this->belongsTo('App\Dosen','pembimbing', 'id');
    }

    public function dosbing()
    {
        return $this->belongsTo('App\Dosen','pembimbing', 'id');
    }

    public function get_file_laporan_kp(){
        $laporan = $this->laporan_kp;
        // return $laporan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_laporan_kp(){
        $laporan = $this->laporan_kp;
        // return $laporan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_sertifikat_kp(){
        $laporan = $this->sertifikat_kp;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_sertifikat_kp(){
        $laporan = $this->sertifikat_kp;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_nilai_lapangan(){
        $laporan = $this->nilai_lapangan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_nilai_lapangan(){
        $laporan = $this->nilai_lapangan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_daftar_hadir(){
        $laporan = $this->daftar_hadir;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_daftar_hadir(){
        $laporan = $this->daftar_hadir;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_berita_acara(){
        $laporan = $this->berita_acara;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_berita_acara(){
        $laporan = $this->berita_acara;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_lap_kegiatan(){
        $laporan = $this->lap_kegiatan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_lap_kegiatan(){
        $laporan = $this->lap_kegiatan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }

    public function get_file_tanda_terima_laporan(){
        $laporan = $this->tanda_terima_laporan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[1];
        }
        return $storage_file;
    }

    public function get_type_tanda_terima_laporan(){
        $laporan = $this->tanda_terima_laporan;
        $storage_file = null;
        if($laporan){
            $arrFiles = explode("//", $laporan);
            $storage_file = $arrFiles[0];
        }
        return $storage_file;
    }


}
