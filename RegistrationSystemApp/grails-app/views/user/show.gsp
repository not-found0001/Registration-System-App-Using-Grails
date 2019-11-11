<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> User Profile </title>
	</head>

	<body>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
			    <a class="navbar-brand" href="#">NavBar</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				    <ul class="navbar-nav ml-auto">
				      <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				        <g:each in="${user}" var="user_name">
				          ${user_name.firstname} ${user_name.lastname}
				      	</g:each>
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <g:link class="dropdown-item" action="change_password"> Change Password </g:link>
				          <g:link class="dropdown-item" action="logout"> Logout </g:link>
				        </div>
				      </li>
				  </ul>
			    </div>
			</div>
		</nav>

		<g:if test="${flash.message}">
			<div class="container">
				<div class="alert alert-success text-center mt-3"> ${flash.message} </div>
			</div>
		</g:if>

		<div class="row">
			<div class="col-2 text-center p-2 mt-2">
				<p class="border bg-dark p-2 ml-3"> <g:link style="text-decoration: none;color: white;" action="show">Profile Page</g:link></p>
				<p class="border bg-dark p-2 ml-3">
				<g:link style="text-decoration: none;color: white;" action="change_password">Change Password</g:link>
				</p>
			</div>
			<div class="col-9 text-center">
				<div class="mt-5 p-2">
					<h4> User Profile </h4>
				</div>
				<div class="container mt-3">
					<table class="table table-success table-striped">
					  <tbody>
					  <g:each in="${user}" var="usr">
					    <tr>
					      <th scope="row">First Name</th>
					      <td>${usr.firstname}</td>
					    </tr>
					    <tr>
					      <th scope="row">Last Name</th>
					      <td>${usr.lastname}</td>
					    </tr>
					    <tr>
					      <th scope="row">Address</th>
					      <td>${usr.address}</td>
					    </tr>
					    <tr>
					      <th scope="row">Phone Number</th>
					      <td>${usr.phone}</td>
					    </tr>
					    <tr>
					      <th scope="row">Email</th>
					      <td>${usr.email}</td>
					    </tr>
					    <tr>
					      <th scope="row">Birth Date</th>
					      <td><%= usr.birthdate.format("yyyy-MM-dd") %></td>
					    </tr>
					  </g:each>
					  </tbody>
					</table>
				</div>
			</div>
		</div>

	</body>
</html>

