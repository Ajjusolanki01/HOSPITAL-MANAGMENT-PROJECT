<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Hospital Management System</title>
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
        .navbar .btn-outline-success {
            color: #28a745; /* Admin Login text color */
            border-color: #28a745; /* Admin Login border color */
        }
        .navbar .btn-outline-success:hover {
            background-color: #28a745;
            color: white;
        }
        .hero-section {
            background-color: #e9ecef;
            padding: 80px 0;
            text-align: center;
            margin-bottom: 40px;
        }
        .contact-info-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-bottom: 30px;
            display: flex;
            align-items: center;
        }
        .contact-info-card .icon {
            font-size: 2rem;
            color: #007bff;
            margin-right: 20px;
        }
        .map-container {
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
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
		<a class="navbar-brand" href="home.jsp"> <img
			src="images/plus.jpg" width="30" height="30" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="services.jsp">SERVICES</a></li>
				<li class="nav-item"><a class="nav-link" href="about.jsp">ABOUT
						US</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">CONTACT
						US</a></li>
			</ul>
		
		</div>
	</nav>
    
    <section class="hero-section">
        <div class="container">
            <h1 class="display-4">Get in Touch With Us</h1>
            <p class="lead">We're here to answer any questions you may have about our hospital management system.</p>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-7">
                    <h2 class="mb-4">Send Us a Message</h2>
                    <form>
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Address</label>
                            <input type="email" class="form-control" id="email" placeholder="name@example.com" required>
                        </div>
                        <div class="mb-3">
                            <label for="subject" class="form-label">Subject</label>
                            <input type="text" class="form-control" id="subject" placeholder="What's your inquiry about?">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Your Message</label>
                            <textarea class="form-control" id="message" rows="5" placeholder="Type your message here..." required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg">Send Message</button>
                    </form>
                </div>

                <div class="col-lg-5">
                    <h2 class="mb-4">Our Contact Information</h2>
                    <div class="contact-info-card">
                        <div class="icon"><i class="fas fa-map-marker-alt"></i></div>
                        <div>
                            <h5>Our Address</h5>
                            <p class="mb-0">123 Hospital Road, <br>Healthcare City, State 12345, <br>India</p>
                        </div>
                    </div>
                    <div class="contact-info-card">
                        <div class="icon"><i class="fas fa-phone-alt"></i></div>
                        <div>
                            <h5>Phone Number</h5>
                            <p class="mb-0">+91 12345 67890</p>
                            <p class="mb-0">+91 98765 43210</p>
                        </div>
                    </div>
                    <div class="contact-info-card">
                        <div class="icon"><i class="fas fa-envelope"></i></div>
                        <div>
                            <h5>Email Us</h5>
                            <p class="mb-0">info@yourhospitalhms.com</p>
                            <p class="mb-0">support@yourhospitalhms.com</p>
                        </div>
                    </div>
                    <div class="contact-info-card">
                        <div class="icon"><i class="fas fa-clock"></i></div>
                        <div>
                            <h5>Working Hours</h5>
                            <p class="mb-0">Monday - Friday: 9:00 AM - 6:00 PM</p>
                            <p class="mb-0">Saturday: 9:00 AM - 1:00 PM</p>
                            <p class="mb-0">Sunday: Closed</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="map-container">
                <h2 class="text-center mt-5 mb-4">Find Us on the Map</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15282.89469792613!2d74.19500075!3d17.291771149999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc230e70b3a32f9%3A0xb3b006c6e7a2b27f!2sHospital%20Rd%2C%20Bhosale%20Wadi%2C%20Phaltan%2C%20Maharashtra%20415523!5e0!3m2!1sen!2sin!4v1717409210287!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

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