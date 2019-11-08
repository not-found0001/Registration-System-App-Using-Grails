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
				          <span style="font-size: 18px;">User</span>
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <g:link class="dropdown-item" action="change_password"> Change Password </g:link>
				          <a class="dropdown-item" href="#">Logout</a>
				        </div>
				      </li>
				  </ul>
			    </div>
			</div>
		</nav>

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
					    <tr>
					      <th scope="row">First Name</th>
					      <td>Mark</td>
					    </tr>
					    <tr>
					      <th scope="row">Last Name</th>
					      <td>Jacob</td>
					    </tr>
					    <tr>
					      <th scope="row">Address</th>
					      <td>Larry</td>
					    </tr>
					    <tr>
					      <th scope="row">Phone Number</th>
					      <td>Mark</td>
					    </tr>
					    <tr>
					      <th scope="row">Email</th>
					      <td>Jacob</td>
					    </tr>
					    <tr>
					      <th scope="row">Birth Date</th>
					      <td>27-11-1978</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</div>
		</div>

	</body>
</html>

