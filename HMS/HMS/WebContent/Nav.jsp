<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hospital Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">HMS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarContent" aria-controls="navbarContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="Index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#doctorModal">
                            Doctor
                        </button>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#patientModal">
                            Patient
                        </button>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#receptionistModal">
                            Receptionist
                        </button>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Medicine.jsp">Medicine</a>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#adminModal">
                            Admin
                        </button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Doctor Login Modal -->
    <div class="modal fade" id="doctorModal" tabindex="-1" aria-labelledby="doctorModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="doctorModalLabel">Doctor Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="doctorEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="doctorEmail">
                        </div>
                        <div class="mb-3">
                            <label for="doctorPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="doctorPassword">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Patient Login Modal -->
    <div class="modal fade" id="patientModal" tabindex="-1" aria-labelledby="patientModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="patientModalLabel">Patient Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="patientEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="patientEmail">
                        </div>
                        <div class="mb-3">
                            <label for="patientPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="patientPassword">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <!-- Sign Up Button -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#patientSignUpModal">
                        Sign Up
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Patient Sign Up Modal -->
    <div class="modal fade" id="patientSignUpModal" tabindex="-1" aria-labelledby="patientSignUpModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="patientSignUpModalLabel">Patient Sign Up</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="signUpName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="signUpName">
                        </div>
                        <div class="mb-3">
                            <label for="signUpEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="signUpEmail">
                        </div>
                        <div class="mb-3">
                            <label for="signUpPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="signUpPassword">
                        </div>
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Receptionist Login Modal -->
    <div class="modal fade" id="receptionistModal" tabindex="-1" aria-labelledby="receptionistModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="receptionistModalLabel">Receptionist Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="receptionistEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="receptionistEmail">
                        </div>
                        <div class="mb-3">
                            <label for="receptionistPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="receptionistPassword">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Admin Login Modal -->
    <div class="modal fade" id="adminModal" tabindex="-1" aria-labelledby="adminModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="adminModalLabel">Admin Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="Admin" method="post">
                        <div class="mb-3">
                            <label for="adminEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="adminEmail" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="adminPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="adminPassword" name="pass">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
