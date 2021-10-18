@extends('layout')
@section('content')

<h1>Wykaz pracowników naukowych</h1>
<br />
<!--@foreach ($rekordy as $rekord)
{{$rekord->nazwisko}}<br />
@endforeach-->
<!--<form>
    Imie:<br>
    <input type="text" name="firstname"><br>
    Nazwisko:<br>
    <input type="text" name="lastname"></br>

    <input type="radio" name="stopientytul" value="dokt" checked>Doktorzy</br>
    <input type="radio" name="stopientytul" value="prof">Profesorowie</br>
    <input type="radio" name="stopientytul" value="tytulyzawodowe">Tytuły zawodowe</br>

    <input type="submit" name="submit"></br>
</form>-->
<table class='table'>
    <tr>
        <th>Id</th>
        <th>Tytuł</th>
        <th>Imię</th>
        <th>Nazwisko</th>
        <th>Data urodzenia</th>
        <th>Nazwa wydziału</th>
    </tr>
    @foreach ($rekordy as $rekord)
    <tr>
        <td>{{$rekord->id}}</td>
        <td>{{$rekord->tytul}}</td>
        <td>{{$rekord->imie}}</td>
        <td>{{$rekord->nazwisko}}</td>
        <td>{{date('j F Y', strtotime($rekord->data_urodzenia))}}</td>
        <td>{{$rekord->nazwa_wydzialu}}</td>
        <td><a href='{{route('usunNaukowca', ['id'=>$rekord->id])}}' class='btn btn-danger'>Usuń</a></td>
        <td>
            <form action='{{route('awansujNaukowca', ['id'=>$rekord->id])}}' method='post'>
            <select name='tytul'>
                @foreach ($tytuly as $tytul)
                <option value='{{$tytul->id}}'>{{$tytul->tytul}}</option>
                @endforeach
            </select><br />
                <input type='submit' value='awansuj'/>
            </form>
        </td>
    </tr>
    @endforeach
    <table/>

    @stop