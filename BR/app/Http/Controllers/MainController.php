<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use DB;

class MainController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    public function pokazNaukowcow() {
        $zestawienie = DB::table('zestawienie_naukowcow')->get();
        $tytuly = DB::select('select * from tytuly');
        return view('naukowcy', ['rekordy' => $zestawienie, 'tytuly' => $tytuly]);
    }
    public function pokazBadania() {
        $zestawienie = DB::table('zestawienie_badan')->get();
        //$this->policzNaukowcowBadania(1);
        foreach ($zestawienie as $result) {
            $result->liczbaNaukowcow = $this->policzNaukowcowBadania($result->id);
            //$this->policzNaukowcowBadania($result->id);
        }
        return view('badania', ['rekordy' => $zestawienie]);
    }
    
    public function usunNaukowca($id) {
        $rowsDeleted = DB::delete('delete from zestawienie_naukowcow where id = ?', [$id]);
        DB::commit();
        echo $rowsDeleted;
        return redirect()->route('naukowcy');
    }
    
    public function awansujNaukowca(Request $request, $id) {
        $id_tytul = $request->input('tytul');
        echo $id_tytul;
        $rowsUpdated = DB::update('update zestawienie_naukowcow set id_tytul = ? where id = ?', [$id_tytul, $id]);
        DB::commit();
        return redirect()->route('naukowcy');
    }
    
    public function zakonczBadanie($id) {
        $rowsUpdated = DB::update('update zestawienie_badan set trwa = 0 where id = ?', [$id]);
        DB::commit();
        return redirect()->route('badania');
    }
    
    public function policzNaukowcowBadania($id) {
        $result = DB::select('select policz_naukowcow_badania(?) liczba from dual', [$id])[0];
        //var_dump($result);
        return $result->liczba;
    }
}
