<%-- 
    Document   : index
    Created on : Feb 25, 2022, 4:12:13 PM
    Author     : Happy-2001
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DoBook </title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Colo Shop Template">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
        <link rel="stylesheet" type="text/css" href="css/styles_1.css">
    </head>

    <body>

        <div class="super_container">
            <!-- Header -->
            <header class="header trans_300">
                <!-- Top Navigation -->
                <div class="top_nav">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="top_nav_left">free shipping on all u.s orders over $49</div>
                            </div>
                            <div class="col-md-6 text-right">
                                <div class="top_nav_right">
                                    <ul class="top_nav_menu">
                                        <!-- Currency / Language / My Account -->

                                        <c:if test="${roll==2}">
                                            <li class="account">
                                                <a href="manager">Manager</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${account!=null}">
                                            <li class="account">
                                                <a href="logout">Logout</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${account==null}">
                                            <li class="account">
                                                <a href="login">Login</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Main Navigation -->

                <div class="main_nav_container">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <div class="logo_container">
                                    <a href="home">DoBook<span></span></a>
                                </div>
                                <nav class="navbar">
                                    <ul class="navbar_menu">
                                        <li><a href="home">home</a></li>
                                        <li><a href="productcontrol">Shop</a></li>
                                        <li><a href="contact">contact</a></li>
                                    </ul>

                                    <ul class="navbar_user">
                                        <form action="Search">
                                            <li><input type="text" placeholder="Search.." name="search"> <button><i  class="fa fa-search" aria-hidden="true"></i></button></li>
                                            <li>
                                                <div style="display: flex">
                                                    <a href="login"><i class="fa fa-user" aria-hidden="true"></i></a>
                                                    <c:if test="${account!=null}"><a style="width: 100%">${disname} </a>  </c:if>
                                                </div>
                                                
                                                </li>
                                                <li class="checkout">
                                                    <a href="Checkout">
                                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                        <span id="checkout_items" class="checkout_items"  >
                                                        ${carts.size() eq "0" ? "0":carts.size()}</span>
                                                </a>
                                            </li>
                                    </ul>
                                    </form>          
                                    <div class="hamburger_container">
                                        <i class="fa fa-bars" aria-hidden="true"></i>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </header>

            <!-- Slider -->

            <div class="main_slider" style="background-image:url(images/pexels-kate-trifo-3992002.jpg)">
                <div class="container fill_height">
                    <div class="row align-items-center fill_height">
                        <div class="col">
                            <div class="main_slider_content">
                                <h6>Spring / Summer Collection 2022</h6>
                                <h1>Get up to 30% Off New Arrivals</h1>
                                <div class="red_button shop_now_button"><a href="productcontrol">Shop now</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- New Arrivals -->
            <div class="new_arrivals">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <div class="section_title new_arrivals_title">
                                <h2>New Arrivals</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col text-center">
                            <div class="new_arrivals_sorting">
                                <ul class="arrivals_grid_sorting clearfix button-group filters-button-group">

                                    <li class="list-group-item button d-flex flex-row justify-content-center align-items-center float_left"><a href="filter-newarr?name=Art">Art & Photography</a></li>
                                    <li class="list-group-item button d-flex flex-row justify-content-center align-items-center float_left"><a href="filter-newarr?name=Business">Business & Economics</a></li>
                                    <li class="list-group-item button d-flex flex-row justify-content-center align-items-center float_left"><a href="filter-newarr?name=Dictionary">Dictionary</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

                                <!-- Product 3 -->
                                <c:forEach items="${ListP}" var="P">
                                    <div class="product-item women">
                                        <div class="product product_filter">
                                            <div class="product_image">
                                                <img src="${P.imageURL}"  style="height: 230px"alt="">
                                            </div>
                                            <div class="favorite"></div>
                                            <div class="product_info">
                                                <h6 class="product_name"><a href="single.html">${P.name}</a></h6>
                                                <div class="product_price">${P.price} $</div>
                                            </div>
                                        </div>
                                        <div class="red_button add_to_cart_button"><a href="Cart?ProductID=${P.id}">add to cart</a></div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Benefit -->

            <div class="benefit">
                <div class="container">
                    <div class="row benefit_row">
                        <div class="col-lg-3 benefit_col">
                            <div class="benefit_item d-flex flex-row align-items-center">
                                <div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                                <div class="benefit_content">
                                    <h6>free shipping</h6>
                                    <p>Suffered Alteration in Some Form</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 benefit_col">
                            <div class="benefit_item d-flex flex-row align-items-center">
                                <div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
                                <div class="benefit_content">
                                    <h6>cach on delivery</h6>
                                    <p>The Internet Tend To Repeat</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 benefit_col">
                            <div class="benefit_item d-flex flex-row align-items-center">
                                <div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
                                <div class="benefit_content">
                                    <h6>45 days return</h6>
                                    <p>Making it Look Like Readable</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 benefit_col">
                            <div class="benefit_item d-flex flex-row align-items-center">
                                <div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
                                <div class="benefit_content">
                                    <h6>opening all week</h6>
                                    <p>8AM - 09PM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Newsletter -->

            <div class="newsletter">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
                                <h4>Newsletter</h4>
                                <p>Subscribe to our newsletter and get 20% off your first purchase</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <form action="post">
                                <div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
                                    <input id="newsletter_email" type="email" placeholder="Your email" required="required" data-error="Valid email is required.">
                                    <button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->

            <%@include file="components/footerComponent.jsp" %>

        </div>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>

