<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Add New Admins || Employee Payroll Management System</title>
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
        <link rel="stylesheet" type="text/css" href="css/hover-min.css">
        <link rel="stylesheet" type="text/css" href="plugins/payonline-icon/style.css">



        <!-- main template stylesheet -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>

    <body>
       
        <div class="page-wrapper">

            <div class="preloader"></div>

            <section class="signin-wrapper min-vh-100 clearfix" style="background-image: url(images/sign.jpg);">

                <div class="form-block min-vh-100">
                    <div class="center">
                        <h4>Add New Admin</h4></div>
                    <form name = "form1" action="save-admin" method="POST">

                        <input type="hidden" name="id" value="${admin.id }">
                        <input type="email" name="email" placeholder="admin@example.com.." value="${admin.email }" required>
                        <input type="password" name="password" placeholder="password" value="${admin.password }" required>
                       
                        <br>
                        <button type="submit" onclick="myFunction()" class="thm-btn">Add Admin</button>
                        <button type="reset" class="thm-btn">Reset</button>
                        <button onclick="goBack1()" class="thm-btn">Go Back</button>
                    </form>

                </div><!-- /.form-block -->
                <div class="background-block min-vh-100">

                </div><!-- /.background-block -->
            </section><!-- /.signin-wrapper -->


        </div><!-- /.page-wrapper -->

        <script>
            function goBack1() {
                window.history.back();
            }
        </script>
        <script>
            function myFunction() {
                var email1 = document.form1. email.value;
                var password1 = document.form1.password.value;
                if(email1 === "" || password1 === "")
                alert("All Fields Required!");                 
            else
                alert("Added Sucessfully");
            }
        </script>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.js"></script>
        <script src="js/bootstrap-select.min.js"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/theme.js"></script>


    </body>
</html>