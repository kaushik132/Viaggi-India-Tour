@extends('dashboard.layout.main')
@section('main-containers')


  <main>

        <!--baner data -->

        <div class="swiper myUniqueSwiper" style="position: relative;">
            <div class="swiper-wrapper">
         
 @foreach ($banners as $banner)
                    
                
                <div class="swiper-slide">
                    <div class="baner1 position-relative">
                        <img src="{{url('uploads/'.$banner->image)}}" alt="Banner" class="slide-bg" />
                        <div class="baner-heading text-center position-relative">
                            <h1>{{$banner->name}}</h1>
                            <p>
                                {{$banner->short_content}}
                            </p>
                            <a href="{{$banner->link}}" >
                                <button class="explore-btn">Explore More <i class="fa fa-arrow-right"></i></button>
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
          


            </div>

            <!-- Pagination -->


            <!-- Navigation Buttons -->
            <div class="arrow-button">
                <button class="swiper-button-nex">
                    <i class="fas fa-arrow-left-long text-white"></i>
                </button>
                <button class="swiper-button-pre">
                    <i class="fas fa-arrow-right-long text-white"></i>
                </button>
            </div>
        </div>


        <!-- buttons -->

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="d-flex gap-3 mt-4">
                        <div class="dropdown">

                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <button class=" dropdown-toggle" type="button" id="dropdownMenuButton1"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Filter
                            </button>

                            <div class="dropdown-menu custom-filter p-3" aria-labelledby="dropdownMenuButton1">
                                <!-- By Destination / Region -->
                                <div class="filter-group">
                                    <h6>By Destination / Region</h6>
                                    <div><input type="radio" name="region"> Ladakh</div>
                                    <div><input type="radio" name="region"> Manali</div>
                                    <div><input type="radio" name="region"> Kashmir</div>
                                    <div><input type="radio" name="region"> Rajasthan</div>
                                    <div><input type="radio" name="region"> Kerala</div>
                                    <div><input type="radio" name="region"> North East India</div>
                                    <div><input type="radio" name="region"> International</div>
                                </div>

                                <!-- By Budget -->
                                <div class="filter-group mt-3">
                                    <h6>By Budget</h6>
                                    <div><input type="radio" name="budget"> Under ₹5,000</div>
                                    <div><input type="radio" name="budget"> ₹5,000–₹10,000</div>
                                    <div><input type="radio" name="budget"> ₹10,000–₹20,000</div>
                                    <div><input type="radio" name="budget"> ₹20,000–₹50,000</div>
                                    <div><input type="radio" name="budget"> ₹50,000+</div>
                                </div>

                                <!-- By Duration -->
                                <div class="filter-group mt-3">
                                    <h6>By Duration</h6>
                                    <div><input type="radio" name="duration"> 1–3 Days</div>
                                    <div><input type="radio" name="duration"> 4–7 Days</div>
                                    <div><input type="radio" name="duration"> 8–10 Days</div>
                                    <div><input type="radio" name="duration"> 10+ Days</div>
                                </div>

                                <!-- By Type of Traveler -->
                                <div class="filter-group mt-3">
                                    <h6>By Type of Traveler</h6>
                                    <div><input type="radio" name="traveler"> Solo</div>
                                    <div><input type="radio" name="traveler"> Couple</div>
                                    <div><input type="radio" name="traveler"> Family</div>
                                    <div><input type="radio" name="traveler"> Group</div>
                                    <div><input type="radio" name="traveler"> Corporate</div>
                                </div>

                                <!-- By Experience Type -->
                                <div class="filter-group mt-3">
                                    <h6>By Experience Type</h6>
                                    <div><input type="radio" name="experience"> Adventure</div>
                                    <div><input type="radio" name="experience"> Honeymoon</div>
                                    <div><input type="radio" name="experience"> Spiritual</div>
                                    <div><input type="radio" name="experience"> Wildlife & Nature</div>
                                    <div><input type="radio" name="experience"> Luxury Tour</div>
                                    <div><input type="radio" name="experience"> Cultural Heritage</div>
                                </div>
                                <button class="apply-btn" type="button">
                                    Apply Now
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="container mt-4">
            <div class="row ">
                <div class="col-12 col-sm-6 col-lg-4 my-2">
                    <div class="card-box">
                        <img src="{{url('project/images/sliders-image/Varanasi.webp')}}" alt="Varanasi" class="img-fluid">

                        <!-- Title and Price -->
                        <div class="card-heading mt-3">
                            <h5 class="mb-0">Varanasi</h5>
                            <p class="mb-0"><i class="fa-solid fa-indian-rupee-sign"></i> <b>11,000</b></p>
                        </div>

                        <!-- Subtitle and Rating -->
                        <div class="card-details mt-2">
                            <p class="card-subtitle mb-0">Discover the Magic of Kashmir</p>
                            <div class="d-flex align-items-center">
                                <i class="fa-solid fa-star text-warning"></i>
                                <i class="fa-solid fa-star text-warning"></i>
                                <i class="fa-solid fa-star text-warning"></i>
                                <i class="fa-solid fa-star text-warning"></i>
                                <i class="fa-regular fa-star text-warning"></i>
                            </div>
                        </div>

                        <!-- Duration & Reviews -->
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <div class="feature-item">
                                <img src="{{url('project/images/right.webp')}}" alt="" style="height: 20px; width: 20px;">
                                11 Night / 12 Days
                            </div>
                            <span class="text-muted small">1.5k Reviews</span>
                        </div>

                        <!-- Repeated Features -->
                        <div>
                            <div class="feature-item">
                                <img src="{{url('project/images/right.webp')}}" alt="" style="height: 20px; width: 20px;">
                                Hotel + Meals + Cab
                            </div>
                            <div class="feature-item">
                                <img src="{{url('project/images/right.webp')}}" alt="" style="height: 20px; width: 20px;">
                                Sightseeing Included
                            </div>
                        </div>

                        <!-- Button -->
                        <button class="details-btn " onclick="location.href='{{url('package')}}'">See More</button>
                    </div>
                </div>
          
             
            
              
          
           
            
               
            </div>
        </div>




    </main>





@endsection