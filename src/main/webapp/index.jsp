<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payroll Management System</title>
    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="images/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
    <link rel="manifest" href="images/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="images/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">


    <!-- depdency stylesheet -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i%7CCovered+By+Your+Grace" rel="stylesheet">


    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/hover-min.css">
    <link rel="stylesheet" type="text/css" href="plugins/bands-icon/style.css">
    <link rel="stylesheet" type="text/css" href="plugins/payonline-icon/style.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
    
    

    <!-- main template stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>
<body>

<div class="page-wrapper">

    <div class="preloader"></div><!-- /.preloader -->
    
    <header class="site-header ">
        <div class="top-bar">
            <div class="container-fluid clearfix">
                <div class="left-content float-left">
                    <p><i class="fa fa-info"></i>Employee Payroll Management System</p>
                </div><!-- /.left-content -->
                <div class="left-content float-right">
                    <a href="readmore" class="read-more" style="color: whitesmoke">About Us</a>  
                </div><!-- /.right-content -->
            </div><!-- /.container-fluid -->
        </div><!-- /.top-bar -->

        <nav class="navbar navbar-expand-lg navbar-light header-navigation stricky header-style-two">
            <div class="container clearfix">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="logo-box clearfix">
                    <button class="menu-toggler" data-target="#main-nav-bar">
                        <span class="fa fa-bars"></span>
                    </button>
                </div><!-- /.logo-box -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="main-navigation" id="main-nav-bar">
                    <ul class=" navigation-box">
                        <li class=" current" >
                            <a href="index">Home</a>
                        </li>
                        <li>
                            <a href="all-users">All Employees</a>
                        </li>
                        <li>
                            <a href="all-admins">Admin List</a>
                        </li>
                        <li>
                            <a href="manage">Manage Payroll</a>
                        </li>
                         <li>
                            <a href="register" class="signin-btn">Add Employee</a>
                        </li>
                        <li>
                            <a href="add-admin" class="signin-btn">Add Admin</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
                <div class="right-side-box">
                    <a href="logout" class="signin-btn">LogOut</a>
                </div>
                <!-- /.right-side-box -->
            </div>
            <!-- /.container -->
        </nav>
    </header><!-- /.site-header -->

    <div id="minimal-bootstrap-carousel" class="carousel slide carousel-fade slider-content-style slider-home-one">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="carousel-item active slide-1" style="background-image: url(images/sales-point-bg.jpg);">
                <div class="carousel-caption">
                    <div class="container">
                        <div class="box valign-middle">
                            <div class="content text-left">
                                <h3 data-animation="animated fadeInUp">Employee Payroll <br> Management <br> System</h3>
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
        </div>
        <!-- Controls -->
        
    </div>

    <section class="service-style-one sec-pad-top" >
        <div class="container" >
            <div class="sec-title text-center">
               
                <h2>About the Application<br></h2>
            </div><!-- /.sec-title -->
            <ul class="nav nav-tabs tab-title clearfix" role="tablist">
                <li class="nav-item"   >
                    <a class="nav-link active" href="#payroll" role="tab" data-toggle="tab">
                        <span class="icon-box" ">
                            <i class="payonline-icon-dollar" ></i>
                        </span>
                        <h3>Payroll</h3>
                    </a>
                </li>
                            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade show active" id="payroll">
                    <div class="single-tab-content">
                        <div class="icon-box">
                            <i class="payonline-icon-dollar"></i>
                        </div><!-- /.icon-box -->
                        <div class="text-box">
                            <h3>Payroll</h3>
                            <p>Employee information and payroll system is aimed at efficient management of employee information, emoluments, expenses, net payouts, tax calculations etc. This application is implemented using Java Spring Boot. All the employee data is stored in a centralized database. Pay slips are generated at the comfort of a single mouse click.</p>
                            <a href="readmore" class="read-more">Read More</a>
                        </div><!-- /.text-box -->
                    </div><!-- /.single-tab-content -->
                </div>
            </div> 
        </div><!-- /.container -->
    </section><!-- /.service-style-one -->



    

</div><!-- /.page-wrapper -->
<a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
<!-- /.scroll-to-top -->


<script src="js/jquery.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/theme.js"></script>


</body>
</html>