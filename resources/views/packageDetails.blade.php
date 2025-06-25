@extends('dashboard.layout.main')
@section('main-containers')


  <main>

        <section>
            <div class="container-fluid position-relative">
                <div class="row">
                    <div class="baner position-relative p-0">
                        <img src="images/Contactimg.webp" alt="Goa Beach" class="banner-img" />
                        <div
                            class="baner-heading text-center position-absolute top-50 start-50 translate-middle text-white">
                            <h1>Goa Getaway Sun, Sand & <br> Serenity Await</h1>
                            <p>
                                Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your
                                unforgettable <br> Goan escape starts here.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!--images -->

        <section class="my-5">
            <div class="container">

                <!-- Grid for large screens -->
                <div class="row g-4 d-none d-md-flex">
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="image-card">
                            <img src="images/Goature/Goature1.webp" alt="Image 1">
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="image-card">
                            <img src="images/Goature/Goature2.webp" alt="Image 2">
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="image-card">
                            <img src="images/Goature/Goature1.webp" alt="Image 3">
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="image-card">
                            <a href="gallery.html">
                                <img src="images/Goature/Goature2.webp" alt="Image 4">
                                <div class="overlay-text">View All</div>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Swiper for mobile only -->
                <div class="swiper mobile-gallery-slider d-md-none">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="image-card">
                                <img src="images/Goature/Goature1.webp" alt="Image 1">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="image-card">
                                <img src="images/Goature/Goature2.webp" alt="Image 2">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="image-card">
                                <img src="images/Goature/Goature1.webp" alt="Image 3">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="image-card">
                                <a href="gallery.html">
                                    <img src="images/Goature/Goature2.webp" alt="Image 4">
                                    <div class="overlay-text">View All</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Optional Dots -->
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </section>

        <!-- tour form -->



        <section>

            <div class="container my-5 ">
                <div class="row g-5 align-items-start">

                    <!-- Left Side: Tour Content -->
                    <div class="col-lg-7">

                        <!-- Icons -->
                        <div class="tour-icons">
                            <div class="icon-box">
                                <i class="fa-solid fa-clock"></i>
                                <span>11 Nights/12 Days</span>
                            </div>
                            <div class="icon-box">
                                <i class="fa-solid fa-location-dot"></i>
                                <span>Jaipur - Delhi</span>
                            </div>
                        </div>
                        <div class="ture-description">
                            <!-- Heading -->
                            <h2>Goa Getaway Sun, Sand & <br> Serenity Await</h2>

                            <!-- Description -->
                            <p>
                                Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden
                                Asia’s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden
                                is celebrated for its 48 varieties of tulip flowers, appealing to both adults and
                                children
                                alike.
                            </p>
                            <p>
                                The garden is also home to a diverse array of other flowers, including daffodils,
                                hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing
                                through the
                                terraces enhances the garden’s beauty, providing an idyllic setting for memorable
                                photographs.
                            </p>
                            <p>
                                The garden is also home to a diverse array of other flowers, including daffodils,
                                hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing
                                through the
                                terraces enhances the garden’s beauty, providing an idyllic setting for memorable
                                photographs.
                            </p>
                            <p>
                                The garden is also home to a diverse array of other flowers, including daffodils,
                                hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing
                                through the
                                terraces enhances the garden’s beauty, providing an idyllic setting for memorable
                                photographs.
                            </p>

                            <!-- ✅ Hidden Content -->
                            <div class="extra-content" style="display: none;">
                                <p>
                                    Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip
                                    Garden
                                    Asia’s largest tulip garden and a key attraction in Srinagar. This seven-terraced
                                    garden
                                    is celebrated for its 48 varieties of tulip flowers, appealing to both adults and
                                    children
                                    alike.
                                </p>
                                <p>
                                    The garden is also home to a diverse array of other flowers, including daffodils,
                                    hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing
                                    through the
                                    terraces enhances the garden’s beauty, providing an idyllic setting for memorable
                                    photographs.
                                </p>
                            </div>

                            <button class="read-more-btn mt-2">Read More</button>
                        </div>

                    </div>

                    <!-- Right Side: Booking Form -->
                    <div class="col-lg-5">
                        <div class="booking-form">

                            <form>
                                <h4>Book this tour</h4>
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control" placeholder="Enter your name">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Phone Number</label>
                                    <input type="text" class="form-control" placeholder="Enter your Phone number">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Email id</label>
                                    <input type="email" class="form-control" placeholder="Enter your Email id">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Number of Persons</label>
                                    <input type="number" class="form-control" placeholder="Persons*">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Number of Children</label>
                                    <input type="number" class="form-control" placeholder="Persons*">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Message</label>
                                    <textarea class="form-control" rows="4" placeholder="Enter the message"></textarea>
                                </div>

                                <button type="submit">Book Now</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </section>


        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="fs-1"><b>Tour Itinerary</b> </h2>
                        <p>Recommended Options</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- accordions -->

        <section>
            <div class="container">
                <div class="row">

                    <div class="itinerary-section">
                        <div class="accordion">
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi (Arrival)</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Welcome to Delhi! Arrive and check into the hotel. Rest of the day is at leisure.
                                    </p>
                                </div>
                            </div>

                            <!-- Copy and paste this block to add more days -->
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" onclick="toggleAccordion(this)">
                                    <span class="icon">+</span>
                                    <span class="title">Day 1 : Delhi Sightseeing</span>
                                </div>
                                <div class="accordion-body">
                                    <p>Visit Red Fort, India Gate, Qutub Minar and other attractions.</p>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </section>

        <!-- hotels-->


        <section>
            <div class="container">
                <div class="row">
                    <h1>Our Top Tour </h1>
                    <p>Recommendations Curated tours for every kind of traveler.</p>
                    <div class="swiper mySwiper " id="tourSwiper">

                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div>
                                    <div class="card-box">
                                        <img src="images/sliders-image/Goa.webp" alt="" class="img-fluid">
                                        <div class="card-hedeing mt-2">
                                            <h3>Goa</h3>
                                            <p> <i class="fa-solid  fa-indian-rupee-sign"></i><b>11,000</b></p>
                                        </div>
                                        <div class="card-hedeing">
                                            <p class="card-subtitle">Discover the Magic of Kashmir</p>
                                            <div class=" d-flex align-items-center">
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-regular fa-star text-warning"></i>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <span class="review ms-2 text-muted">1.5k Reviews</span>
                                        </div>

                                        <div>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                        </div>

                                        <div>
                                            <button class="details-btn">See More</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="card-box">
                                        <img src="images/sliders-image/Varanasi.webp" alt="" class="img-fluid">
                                        <div class="card-hedeing mt-2">
                                            <h3>Varanasi</h3>
                                            <p> <i class="fa-solid  fa-indian-rupee-sign"></i><b>11,000</b></p>
                                        </div>
                                        <div class="card-hedeing">
                                            <p class="card-subtitle">Discover the Magic of Kashmir</p>
                                            <div class=" d-flex align-items-center">
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-regular fa-star text-warning"></i>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <span class="review ms-2 text-muted">1.5k Reviews</span>
                                        </div>

                                        <div>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                        </div>
                                        <div>
                                            <button class="details-btn">See More</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="card-box">
                                        <img src="images/sliders-image/Goa.webp" alt="" class="img-fluid">
                                        <div class="card-hedeing mt-2">
                                            <h3>Goa</h3>
                                            <p> <i class="fa-solid  fa-indian-rupee-sign"></i><b>11,000</b></p>
                                        </div>
                                        <div class="card-hedeing">
                                            <p class="card-subtitle">Discover the Magic of Kashmir</p>
                                            <div class=" d-flex align-items-center">
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-regular fa-star text-warning"></i>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <span class="review ms-2 text-muted">1.5k Reviews</span>
                                        </div>

                                        <div>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                        </div>
                                        <div>
                                            <button class="details-btn">See More</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div>
                                    <div class="card-box">
                                        <img src="images/sliders-image/Goa.webp" alt="" class="img-fluid">
                                        <div class="card-hedeing mt-2">
                                            <h3>Goa</h3>
                                            <p> <i class="fa-solid  fa-indian-rupee-sign"></i><b>11,000</b></p>
                                        </div>
                                        <div class="card-hedeing">
                                            <p class="card-subtitle">Discover the Magic of Kashmir</p>
                                            <div class=" d-flex align-items-center">
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-solid fa-star text-warning"></i>
                                                <i class="fa-regular fa-star text-warning"></i>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <span class="review ms-2 text-muted">1.5k Reviews</span>
                                        </div>

                                        <div>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                            <li><img src="images/right.webp" alt="" class="img-fluid"
                                                    style="height: 20px;width: 20px;"> 11Night/12 Days</li>
                                        </div>
                                        <div>
                                            <button class="details-btn">See More</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="swiper-pagination" id="tourSwiper-pagination"></div>

                    </div>
                </div>
            </div>
        </section>




    </main>
