@extends('admin.welcome')

@section('admin')

@if(Session::has('message1'))
<script>Swal.fire(
  'Login Berhasil!',
  '',
  'success'
)</script>
@endif
<div class="card text-white bg-white" style="max-width: 100em;">
  <div class="card-header bg-dark">Inventaris</div>
  <div class="card-body">
  <div id="content-dashboard">
         <div id="content">
         <blockquote class="blockquote text-center">
  <h2>Selamat Datang <b>{{ Auth::user()->name }}</b></h2>
  <h2>Selamat Datang <b>{{ Auth::user()->name }}</b></h2>
  <footer class="blockquote-footer">SMK BAGIMU NEGERIKU<cite title="Source Title"><div id='jam' ></div>
</cite></footer>
</blockquote>
           <!-- <h2 >Selamat Datang <b>{{ Auth::user()->name }}</b></h2> -->
         </div>

         </div>
  </div>
</div>
<script type="text/javascript">
// 1 detik = 1000
window.setTimeout("waktu()",1000);  
function waktu() {   
var tanggal = new Date();  
setTimeout("waktu()",1000);  
document.getElementById("jam").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds();
}
</script>
<script language="JavaScript">
    var tanggallengkap = new String();
    var namahari = ("Minggu Senin Selasa Rabu Kamis Jumat Sabtu");
    namahari = namahari.split(" ");
    var namabulan = ("Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desember");
    namabulan = namabulan.split(" ");
    var tgl = new Date();
    var hari = tgl.getDay();
    var tanggal = tgl.getDate();
    var bulan = tgl.getMonth();
    var tahun = tgl.getFullYear();
    tanggallengkap = namahari[hari] + ", " +tanggal + " " + namabulan[bulan] + " " + tahun;
    </script>
    <div class="card">
 <script language='JavaScript'>document.write(tanggallengkap);</script>
 </div>
@endsection

         <div id="content-dashboard">
            <div class="card text-white bg-white" style="max-width: 100em;">
              <div class="card-header bg-dark">Inventaris</div>
              <div class="card-body">
              <div id="content-dashboard">
                    <div id="content">
                    <blockquote class="blockquote text-center">
              <h2>Selamat Datang <b>{{ Auth::user()->name }}</b></h2>
              <h2>Selamat Datang <b>{{ Auth::user()->name }}</b></h2>
              <footer class="blockquote-footer">SMK BAGIMU NEGERIKU<cite title="Source Title"><div id='jam' ></div>
            </cite></footer>
            </blockquote>
                      <!-- <h2 >Selamat Datang <b>{{ Auth::user()->name }}</b></h2> -->
                    </div>
                    </div>
              </div>
            </div>
            <script type="text/javascript">
            // 1 detik = 1000
            window.setTimeout("waktu()",1000);  
            function waktu() {   
            var tanggal = new Date();  
            setTimeout("waktu()",1000);  
            document.getElementById("jam").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds();
            }
            </script>
            <script language="JavaScript">
                var tanggallengkap = new String();
                var namahari = ("Minggu Senin Selasa Rabu Kamis Jumat Sabtu");
                namahari = namahari.split(" ");
                var namabulan = ("Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desember");
                namabulan = namabulan.split(" ");
                var tgl = new Date();
                var hari = tgl.getDay();
                var tanggal = tgl.getDate();
                var bulan = tgl.getMonth();
                var tahun = tgl.getFullYear();
                tanggallengkap = namahari[hari] + ", " +tanggal + " " + namabulan[bulan] + " " + tahun;
                </script>
                <div class="card">
            <script language='JavaScript'>document.write(tanggallengkap);</script>
                      </div>
                    </div>
                </body>
            </html>

@endsection

