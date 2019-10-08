<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Golab | Pertamina</title>
    <!-- <link rel="stylesheet" href="{{ asset('css/app.css') }}"> -->
    <link rel="stylesheet" href="{{ asset('basik/assets/css/bootstrap.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('basik/assets/css/theme.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('basik/assets/css/style.css') }}" type="text/css" />
    @yield('custom-css')
</head>
<body class="layout-row">
    @yield('content')
    <!-- jQuery -->
    <script src="{{ asset('basik/libs/jquery/dist/jquery.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset('basik/libs/popper.js/dist/umd/popper.min.js') }}"></script>
    <script src="{{ asset('basik/libs/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <!-- ajax page -->
    <script src="{{ asset('basik/libs/pjax/pjax.min.js') }}"></script>
    <script src="{{ asset('basik/assets/js/ajax.js') }}"></script>
    <!-- lazyload plugin -->
    <script src="{{ asset('basik/assets/js/lazyload.config.js') }}"></script>
    <script src="{{ asset('basik/assets/js/lazyload.js') }}"></script>
    <script src="{{ asset('basik/assets/js/plugin.js') }}"></script>
    <!-- scrollreveal -->
    <script src="{{ asset('basik/libs/scrollreveal/dist/scrollreveal.min.js') }}"></script>
    <!-- feathericon -->
    <script src="{{ asset('basik/libs/feather-icons/dist/feather.min.js') }}"></script>
    <script src="{{ asset('basik/assets/js/plugins/feathericon.js') }}"></script>
    <!-- theme -->
    <script src="{{ asset('basik/assets/js/theme.js') }}"></script>
    <script src="{{ asset('basik/assets/js/utils.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js" charset="utf-8"></script>
    <!-- endbuild -->

    <!-- chart -->
    <script src="{{ asset('js/summary.js') }}"></script>
    <!-- <script src="{{ asset('js/before.js') }}"></script> -->
    <!-- endof chart -->
    <script>
        $('#myalert').slideDown('fast')
        setTimeout(() => {
            $('#myalert').slideUp('slow')
        }, 1800);
    </script>
    @yield('custom-js')
</body>
</html>