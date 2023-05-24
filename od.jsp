<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pname =request.getParameter("pname");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from f3 where pname=('"+pname+"')");
out.println();

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
 %>
 <!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--Bootstrap CDN-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!--Font-awesome CDN-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

  <!--Link CSS-->
  <link rel="stylesheet" href="/CSS/fstyle.css">
  <link rel="stylesheet" href="Food Delivery site (Project-1)/CSS/bootstrap.min.css">

  <!--Favicon-->
  <link rel="icon" type="image/x-icon" href="images\logosquare.jpeg">

  <title>Online Foods</title>

</head>

<body>
  
       <!-- ============================================ -->
       <!-- -------- Developed By -- CDGI ------ -->
       <!-- ============================================ --> 
  
  <!---------------------------------------------Header------------------------------------------------->
  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3  ">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <img src="images\LOGO.jpeg" width="120" height="40px">
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#home" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#offerd" class="nav-link px-2 link-dark">Special</a></li>
        <li><a href="#order" class="nav-link px-2 link-dark">Order</a></li>
        <li><a href="#faq" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#about" class="nav-link px-2 link-dark">About</a></li>
      </ul>

      
      <div class="col-md-4 text-end">
        <a href="login.html"> <button type="button" class="btn btn-outline-primary me-2">Logout</button></a>
        <a href="or.html"> <button type="button" class="btn btn-outline-success me-4">Myorders</button></a>
        <a href="cd.html"><button type="button" class="btn btn-danger">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart3"
              viewBox="0 0 16 16">
              <path
                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z">
              </path>
            </svg>
            Cart
          </button>
        </a>
      </div>
    </header>
  </div>

  <!----------------------------------Home----------------------------------------->

  <div class="bg-danger" id="home">
 <div class="container content-space-2">
    <div class="row justify-content-lg-between align-items-md-center">
 <div class="col-md-6 mb-5 mb-md-0">
 <div class="mb-3" data-aos="flip-out">
            <h1 style="color: white;"><b>Order from <i style="color: rgb(217, 255, 0);">"Online Foods"</b></i>...</h1>
          </div>

          <form>          
            <!-- Input Card -->
            <div class="input-card mb-3" data-aos="fade-in">
              <div class="input-card-form">
                <label for="searchAnswersForm" class="form-label visually-hidden">Search</label>
                <input type="text" class="form-control form-control-lg" id="searchAnswersForm"
                  placeholder="Search your Favorite Food Here " aria-label="Search for answers">

              </div>
            </div>
          </form>
        </div>
        <div class="col-md-5" data-aos="fade-out-right">

          <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images\bg3.jpeg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images\bg5.jpeg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images\bg2.jpeg" class="d-block w-100" alt="...">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!---------------------------------------Offers and deals----------------------------->
  <div class="container-lg my-3" id="offerd" data-aos="flip-down">
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
      <!-- Carousel indicators -->
      <ol class="carousel-indicators">
        <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
        <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
      </ol>

      <!-- Wrapper for carousel items -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <a href="orders.html"><img src="https://www.nicepng.com/png/detail/107-1074346_online-food-ordering-system.png" class="d-block w-100" alt="Slide 1"></a>
        </div>
        <div class="carousel-item">
          <a href="orders.html"> <img src="https://www.pngitem.com/pimgs/m/174-1746630_indian-food-png-transparent-png.png" class="d-block w-100" alt="Slide 2"></a>
        </div>
        <div class="carousel-item">
