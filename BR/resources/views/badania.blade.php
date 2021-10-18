@extends('layout')
@section('content')

<h1 class="title">Wykaz badań naukowych</h1>
<br />
<table class='table'>
    <tr>
        <th>ID badania</th>
        <th>Temat</th>
        <th>Dziedzina</th>
        <th>Dyscyplina</th>
        <th>Liczba naukowców</th>
        <th>Data rozpoczęcia</th>
        <th>Trwa</th>
        <th>Data zakończenia</th>
        <th>Zakończ badanie</th>
    </tr>
    @foreach ($rekordy as $rekord)
    <tr>
        <td>{{$rekord->id}}</td>
        <td>{{$rekord->temat}}</td>
        <td>{{$rekord->dziedzina}}</td>
        <td>{{$rekord->dyscyplina}}</td>
        <td>{{$rekord->liczbaNaukowcow}}</td>
        <td>{{date('j F Y', strtotime($rekord->data_rozpoczecia))}}</td>
        <td>
            @if ($rekord->trwa == 1)
            tak
            @else
            nie
            @endif
        </td>
        <td>
            @if ($rekord->data_zakonczenia == 0)
            -
            @else
            {{date('j F Y', strtotime($rekord->data_zakonczenia))}}
            @endif
        </td>
        <td>
            @if ($rekord->trwa == 1)
            <a href='{{route('zakonczBadanie', ['id' => $rekord->id])}}' class='btn btn-danger'>Zakończ</a>
            @endif
        </td>
    </tr>
    @endforeach
    <table/>

    @stop