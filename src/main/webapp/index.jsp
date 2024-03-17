<%@ page import="com.app.entity.Customer" %>
<%@ page import="com.app.controller.CustomerController" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%@include file="header.jsp"%>

<div class="top-banner">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-6">
                <div class="intro-excerpt">
                    <h1>Discover The Next Level Of Tech Shop</h1>
                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
                    <p><a href="" class="btn btn-main me-2">Shop Now</a><a href="#" class="btn btn-second">Explore</a></p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="top-banner-img-wrap">
                    <img src="images/homecomputer.png" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
</div>


<div class="top-product">
    <div class="container">
        <div class="row">

            <div class="row justify-content-center">
                <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="top-product-item text-center">
                        <div class="thumbnail">
                            <img src="https://i.ebayimg.com/images/g/XoEAAOSwR2phOfQ-/s-l1200.webp" alt="Computer Image" class="img-fluid">
                        </div>
                        <div class="pt-3">
                            <h3>Gaming Desktop</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <p><a href="#">View Details</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="top-product-item text-center">
                        <div class="thumbnail">
                            <img src="https://i5.walmartimages.com/seo/MSI-Katana-15-6-Gaming-Laptop-144Hz-FHD-Intel-Core-i7-13620H-NVIDIA-GeForce-RTX-4060-8GB-16GB-DDR5-Memory-1TB-NVMe-SSD-Windows-11-Black-B13VFK-817US_19d1ab0a-edde-44d9-826c-b8e9798ae11b.2ccb79676bb85cefcb7bb917dcbef1cc.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF" alt="Computer Image" class="img-fluid">
                        </div>
                        <div class="pt-3">
                            <h3>Laptop with SSD</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <p><a href="#">View Details</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="top-product-item text-center">
                        <div class="thumbnail">
                            <img src="https://i0.wp.com/www.winsoft.lk/wp-content/uploads/2023/03/budget-PC-main-copy.png?fit=1800%2C1800&ssl=1" class="img-fluid">
                        </div>
                        <div class="pt-3">
                            <h3>Office Desktop</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <p><a href="#">View Details</a></p>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>



<div class="why-choose-section">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-6">
                <h2 class="section-title">Why Choose Us</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique.</p>

                <div class="row my-5">
                    <div class="col-6 col-md-6">
                        <div class="feature">
                            <div class="icon">
                                <img src="images/bag.svg" alt="Image" class="imf-fluid">
                            </div>
                            <h3>Easy to Shop</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate.</p>
                        </div>
                    </div>

                    <div class="col-6 col-md-6">
                        <div class="feature">
                            <div class="icon">
                                <img src="images/support.svg" alt="Image" class="imf-fluid">
                            </div>
                            <h3>Customer Support</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate.</p>
                        </div>
                    </div>

                    <div class="col-6 col-md-6">
                        <div class="feature">
                            <div class="icon">
                                <img src="images/truck.svg" alt="Image" class="imf-fluid">
                            </div>
                            <h3>Fast &amp; Free Shipping</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate.</p>
                        </div>
                    </div>

                    <div class="col-6 col-md-6">
                        <div class="feature">
                            <div class="icon">
                                <img src="images/return.svg" alt="Image" class="imf-fluid">
                            </div>
                            <h3>Hassle-Free Returns</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate.</p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-lg-5">
                <div class="img-wrap">
                    <img src="images/gaming-setup-with-rgb-keyboard.jpg" alt="Image" class="img-fluid">
                </div>
            </div>

        </div>
    </div>
</div>


<div class="we-help-section">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-7 mb-5 mb-lg-0">
                <div class="help-img">
                    <div class="help-img-1"><img src="images/front-view-man-troubleshooting-computer.jpg" alt="PC Building"></div>
                </div>
            </div>
            <div class="col-lg-5 ps-lg-5">
                <h2 class="section-title mb-4">We Help You Build Your Perfect PC</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique. Pellentesque habitant morbi tristique senectus et netus et malesuada</p>

                <ul class="list-unstyled custom-list my-4">
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                </ul>
                <p><a href="#" class="btn">Explore PC Building</a></p>
            </div>
        </div>
    </div>
</div>

<script>
    var authenticatedUser = <c:out value="${sessionScope.authenticatedUser}" />;

    console.log("Authenticated User Details:", authenticatedUser);
</script>

<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/tiny-slider.js"></script>
<script src="js/script.js"></script>

<%@include file="footer.jsp"%>
</body>
</html>
