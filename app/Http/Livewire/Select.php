<?php
use App\Models\Barangs;
namespace App\Http\Livewire;
use Livewire\Component;
use App\Jk_alat;
use App\Klmpk_alat;
class Select extends Component
{
    public $alat;
    public $kode_alat = [] ;
   public function updatedkodeId(){
       $this->kode_alat = Jk_alat::where('klmpk_alat', $this->alat)
       ->get();
   }
    public function render()
    {
        return view('livewire.select',[
            'alatt' => Klmpk_alat::all(),
        ]);
    }
  
}
