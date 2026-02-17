<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Hospital Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #007bff; /* Primary blue for navbar */
        }
        .navbar-brand, .nav-link {
            color: white !important;
        }
        .hero-section {
            background: linear-gradient rgba(0, 123, 255, 0.7), rgba(0, 123, 255, 0.7)), url('https://via.placeholder.com/1500x500') no-repeat center center/cover; /* Replace with a relevant hospital image */
            color: black;
            padding: 100px 0;
            text-align: center;
        }
        .service-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-bottom: 30px;
            transition: transform 0.3s ease-in-out;
            min-height: 300px; /* Ensure consistent card height */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .service-card:hover {
            transform: translateY(-10px);
        }
        .service-card .icon {
            font-size: 3rem;
            color: #007bff;
            margin-bottom: 20px;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 40px 0;
            text-align: center;
        }
    </style>
</head>
<body>

     <nav class="navbar navbar-expand-lg navbar-light bg-primary">
  
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class=" "></i>  
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="services.jsp">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="hero-section">
        <div class="container">
            <h1 class="display-3">Our Comprehensive Services</h1>
            <p class="lead">Streamlining healthcare operations for better patient care.</p>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Key Features of Our System</h2>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-user-injured"></i>
                        </div>
                        <h3>Patient Management</h3>
                        <p>Comprehensive tools for patient registration, medical history, appointments, and billing. Easy access to patient records for improved diagnosis and treatment.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="far fa-calendar-alt"></i>
                        </div>
                        <h3>Appointment Scheduling</h3>
                        <p>Efficiently manage doctor appointments, patient scheduling, and reminders. Reduce waiting times and optimize clinic flow.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-notes-medical"></i>
                        </div>
                        <h3>Electronic Health Records (EHR)</h3>
                        <p>Securely store and manage digital patient records, prescriptions, lab results, and imaging for quick and accurate medical decisions.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-file-invoice-dollar"></i>
                        </div>
                        <h3>Billing & Invoicing</h3>
                        <p>Automate billing processes, insurance claims, and payment tracking. Generate detailed invoices and financial reports.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-pills"></i>
                        </div>
                        <h3>Pharmacy Management</h3>
                        <p>Manage drug inventory, prescriptions, dispensing, and drug interaction alerts. Ensure accurate and safe medication management.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-microscope"></i>
                        </div>
                        <h3>Laboratory Information System (LIS)</h3>
                        <p>Track lab requests, manage sample collection, and deliver lab results efficiently. Integrate with various lab equipment.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-users-medical"></i>
                        </div>
                        <h3>Staff Management</h3>
                        <p>Manage doctor and staff profiles, schedules, shifts, and payroll. Streamline HR operations within the hospital.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h3>Reporting & Analytics</h3>
                        <p>Generate insightful reports on patient demographics, treatment outcomes, financial performance, and operational efficiency.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="service-card">
                        <div class="icon">
                            <i class="fas fa-boxes"></i>
                        </div>
                        <h3>Inventory Management</h3>
                        <p>Keep track of medical supplies, equipment, and consumables. Manage stock levels, reorder points, and supplier information.</p>
                        <a href="#" class="btn btn-primary mt-auto">Learn More</a>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="bg-primary text-white py-5 text-center">
        <div class="container">
            <h2>Ready to Transform Your Hospital Operations?</h2>
            <p class="lead mb-4">Contact us today for a personalized demo of our Hospital Management System.</p>
            <a href="contact.html" class="btn btn-light btn-lg">Get in Touch</a>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-3 mb-md-0">
                    <h5>Hospital Management System</h5>
                    <p>Streamlining healthcare with innovative technology.</p>
                </div>
                <div class="col-md-4 mb-3 mb-md-0">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.html" class="text-white text-decoration-none">Home</a></li>
                        <li><a href="services.html" class="text-white text-decoration-none">Services</a></li>
                        <li><a href="about.html" class="text-white text-decoration-none">About Us</a></li>
                        <li><a href="contact.html" class="text-white text-decoration-none">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Info</h5>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Hospital Road, City, Country</p>
                    <p><i class="fas fa-phone"></i> +123 456 7890</p>
                    <p><i class="fas fa-envelope"></i> info@yourhospitalhms.com</p>
                </div>
            </div>
            <hr class="my-4">
            <p class="mb-0">&copy; 2025 Hospital Management System. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>