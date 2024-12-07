<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="Nav.jsp" %>
<style>
    /* Set the background image in the top-left corner */
   body {
        background-image: url('../images/16.jpg'); /* Path to your image */
        background-position: center; /* Align image to top-left corner */
        background-repeat: no-repeat; /* Prevent the image from repeating */
        background-size: contain; /* Adjust the size as needed */
        background-attachment: fixed; /* Make the background fixed during scrolling */
    }
    
    /* Styling for responsiveness */
    img {
        max-width: 100%; /* Scales image to the width of its parent container */
        height: auto; /* Keeps the image's aspect ratio */
    }
</style>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
  <div class="card-header">
    Featured
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
</div>
    </div>
    <div class="col-sm">
    <div class="card" style="width: 18rem;">
  <div class="card-header">
    Featured
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
</div>
    </div>
    <div class="col-sm">
    <div class="card" style="width: 18rem;">
  <div class="card-header">
    Featured
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
</div>
    </div>
  </div>
</div>
</body>
</html>