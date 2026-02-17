<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us - Jupiter Hospital</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
    body { padding-top: 56px; }
    .jumbotron { background-color: #f8f9fa; padding: 4rem 2rem; border-radius: .3rem; }
    .section-heading { margin-bottom: 2rem; font-weight: 300; }
    .card-team { margin-bottom: 1.5rem; transition: 0.3s; }
    .card-team:hover { transform: translateY(-5px); }
</style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <div class="container">
            <a class="navbar-brand" href="home.jsp">
                <img src="images/plus.jpg" width="30" height="30" class="d-inline-block align-top" alt="Logo">
                Jupiter Hospital
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="home.jsp">HOME</a></li>
                    <li class="nav-item"><a class="nav-link" href="services.jsp">SERVICES</a></li>
                    <li class="nav-item active"><a class="nav-link" href="about.jsp">ABOUT US</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">CONTACT US</a></li>
                </ul>
                <a href="adminLogin.jsp" class="btn btn-outline-light">ADMIN LOGIN</a>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <header class="jumbotron text-center">
            <h1 class="display-4">About Our Hospital</h1>
            <p class="lead">Dedicated to providing compassionate and high-quality healthcare.</p>
            <hr class="my-4">
            <p>At Jupiter Hospital, your health is our priority. We are recognized for our unwavering commitment to patient well-being in Indore, Madhya Pradesh.</p>
        </header>

        <section class="mb-5 text-center">
            <h2 class="section-heading">Our Mission & Vision</h2>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <div class="p-4 border rounded bg-light">
                        <h3>Our Mission</h3>
                        <p>To deliver exceptional patient-centered care through innovation and clinical excellence.</p>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="p-4 border rounded bg-light">
                        <h3>Our Vision</h3>
                        <p>To be the leading healthcare provider recognized for compassionate environment and advanced medical practices.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="mb-5">
            <h2 class="text-center section-heading">Our Facilities & Services</h2>
            <div class="row justify-content-center">
                <ul class="list-group list-group-flush col-md-8">
                    <li class="list-group-item"><i class="fas fa-ambulance text-primary mr-2"></i> Emergency Services (24/7)</li>
                    <li class="list-group-item"><i class="fas fa-x-ray text-primary mr-2"></i> Radiology & Imaging</li>
                    <li class="list-group-item"><i class="fas fa-heartbeat text-primary mr-2"></i> Specialty Clinics</li>
                    <li class="list-group-item"><i class="fas fa-flask text-primary mr-2"></i> Laboratory Services</li>
                </ul>
            </div>
        </section>
    </div>

    <footer class="bg-dark text-white mt-5 p-4 text-center">
        <div class="container">
            <p>© 2026 Jupiter Hospital - Indore. All rights reserved.</p>
            <small>Providing excellence in healthcare.</small>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>