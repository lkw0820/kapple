<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Phoenix</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="resources/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="resources/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="resources/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="resources/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    <script src="resources/vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="resources/vendors/simplebar/simplebar.min.js"></script>
    <script src="resources/assets/js/config.js"></script>


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link href="resources/vendors/simplebar/simplebar.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link href="resources/assets/css/theme-rtl.min.css" type="text/css" rel="stylesheet" id="style-rtl">
    <link href="resources/assets/css/theme.min.css" type="text/css" rel="stylesheet" id="style-default">
    <link href="resources/assets/css/user-rtl.min.css" type="text/css" rel="stylesheet" id="user-style-rtl">
    <link href="resources/assets/css/user.min.css" type="text/css" rel="stylesheet" id="user-style-default">
    <script>
      var phoenixIsRTL = window.config.config.phoenixIsRTL;
      if (phoenixIsRTL) {
        var linkDefault = document.getElementById('style-default');
        var userLinkDefault = document.getElementById('user-style-default');
        linkDefault.setAttribute('disabled', true);
        userLinkDefault.setAttribute('disabled', true);
        document.querySelector('html').setAttribute('dir', 'rtl');
      } else {
        var linkRTL = document.getElementById('style-rtl');
        var userLinkRTL = document.getElementById('user-style-rtl');
        linkRTL.setAttribute('disabled', true);
        userLinkRTL.setAttribute('disabled', true);
      }
    </script>
  </head>


  <body>
    <main class="alternate-landing" style="--phoenix-scroll-margin-top: 1.2rem;">
      <div class="bg-white sticky-top landing-navbar" data-navbar-shadow-on-scroll="data-navbar-shadow-on-scroll">
        <nav class="navbar navbar-expand-lg container-small px-3 px-lg-7 px-xxl-3"><a class="navbar-brand flex-1 flex-lg-grow-0" href="resources/index.html">
            <div class="d-flex align-items-center"><img src="resources/assets/img/icons/logo.png" alt="phoenix" width="27" />
              <p class="logo-text ms-2">Kapple</p>
            </div>
          </a>
          <div class="d-lg-none">
            <div class="theme-control-toggle fa-icon-wait px-2">
              <input class="form-check-input ms-0 theme-control-toggle-input" type="checkbox" data-theme-control="phoenixTheme" value="dark" id="themeControlToggleSm" />
              <label class="mb-0 theme-control-toggle-label theme-control-toggle-light" for="themeControlToggleSm" data-bs-toggle="tooltip" data-bs-placement="left" title="Switch theme"><span class="icon" data-feather="moon"></span></label>
              <label class="mb-0 theme-control-toggle-label theme-control-toggle-dark" for="themeControlToggleSm" data-bs-toggle="tooltip" data-bs-placement="left" title="Switch theme"><span class="icon" data-feather="sun"></span></label>
            </div>
          </div>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="border-bottom border-bottom-lg-0 mb-2">
              <div class="search-box d-inline d-lg-none">
                <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                  <input class="form-control search-input search rounded-pill my-4" type="search" placeholder="Search" aria-label="Search" />
                  <span class="fas fa-search search-box-icon"></span>

                </form>
              </div>
            </div>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item border-bottom border-bottom-lg-0"><a class="nav-link lh-1 py-0 fs--1 fw-bold py-3 active" aria-current="page" href="#">Home</a></li>
              <li class="nav-item border-bottom border-bottom-lg-0"><a class="nav-link lh-1 py-0 fs--1 fw-bold py-3" href="#feature">Features</a></li>
              <li class="nav-item border-bottom border-bottom-lg-0"><a class="nav-link lh-1 py-0 fs--1 fw-bold py-3" href="#blog">Blog</a></li>
              <li class="nav-item"><a class="nav-link lh-1 py-0 fs--1 fw-bold py-3" href="#team">Team</a></li>
            </ul>
            <div class="d-grid d-lg-flex align-items-center">
              <div class="nav-item d-flex align-items-center d-none d-lg-block pe-2">
                <a class="text-700 hover-text-1100 px-2 d-none d-lg-inline lh-sm" href="#" data-bs-toggle="modal" data-bs-target="#searchBoxModal"><span data-feather="search" style="height: 20px; width: 20px;"></span></a><a class="btn btn-link text-900 order-1 order-lg-0 ps-4 me-lg-2" href="home">Sign in</a><a class="btn btn-phoenix-primary order-0" href="resources/pages/authentication/simple/sign-up.html"><span class="fw-bold">Sign Up</span></a>
            </div>
          </div>
        </nav>
      </div>
      
      <div class="modal fade" id="searchBoxModal" tabindex="-1" aria-hidden="true" data-bs-backdrop="true" data-phoenix-modal="data-phoenix-modal" style="--phoenix-backdrop-opacity: 1;">
        <div class="modal-dialog">
          <div class="modal-content mt-15 rounded-pill">
            <div class="modal-body p-0">
              <div class="search-box navbar-top-search-box" data-list='{"valueNames":["title"]}' style="width: auto;">
                <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                  <input class="form-control search-input fuzzy-search rounded-pill form-control-lg" type="search" placeholder="Search..." aria-label="Search" />
                  <span class="fas fa-search search-box-icon"></span>

                </form>
                <div class="btn-close position-absolute end-0 top-50 translate-middle cursor-pointer shadow-none" data-bs-dismiss="search">
                  <button class="btn btn-link btn-close-falcon p-0" aria-label="Close"></button>
                </div>
                <div class="dropdown-menu border border-300 font-base start-0 py-0 overflow-hidden w-100">
                  <div class="scrollbar-overlay" style="max-height: 30rem;">
                    <div class="list pb-3">
                      <h6 class="dropdown-header text-1000 fs--2 py-2">24 <span class="text-500">results</span></h6>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Recently Searched </h6>
                      <div class="py-2"><a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"><span class="fa-solid fa-clock-rotate-left" data-fa-transform="shrink-2"></span> Store Macbook</div>
                          </div>
                        </a>
                        <a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"> <span class="fa-solid fa-clock-rotate-left" data-fa-transform="shrink-2"></span> MacBook Air - 13″</div>
                          </div>
                        </a>

                      </div>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Products</h6>
                      <div class="py-2"><a class="dropdown-item py-2 d-flex align-items-center" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="file-thumbnail me-2"><img class="h-100 w-100 fit-cover rounded-3" src="resources/assets/img/products/60x60/3.png" alt="" /></div>
                          <div class="flex-1">
                            <h6 class="mb-0 text-1000 title">MacBook Air - 13″</h6>
                            <p class="fs--2 mb-0 d-flex text-700"><span class="fw-medium text-600">8GB Memory - 1.6GHz - 128GB Storage</span></p>
                          </div>
                        </a>
                        <a class="dropdown-item py-2 d-flex align-items-center" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="file-thumbnail me-2"><img class="img-fluid" src="resources/assets/img/products/60x60/3.png" alt="" /></div>
                          <div class="flex-1">
                            <h6 class="mb-0 text-1000 title">MacBook Pro - 13″</h6>
                            <p class="fs--2 mb-0 d-flex text-700"><span class="fw-medium text-600 ms-2">30 Sep at 12:30 PM</span></p>
                          </div>
                        </a>

                      </div>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Quick Links</h6>
                      <div class="py-2"><a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"><span class="fa-solid fa-link text-900" data-fa-transform="shrink-2"></span> Support MacBook House</div>
                          </div>
                        </a>
                        <a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"> <span class="fa-solid fa-link text-900" data-fa-transform="shrink-2"></span> Store MacBook″</div>
                          </div>
                        </a>

                      </div>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Files</h6>
                      <div class="py-2"><a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"><span class="fa-solid fa-file-zipper text-900" data-fa-transform="shrink-2"></span> Library MacBook folder.rar</div>
                          </div>
                        </a>
                        <a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"> <span class="fa-solid fa-file-lines text-900" data-fa-transform="shrink-2"></span> Feature MacBook extensions.txt</div>
                          </div>
                        </a>
                        <a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"> <span class="fa-solid fa-image text-900" data-fa-transform="shrink-2"></span> MacBook Pro_13.jpg</div>
                          </div>
                        </a>

                      </div>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Members</h6>
                      <div class="py-2"><a class="dropdown-item py-2 d-flex align-items-center" href="resources/pages/members.html">
                          <div class="avatar avatar-l status-online  me-2 text-900">
                            <img class="rounded-circle " src="resources/assets/img/team/40x40/10.webp" alt="" />

                          </div>
                          <div class="flex-1">
                            <h6 class="mb-0 text-1000 title">Carry Anna</h6>
                            <p class="fs--2 mb-0 d-flex text-700">anna@technext.it</p>
                          </div>
                        </a>
                        <a class="dropdown-item py-2 d-flex align-items-center" href="resources/pages/members.html">
                          <div class="avatar avatar-l  me-2 text-900">
                            <img class="rounded-circle " src="resources/assets/img/team/40x40/12.webp" alt="" />

                          </div>
                          <div class="flex-1">
                            <h6 class="mb-0 text-1000 title">John Smith</h6>
                            <p class="fs--2 mb-0 d-flex text-700">smith@technext.it</p>
                          </div>
                        </a>

                      </div>
                      <hr class="text-200 my-0" />
                      <h6 class="dropdown-header text-1000 fs--1 border-bottom border-200 py-2 lh-sm">Related Searches</h6>
                      <div class="py-2"><a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"><span class="fa-brands fa-firefox-browser text-900" data-fa-transform="shrink-2"></span> Search in the Web MacBook</div>
                          </div>
                        </a>
                        <a class="dropdown-item" href="resources/apps/e-commerce/landing/product-details.html">
                          <div class="d-flex align-items-center">

                            <div class="fw-normal text-1000 title"> <span class="fa-brands fa-chrome text-900" data-fa-transform="shrink-2"></span> Store MacBook″</div>
                          </div>
                        </a>

                      </div>
                    </div>
                    <div class="text-center">
                      <p class="fallback fw-bold fs-1 d-none">No Result Found.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

       <!-- ============================================-->
      <!-- <section> begin ============================-->
        <section class="overflow-hidden rotating-earth-container pb-5 pb-md-0 pt-12">

          <div class="container-small px-lg-7 px-xxl-3">
            <div class="row">
              <div class="col-lg-6 text-center text-lg-start">
                <h5 class="text-info mb-0">One-stop SCM solution</h5>
                <div class="col-12 col-lg-6 pt-4 pb-6 position-relative z-index-5 text-center text-lg-start">
                  <h1 class="fs-5 fs-md-6 fs-xl-7 fw-black mb-4"><span class="text-gradient-info me-3">Kapple</span>SCM</h1>
                  <a class="btn btn-lg btn-primary rounded-pill me-3" href="#!" role="button">Sign up</a><a class="btn btn-link me-2 fs-0 p-0" href="#!" role="button">둘러보기<span class="fa-solid fa-angle-right ms-2 fs--1"></span></a>
                </div>
                <div class="row gy-6">
                  <div class="col-sm-6 text-center text-lg-start"><img class="mb-4 d-dark-none" src="resources/assets/img/icons/lightning-speed.png" alt="" /><img class="mb-4 d-light-none" src="resources/assets/img/icons/lightning-speed-dark.png" alt="" />
                    <h4 class="mb-2">Lightning Speed</h4>
                    <p>Grow fast with Kapple!</p>
                  </div>
                  <div class="col-sm-6 text-center text-lg-start"><img class="mb-4 d-dark-none" src="resources/assets/img/icons/best-statistics.png" alt="" /><img class="mb-4 d-light-none" src="resources/assets/img/icons/best-statistics-dark.png" alt="" />
                    <h4 class="mb-2">Best Statistics</h4>
                    <p>Get all reports at hand!</p>
                  </div>
                  <div class="col-sm-6 text-center text-lg-start"><img class="mb-4 d-dark-none" src="resources/assets/img/icons/all-night.png" alt="" /><img class="mb-4 d-light-none" src="resources/assets/img/icons/all-night-dark.png" alt="" />
                    <h4 class="mb-2">All-night Protection</h4>
                    <p>Ensure data Safety with Kapple!</p>
                  </div>
                  <div class="col-sm-6 text-center text-lg-start"><img class="mb-4 d-dark-none" src="resources/assets/img/icons/editable-features.png" alt="" /><img class="mb-4 d-light-none" src="resources/assets/img/icons/editable-features-dark.png" alt="" />
                    <h4 class="mb-2">Editable Features</h4>
                    <p>Edits made easy and safe!</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-auto">
                <div class="position-relative position-lg-absolute rotating-earth">
                  <div class="lottie d-dark-none" data-options='{"path":"resources/assets/img/animated-icons/rotating-earth.json"}'></div>
                  <div class="lottie d-light-none" data-options='{"path":"resources/assets/img/animated-icons/rotating-earth-dark.json"}'></div><img class="position-absolute d-dark-none" src="resources/assets/img/spot-illustrations/earth-plane.png" alt="" /><img class="position-absolute d-light-none" src="resources/assets/img/spot-illustrations/earth-plane-dark.png" alt="" />
                </div>
              </div>
            </div>
          </div>
          <!-- end of .container-->
  
        </section>
        <!-- <section> close ============================-->
        <!-- ============================================-->


        <section class="counter-container">
          <div class="position-absolute start-0 end-0 w-100 counter-overlay" style="transform: skewY(-8deg)"></div>
          <div class="bg-holder d-none d-lg-block" style="background-image:url(resources/assets/img/bg/bg-left-25.png);background-size:auto;background-position:left center;">
          </div>
          <!--/.bg-holder-->
  
          <div class="bg-holder d-none d-lg-block" style="background-image:url(resources/assets/img/bg/bg-right-25.png);background-size:auto;background-position:right center;">
          </div>
          <!--/.bg-holder-->
  
          <div class="container-small position-relative">
            <div class="row gx-0 gy-8 justify-content-center">
              <div class="col-sm-6 col-md-auto me-md-5 pe-md-5 border-end-md border-dashed text-center order-2 order-md-0">
                <h1 class="fs-5 fs-lg-7 fw-bolder text-info mb-3"><span>$</span><span data-countup='{"endValue":8976,"duration":5,"suffix":""}'></span></h1>
                <h4>Revenue</h4>
              </div>
              <div class="col-sm-6 col-md-auto me-md-5 pe-md-5 border-end-md border-dashed text-center order-1 order-md-0">
                <h1 class="fs-5 fs-lg-7 fw-bolder text-info mb-3"><span data-countup='{"endValue":308,"duration":10,"suffix":""}'></span><span>K</span></h1>
                <h4>User</h4>
              </div>
              <div class="col-sm-6 col-md-auto me-md-5 pe-md-5 border-end-md border-dashed text-center">
                <h1 class="fs-5 fs-lg-7 fw-bolder text-info mb-3" data-countup='{"endValue":12,"duration":0.5,"suffix":""}'></h1>
                <h4>Countries</h4>
              </div>
              <div class="col-sm-6 col-md-auto text-center">
                <h1 class="fs-5 fs-lg-7 fw-bolder text-info mb-3" data-countup='{"endValue":125,"duration":15,"suffix":"+"}'></h1>
                <h4>Stories</h4>
              </div>
            </div>
          </div>
        </section>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pb-10 pb-xl-14">

        <div class="container-small px-lg-7 px-xxl-3">
          <div class="text-center mb-7">
            <h5 class="text-info mb-3">Contact</h5>
            <h2 class="mb-2">Choose the best deal for you</h2>
          </div>
          <div class="row g-5 g-lg-5">
            <div class="col-md-6 mb-5 mb-md-0 text-center text-md-start">
              <h3 class="mb-3">Stay connected</h3>
              <p class="mb-5">Stay connected with Kapple's Help Center.<br> Kapple is available for your necessities at all times.</p>
              <div class="d-flex flex-column align-items-center align-items-md-start gap-3 gap-md-0">
                <div class="d-md-flex align-items-center">
                  <div class="icon-wrapper shadow-info"><span class="uil uil-phone text-primary light fs-4 z-index-1 ms-2"></span></div>
                  <div class="flex-1 ms-3"><a class="link-900" href="tel:+021234-1234">(02) 1234-1234</a></div>
                </div>
                <div class="d-md-flex align-items-center">
                  <div class="icon-wrapper shadow-info"><span class="uil uil-envelope text-primary light fs-4 z-index-1 ms-2"></span></div>
                  <div class="flex-1 ms-3"><a class="fw-semi-bold text-900" href="mailto:phoenix@email.com">KappleService@kapple.com</a></div>
                </div>
                <div class="mb-6 d-md-flex align-items-center">
                  <div class="icon-wrapper shadow-info"><span class="uil uil-map-marker text-primary light fs-4 z-index-1 ms-2"></span></div>
                  <div class="flex-1 ms-3"><a class="fw-semi-bold text-900" href="#!">서울특별시 종로구 창경궁로 254 </a></div>
                </div>
                <div class="d-flex"><a href="#!"><span class="fa-brands fa-facebook fs-2 text-primary me-3"></span></a><a href="#!"><span class="fa-brands fa-twitter fs-2 text-primary me-3"></span></a><a href="#!"><span class="fa-brands fa-linkedin-in fs-2 text-primary"></span></a></div>
              </div>
            </div>
            <div class="col-md-6 text-center text-md-start">
              <h3 class="mb-3">Drop us a line</h3>
              <p class="mb-7">If you have any query or suggestion , we are open to learn from you, <br>Lets talk, reach us anytime.</p>
              <form class="row g-4">
                <div class="col-12">
                  <input class="form-control bg-white" type="text" name="name" placeholder="Name" required="required" />
                </div>
                <div class="col-12">
                  <input class="form-control bg-white" type="email" name="email" placeholder="Email" required="required" />
                </div>
                <div class="col-12">
                  <textarea class="form-control bg-white" rows="6" name="message" placeholder="Message" required="required"></textarea>
                </div>
                <div class="col-12 d-grid">
                  <button class="btn btn-outline-primary" type="submit">Submit</button>
                </div>
                <div class="feedback"></div>
              </form>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->


    

    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="resources/vendors/popper/popper.min.js"></script>
    <script src="resources/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="resources/vendors/anchorjs/anchor.min.js"></script>
    <script src="resources/vendors/is/is.min.js"></script>
    <script src="resources/vendors/fontawesome/all.min.js"></script>
    <script src="resources/vendors/lodash/lodash.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="resources/vendors/list.js/list.min.js"></script>
    <script src="resources/vendors/feather-icons/feather.min.js"></script>
    <script src="resources/vendors/dayjs/dayjs.min.js"></script>
    <script src="resources/assets/js/phoenix.js"></script>
    <script src="resources/vendors/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="resources/vendors/isotope-packery/packery-mode.pkgd.min.js"></script>
    <script src="resources/vendors/bigpicture/BigPicture.js"></script>
    <script src="resources/vendors/lottie/lottie.min.js"></script>
    <script src="resources/vendors/countup/countUp.umd.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDbaQGvhe7Af-uOMJz68NWHnO34UjjE7Lo&callback=initMap" async></script>

  </body>

</html>