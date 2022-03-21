<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Superadmin;
use App\Http\Controllers\PinjamController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//multiuser
Auth::routes();
Route::get('/superadmin', 'SuperadminController@index')->name('superadmin')->middleware('superadmin');
Route::get('/user', 'UserController@index')->name('user')->middleware('user');
Route::get('/admin','AdminController@index')->name('admin')->middleware('admin');
Route::get('/home', 'HomeController@index')->name('home');

//superadmin
Route::get('/tambahuser', function () {
    return view('superadmin.tambahuser'); });
            //dash
            Route::get('/dash', function () {
                return view('superadmin/dash'); });
            Route::get('/dash','DatabarangnController@new')->name('new');
            Route::get('/dataterhapus', function () {
                return view('superadmin.hapusdata'); });


            Route::get('/users', function () {
                return view('superadmin/users');
                        });
            Route::get('/aturan', function () {
                return view('superadmin/aturan');
            });
            Route::get('/users/edit/{id}','UsersController@edit');
            //users
            Route::get('/sa', function () {
                return view('superadmin/sa');
            });
            Route::get('/sa','UsersController@index');
            Route::get('/sa/edit/{id}','UsersController@edit')->name('wuedit');
            Route::post('/users/update', 'UsersController@update')->name('editusers');
            //barang and ruang
            Route::get('/databarang', "DatabarangnController@index")->name("databarang");
            Route::get('/databarang/cari',"DatabarangnController@cari");
            Route::get('/dataruangan/cari',"RuangController@cari");
            Route::get('/dataruangan', "RuangController@ruang")->name("dataruangan");

            Route::post('/databarang/hapusdata/{id}', 'DataBarangnController@update_kembali')->name('migrasi');
            Route::get('/tambahdata', "TambahDataController@kelompokalat");


            //Ekspor
            Route::get('/exportbarang', "DatabarangnController@Barangexport")->name("exportbarang");



            //rusak
            Route::get('/brgrusakberat', function () {
                return view('/brgrusakberat');
            });
            Route::delete('/brgrusakberat/deletebrg/{id}','DatabarangnController@deletebrg')->name('deletebrg');
            Route::get('/brgrusakberat', 'DatabarangnController@brgrusakberat');
            Route::post('/brgrusakberat/perbaiki/{id}', 'DatabarangnController@update_perbaiki')->name('perbaiki');


            //pinjam

            Route::get('/pinjambarang', function () {
                return view('/pinjambarang');
            });
            Route::get('/pinjambarang', 'PinjamController@tambah')->name('pinjambarang');
            Route::post('/pinjambarang','PinjamController@store')->name('pinjambrg');
            Route::delete('/pinjambarang/{id}', 'PinjamController@destroy')->name('pinjambarang.destroy');


             Route::get('/laporanpeminjaman','PinjamController@index');
             Route::get('/tambahdata/search','DatabarangnController@cari')->name('barang.cari');
             Route::get('/tambahdata', 'DatabarangnController@indexklmpk');
             Route::get('/tambahdata', 'DatabarangnController@tambah');
             Route::get('/tambahdata/fetch', 'DatabarangnController@fetch')->name('tambahdata.fetch');
             Route::post('/tambahdata/tambah', 'DatabarangnController@store');
             Route::get('/databarang/{no}/edit','DatabarangnController@edit')->name('barangedit');
             Route::post('/barang/update', 'DatabarangnController@update')->name('update');
             Route::post('/databarang/{no}','DatabarangnController@hapus')->name('delete');

            // ruangan
            Route::get('/dataruangan/{kode_lokasi}/edit','RuangController@edit');
            Route::post('/lokasi/update', 'RuangController@updateruang')->name('updateruang');
            Route::get('/dataruangan/{kode_lokasi}/buka','RuangController@buka')->name('ruang.buka');
            //convert 
            Route::get('/pdf', 'PdfController@pdf')->name('print');
            //hapus
            Route::get('/dataterhapus', function () {
                return view('superadmin.hapusdata'); });
            Route::get('/dataterhapus', 'DatabarangnController@hps')->name('hps');
            
            //kelompok alat
            Route::get('/kelompok_alat','JenisAlatController@index')->name('klmpkalat');
            Route::get('/kelompokalat/cari','JenisAlatController@cari')->name('kelompok');
            Route::post('/tambahkelompokalat/tambah','JenisAlatController@store')->name('jenisalat.store');
            Route::get('/tambahkelompokalat','JenisAlatController@jenis')->name('kelompokalat');
            
            

//admin
// Route::get('/a/aturan', function () {
//     return view('admin.aturan');
// });
// //dash
// Route::get('/a/dash', function () {
//     return view('admin.dash'); });
// Route::get('/a/dash','AdminController@newa')->name('newaa');
// Route::get('/a/tambahdata','AdminController@lokasi')->name('newa');

// Route::get('a/databarang',"AdminController@data");
// Route::get('a/databarang/cari',"AdminController@cari");
// Route::post('a/tambahdata/tambah', 'AdminController@store');
// Route::get('a/databarang/{no}/edit','AdminController@edit');
// Route::post('a/barang/update', 'AdminController@update')->name('update');
// Route::post('a/databarang/{no}','AdminController@hapus')->name('delete');

