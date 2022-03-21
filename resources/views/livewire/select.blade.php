<div>

<div class="mb-3">
    <label for="kodekelompokalat" class="form-label">Kelompok Alat</label>
      <select  wire:model="alat" id="kodekelompokalat" class="form-select" name='kodekelompokalat' required>
        @foreach($alatt as $k)
          <option value="{{$k->kode_klmpk_alat}}">{{$k->klmpk_alat}}</option>
          @endforeach 
      </select>
    
  </div>

  


</div>