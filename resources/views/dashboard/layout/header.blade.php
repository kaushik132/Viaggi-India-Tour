<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
        @if (isset($seo_data['seo_title']))
        <meta property="og:title" content="{{ $seo_data['seo_title'] }}">
    @endif
    <meta property="og:site_name" content="bbsmituni">

    <meta property="og:url" content="https://bbsmituni.com/">

    @if (isset($seo_data['seo_description']))
        <meta property="og:description" content="{{ $seo_data['seo_description'] }}">
    @endif


    @if (isset($seo_data['seo_title']))
        <title>{{ $seo_data['seo_title'] }}</title>
    @endif

    @if (isset($seo_data['seo_description']))
        <meta name="description" content="{{ $seo_data['seo_description'] }}" />
    @endif

    @if (isset($seo_data['keywords']))
        <meta name="keywords" content="{{ $seo_data['keywords'] }}" />
    @endif


    @if (isset($canocial))
        <link rel="canonical" href="{{ $canocial }}" />
    @endif
    <meta property="og:type" content="website">
    <meta property="og:image" content="{{url('uplaods/'.$seo_data['image'])  }}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="{{url('project/css/style.css')}}">
    <link rel="stylesheet" href="{{url('project/css/Destination.css')}}">
    <link rel="stylesheet" href="{{url('project/css/Detailes.css')}}">
    <link rel="stylesheet" href="{{url('project/css/Package.css')}}">
    <link rel="stylesheet" href="{{url('project/css/Contact.css')}}">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Italiana&family=Montserrat:wght@400&display=swap"
        rel="stylesheet">


    <!-- Font Awesome 6 CDN (Free version) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">



</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg">
            <div class="container d-flex justify-content-between align-items-center hima">

                <!-- Logo -->
                <div class="logo-section d-flex align-items-center">
                    <img class="logo-img" src="{{url('project/images/logo.webp')}}" alt="">
                </div>

                <!-- Small screen: WhatsApp icon + Toggler -->
                <div class="d-lg-none d-flex align-items-center gap-2">
                    <a href="https://wa.me/your-number" target="_blank" class="login-btn">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <button class="navbar-toggler" type="button" id="menuToggle">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>

                <!-- ✅ Desktop Navigation Centered -->
                <div class="d-none d-lg-flex justify-content-center flex-grow-1">
                    <ul class="navbar-nav gap-4">
                        <li class="nav-item"><a class="nav-link" href="{{url('/')}}">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{route('Destination')}}">Destination</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{route('Packages')}}">Packages</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{url('contact-us')}}">Contact</a></li>
                    </ul>
                </div>

                <!-- WhatsApp icon for large screen -->
                <div class="d-none d-lg-block">
                    <a href="https://wa.me/your-number" target="_blank" class="login-btn">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                </div>

            </div>
        </nav>


        <!-- Offcanvas Menu -->
        <div id="offcanvasMenu" class="offcanvas-custom d-lg-none">
            <button class="close-btn" id="menuClose">&times;</button>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="{{url('/')}}">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('Destination')}}">Destination</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('Packages')}}">Packages</a></li>
                <li class="nav-item"><a class="nav-link" href="{{url('contact-us')}}">Contact</a></li>
            </ul>
        </div>
    </header>