<a href="orders.html"> <img src="https://www.dannyschinesekitchen.com/hubfs/sesame-chicken.png" class="d-block w-100" alt="Slide 3"></a>
   </div>
      </div>

      <!-- Carousel controls -->
      <a class="carousel-control-prev" href="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
  </div>
  <!----------------------------------categories-----------------------------------


  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc1.jpeg );">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">South Indian Dishes</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc3.jpeg );">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Chiken </h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc4.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold"> Fruits</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc6.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Cakes</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc7.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Roti & Curry</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc8.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">desserts</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc9.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Sandwich</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc11.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Home Styles</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc12.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Ice Creams, desserts</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc14.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Veg Biryani</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc15.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Tandoori Chicken</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc13.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Burgers</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc16.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">BreakFasts</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc17.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">North Indian Foods</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc18.jpeg);">
  <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Noodles</
              
     <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container px-4 py-3" id="custom-cards" data-aos="slide-up">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc19.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Pizza</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc20.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
          
          
    <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Daal , Rice</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-4 shadow-lg"
          style="background-image: url(images/fc21.jpeg);">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Coffee, Tea, Cold Drinks</h2>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="images\logosquare.jpeg" alt="Bootstrap" width="32" height="32"
                  class="rounded-circle border border-white">
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--------------------------------------Order-Now-------------------------------------------->
  <div class="container col-xxl-8 px-4 py-5" id="order">
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div class="col-10 col-sm-8 col-lg-6" data-aos="fade-out-down">
        <img src="images\Ordernowbg1.jpeg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700"
          height="500" loading="lazy">
      </div>
      <div class="col-lg-6" data-aos="fade-out-up">
        <h1 class="display-5 fw-bold lh-1 mb-3">Order with<b style="color:rgb(245, 0, 0) ;"><i>"Online
              Foods"</i></b>Now...</h1>
        <p class="lead">Hey Guys, Get your <i>Online Foods</i> Favorites delivered right to your doorstep with <i>Online
            Foods</i>. we are here to provide you Halal and fresh food.
          We use only the best ingredients to cook delicious meals for you. In our menu you will find a wide variety of
          dishes, deserts and drinks. Why are you waiting, order now.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <a href="orders.html"> <button type="button" class="btn btn-danger btn-lg px-4 me-md-4">Order Now</button>
          </a>
        </div>
      </div>
    </div>
  </div>


  <!-----------------------About Our Services------------------------->
  <!-- Section with icon, title and description -->

  <section class="py-6" data-aos="slide-up">
    <div class="container bg-danger text-white">
      <div class="row justify-content-start">
        <div class="col-md-6">
          <div class="p-3 text-start border-radius-lg" data-aos="slide-up">
            <div class="icon icon-shape icon-md bg-gradient-info text-start">

              <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-clock"
                viewBox="0 0 16 16">
                <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
                <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
              </svg>

            </div>
            <h5 class="mt-3">Fast Deliver</h5>
            <p class="w-75">Everything you order at Foods Online will be quickly delivered to your door</p>
          </div>
          <div class="p-3 text-start border-radius-lg" data-aos="slide-up">
            <div class="icon icon-shape icon-md bg-gradient-info text-start">

              <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-egg-fried"
                viewBox="0 0 16 16">
                <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                <path
                  d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z" />
              </svg>

            </div>
            <h5 class="mt-3">Fresh Food</h5>
            <p class="w-75">We use only the best ingredients to cook the tasty fresh and halaal food for you.</p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="p-3 text-start border-radius-lg" data-aos="slide-up" data-aos-delay="300">
            <div class="icon icon-shape icon-md bg-gradient-info text-start">

              <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-award"
                viewBox="0 0 16 16">
                <path
                  d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68L9.669.864zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702 1.509.229z" />
                <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z" />
              </svg>

            </div>
            <h5 class="mt-3">Experienced Chefs</h5>
            <p class="w-75">Our staff consists of chefs and cooks with years of Experience.</p>
          </div>
          <div class="p-3 text-start border-radius-lg" data-aos="slide-up" data-aos-delay="300">
            <div class="icon icon-shape icon-md bg-gradient-info text-start">
              <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-box2"
                viewBox="0 0 16 16">
                <path
                  d="M2.95.4a1 1 0 0 1 .8-.4h8.5a1 1 0 0 1 .8.4l2.85 3.8a.5.5 0 0 1 .1.3V15a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4.5a.5.5 0 0 1 .1-.3L2.95.4ZM7.5 1H3.75L1.5 4h6V1Zm1 0v3h6l-2.25-3H8.5ZM15 5H1v10h14V5Z" />
              </svg>
            </div>
            <h5 class="mt-3">A Variety of Dishes</h5>
            <p class="w-75">In our menu you will find a wide variety of dishes, desserts, and drinks.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- -------- END Features w/ 4 cols w/ white icon on colored background & title & text -------- -->

  <!-------------------------------About------------------------------------------>

  <section class="py-5" id="about">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-5 col-6 mx-lg-0 mx-auto px-lg-5 px-md-0 my-auto" data-aos="fade-in-down"
          data-aos-delay="300">
          <img class="w-100 border-radius-lg shadow" src="images\aboutusimg.jpeg">
        </div>
        <div class="col-lg-4 col-10 d-flex justify-content-center flex-column mx-auto text-lg-start text-center"
          data-aos="fade-out-down" data-aos-delay="200">
          <h2 class="mb-0 mt-lg-0 mt-4 text-gradient text-danger">Read more about us</h2>
          <h2 class="mb-4">And find some great partners</h2>
          <p class="lead">It really matters and then like it really doesn’t matter. What matters is the people who are
            sparked by it. And the people who are like offended by it, it doesn’t matter. </p>
          <ul class="m-lg-2 m-auto" data-aos="fade-in-down" data-aos-delay="300">
            <li class="lead mb-2">People are so scared to lose their hope</li>
            <li class="lead mb-2">That’s the main thing people </li>
            <li class="lead mb-2">Thoughts- their perception of themselves!</li>
          </ul>
          <p class="blockquote my-3 ps-2" data-aos="fade-in-down" data-aos-delay="300">
            <span class="text-bold">“Health is wealth .”</span>
            <br>
            <small class="blockquote-footer" data-aos="fade-in-bottom" data-aos-delay="100">
              Online Food
            </small>
          </p>
        </div>
      </div>
    </div>
  </section>

  <!--------------------------------Faq's------------------------------------------>

  <section class="py-4" id="faq">
    <div class="container" data-aos="slide-in" data-aos-anchor=".other-element">
      <div class="row my-5">
        <div class="col-md-6 mx-auto text-center">
          <h2>Frequently Asked Questions</h2>
          <p>A lot of people don&#39;t appreciate the moment until it’s passed. I&#39;m not trying my hardest, and
            I&#39;m not trying to do </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-10 mx-auto">
          <div class="accordion" id="accordionRental">
            <div class="accordion-item mb-3">
              <h5 class="accordion-header" id="headingOne">
                <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  How do I order?
                  <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                  <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                </button>
              </h5>
              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                data-bs-parent="#accordionRental">
                <div class="accordion-body text-sm opacity-8">
                  We’re not always in the position that we want to be at. We’re constantly growing. We’re constantly
                  making mistakes. We’re constantly trying to express ourselves and actualize our dreams. If you have
                  the opportunity to play this game
                  of life you need to appreciate every moment. A lot of people don’t appreciate the moment until it’s
                  passed.
                </div>
              </div>
            </div>
            <div class="accordion-item mb-3">
              <h5 class="accordion-header" id="headingTwo">
                <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  How can i make the payment?
                  <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                  <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                </button>
              </h5>
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                data-bs-parent="#accordionRental">
                <div class="accordion-body text-sm opacity-8">
                  It really matters and then like it really doesn’t matter. What matters is the people who are sparked
                  by it. And the people who are like offended by it, it doesn’t matter. Because it&#39;s about
                  motivating the doers. Because I’m here to follow my dreams and inspire other people to follow their
                  dreams, too.
                  <br>
                  We’re not always in the position that we want to be at. We’re constantly growing. We’re constantly
                  making mistakes. We’re constantly trying to express ourselves and actualize our dreams. If you have
                  the opportunity to play this game of life you need to appreciate every moment. A lot of people don’t
                  appreciate the moment until it’s passed.
                </div>
              </div>
            </div>
            <div class="accordion-item mb-3">
              <h5 class="accordion-header" id="headingThree">
                <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  How much time does it take to receive the order?
                  <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                  <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                </button>
              </h5>
              <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                data-bs-parent="#accordionRental">
                <div class="accordion-body text-sm opacity-8">
                  The time is now for it to be okay to be great. People in this world shun people for being great. For
                  being a bright color. For standing out. But the time is now to be okay to be the greatest you. Would
                  you believe in what you believe in, if you were the only one who believed it?
                  If everything I did failed - which it doesn&#39;t, it actually succeeds - just the fact that I&#39;m
                  willing to fail is an inspiration. People are so scared to lose that they don&#39;t even try. Like,
                  one thing people can&#39;t say is that I&#39;m not trying, and I&#39;m not trying my hardest, and
                  I&#39;m not trying to do the best way I know how.
                </div>
              </div>
            </div>
            <div class="accordion-item mb-3">
              <h5 class="accordion-header" id="headingFour">
                <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  Can I resell the products?
                  <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                  <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                </button>
              </h5>
              <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                data-bs-parent="#accordionRental">
                <div class="accordion-body text-sm opacity-8">
                  I always felt like I could do anything. That’s the main thing people are controlled by! Thoughts-
                  their perception of themselves! They&#39;re slowed down by their perception of themselves. If
                  you&#39;re taught you can’t do anything, you won’t do anything. I was taught I could do everything.
                  <br><br>
                  If everything I did failed - which it doesn&#39;t, it actually succeeds - just the fact that I&#39;m
                  willing to fail is an inspiration. People are so scared to lose that they don&#39;t even try. Like,
                  one thing people can&#39;t say is that I&#39;m not trying, and I&#39;m not trying my hardest, and
                  I&#39;m not trying to do the best way I know how.
                </div>
              </div>
            </div>
            <div class="accordion-item mb-3">
              <h5 class="accordion-header" id="headingFifth">
                <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseFifth" aria-expanded="false" aria-controls="collapseFifth">
                  Where do I find the shipping details?
                  <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                  <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                </button>
              </h5>
              <div id="collapseFifth" class="accordion-collapse collapse" aria-labelledby="headingFifth"
                data-bs-parent="#accordionRental">
                <div class="accordion-body text-sm opacity-8">
                  There’s nothing I really wanted to do in life that I wasn’t able to get good at. That’s my skill. I’m
                  not really specifically talented at anything except for the ability to learn. That’s what I do. That’s
                  what I’m here for. Don’t be afraid to be wrong because you can’t learn anything from a compliment.
                  I always felt like I could do anything. That’s the main thing people are controlled by! Thoughts-
                  their perception of themselves! They&#39;re slowed down by their perception of themselves. If
                  you&#39;re taught you can’t do anything, you won’t do anything. I was taught I could do everything.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!--------------------------------Footer------------------------------------------>

 

  <!--Js-CDN-->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    crossorigin="anonymous"></script>

  <!--AOS-->
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
</body>

</html>