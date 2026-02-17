<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Vishesh Jupitar Hospital </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        /* This style targets the main container that will hold the background image */
        .hero-background-container {
            position: relative; /* Needed for absolute positioning of content */
            height: 100vh; /* Make it take full viewport height */
            background-image: url('images/The-Must-Have-modules-of-a-Hospital-Management-System-1200x674.jpg'); /* <<< IMPORTANT: Update this path! */
            background-size: cover; /* Cover the entire container */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat */
            display: flex; /* Use flexbox for centering content */
            align-items: center; /* Vertically center content */
            justify-content: center; /* Horizontally center content */
            color: #ffffff; /* Default text color for contrast */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adds shadow for readability */
        }

        /* Overlay to darken the background image slightly for better text readability */
        .hero-background-container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4); /* Dark overlay */
            z-index: 1; /* Ensure overlay is below text but above image */
        }

        /* Styles for the content placed on top of the background */
        .hero-content {
            position: relative; /* Needed for z-index to be above overlay */
            z-index: 2; /* Ensure content is above the overlay */
            text-align: center;
            max-width: 800px; /* Limit content width */
            padding: 20px;
        }

        /* Ensure navbar doesn't get hidden by the hero section */
        body {
            padding-top: 0; /* No padding-top needed for body if navbar is part of the hero */
        }

        /* Adjust navbar appearance to be transparent or match background if desired */
        .navbar {
            background-color: transparent !important; /* Make navbar transparent */
            position: absolute; /* Position relative to hero-background-container */
            top: 0;
            width: 100%;
            z-index: 3; /* Ensure navbar is above hero content */
        }

        .navbar .navbar-brand,
        .navbar .nav-link,
        .navbar .btn-success {
            color: #ffffff !important; /* White text for navbar items */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .navbar .nav-link.active {
            font-weight: bold;
        }

        .navbar .btn-success {
            border-color: #ffffff;
        }
        .navbar .btn-success:hover {
            background-color: #ffffff !important;
            color: #007bff !important;
        }


        /* Styles for subsequent content sections below the hero */
        .content-section {
            background-color: #ffffff; /* White background for normal content */
            padding: 4rem 0;
            color: #333333; /* Dark text color for readability */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section-heading {
            font-size: 2.5rem;
            font-weight: 300;
            margin-bottom: 2rem;
            color: #007bff; /* Primary blue for headings */
        }

        .card-icon {
            font-size: 3rem;
            color: #007bff;
            margin-bottom: 1rem;
        }
    </style>
</head>


<body>

    <div class="hero-background-container">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src=" " alt=" " class="d-inline-block align-text-top me-2">
                     
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon" style="filter: invert(1);"></span> </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="services.jsp">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact Us</a>
                        </li>
                         <li class="nav-item">
                            <a class="btn btn-outline-success ms-lg-3" href="adminLogin.jsp">Admin Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="hero-content">
            <h1 class="display-1 fw-bold mb-4">Welcome to <br> Jupitar Hospital</h1>
            <p class="lead mb-5">
                Providing compassionate care and cutting-edge medical services for a healthier community.
            </p>
            <a href="services.jsp" class="btn btn-primary btn-lg me-3">Explore Services <i class="fas fa-arrow-right ms-2"></i></a>
            <a href="contact.jsp" class="btn btn-outline-light btn-lg">Contact Us <i class="fas fa-phone-alt ms-2"></i></a>
        </div>
    </div>

    <div class="container-fluid content-section text-center">
        <div class="container">
            <h2 class="section-heading">Why Choose Us?</h2>
            <div class="row mt-5">
                <div class="col-md-4 mb-4">
                    <i class="fas fa-user-md card-icon mb-3"></i>
                    <h4>Expert Medical Team</h4>
                    <p>Highly qualified and experienced doctors, nurses, and specialists dedicated to your health.</p>
                </div>
                <div class="col-md-4 mb-4">
                    <i class="fas fa-microscope card-icon mb-3"></i>
                    <h4>Advanced Technology</h4>
                    <p>State-of-the-art equipment for precise diagnostics and effective treatments.</p>
                </div>
                <div class="col-md-4 mb-4">
                    <i class="fas fa-heartbeat card-icon mb-3"></i>
                    <h4>Patient-Centered Care</h4>
                    <p>Compassionate and personalized care tailored to the individual needs of every patient.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid content-section bg-light text-center">
        <div class="container">
             <h2 class="section-heading">Our Key Departments</h2>
             <div class="row mt-5">
                 <div class="col-md-3">
                     <i class="fas fa-ambulance card-icon mb-3"></i>
                     <h5>Emergency Services</h5>
                     <p>24/7 immediate medical attention.</p>
                 </div>
                 <div class="col-md-3">
                     <i class="fas fa-bone card-icon mb-3"></i>
                     <h5>Orthopedics</h5>
                     <p>Specialized care for bone and joint health.</p>
                 </div>
                 <div class="col-md-3">
                     <i class="fas fa-child card-icon mb-3"></i>
                     <h5>Pediatrics</h5>
                     <p>Dedicated care for children and adolescents.</p>
                 </div>
                 <div class="col-md-3">
                     <i class="fas fa-brain card-icon mb-3"></i>
                     <h5>Neurology</h5>
                     <p>Expert diagnosis and treatment of neurological conditions.</p>
                 </div>
             </div>
             <a href="services.jsp" class="btn btn-outline-primary btn-lg mt-4">View All Services</a>
        </div>
    </div>


    <footer class="bg-dark text-white text-center text-lg-start pt-4">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Your Hospital Name</h5>
                    <p>
                        Dedicated to providing compassionate care and medical excellence to our community.
                    </p>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Quick Links</h5>
                    <ul class="list-unstyled mb-0">
                        <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                        <li><a href="services.jsp" class="text-white text-decoration-none">Services</a></li>
                        <li><a href="about.jsp" class="text-white text-decoration-none">About Us</a></li>
                        <li><a href="contact.jsp" class="text-white text-decoration-none">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Contact Us</h5>
                    <ul class="list-unstyled mb-0">
                        <li><i class="fas fa-map-marker-alt me-2"></i>Jupiter Hospital</li>
                        <li><i class="fas fa-phone me-2"></i>9302304740</li>
                        <li><i class="fas fa-envelope me-2"></i>ajjusolanki@56gmail.com</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="text-center p-3 bg-secondary">
            © 2025 Your Hospital Name. All rights reserved.
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>