<!--swiper slider scripat-->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var swiper = new Swiper("#tourSwiper", {
            slidesPerView: 1,
            spaceBetween: 20,
            loop: true,
            autoplay: {
                delay: 3000,  // Slide change delay in ms (3 seconds)
                disableOnInteraction: false // Autoplay continues even after user interaction
            },
            pagination: {
                el: "#tourSwiper-pagination",
                clickable: true,
            },
            breakpoints: {
                576: {
                    slidesPerView: 1,
                },
                768: {
                    slidesPerView: 2,
                },
                992: {
                    slidesPerView: 3,
                },
                1200: {
                    slidesPerView: 3,
                },
            },
        });
    });
</script>


<!-- only for mobile phone  swiper scripat for images -->

<script>
    const gallerySwiper = new Swiper(".mobile-gallery-slider", {
        slidesPerView: 1, // Default for mobile: only one image visible
        spaceBetween: 10,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        breakpoints: {
            // 576px and up — small tablets
            576: {
                slidesPerView: 1,
                spaceBetween: 15,
            },
            // 768px and up — tablets
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },

        },
    });
</script>


<!-- read button scripat -->

<script>
    document.querySelector('.read-more-btn').addEventListener('click', function () {
        const extraContent = document.querySelector('.extra-content');

        if (extraContent.style.display === 'none') {
            extraContent.style.display = 'block';
            this.textContent = 'Read Less';
        } else {
            extraContent.style.display = 'none';
            this.textContent = 'Read More';
        }
    });
</script>
<script>
    function toggleAccordion(header) {
        const item = header.parentElement;
        const allItems = document.querySelectorAll('.accordion-item');

        allItems.forEach(i => {
            if (i !== item) {
                i.classList.remove('active');
                i.querySelector('.icon').textContent = '+';
            }
        });

        const isActive = item.classList.contains('active');
        item.classList.toggle('active');
        header.querySelector('.icon').textContent = isActive ? '+' : '-';
    }
</script>


@endsection