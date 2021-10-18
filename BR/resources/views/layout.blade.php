<!DOCTYPE html>
<html>
    <head>
        <meta charset='UTF-8'>
        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
        <script type='text/javascript' src="{{URL::asset('js/bootstrap.min.js')}}"></script>
        
        <link rel="stylesheet" href="{{URL::asset('css/bootstrap.min.css')}}"/>
        <link rel="stylesheet" href="{{URL::asset('css/bootstrap-theme.min.css')}}"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PBR</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="text-center">
            <h3><b>MENU</b>: <a href="{{route('naukowcy')}}">Naukowcy</a> | <a href="{{route('badania')}}">Badania</a></h3>
        </div>
        <div class="container">
            <div class="content">
                @yield('content')
            </div>
        </div>
    </body>
</html>
