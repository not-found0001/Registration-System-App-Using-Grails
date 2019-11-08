<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> User List </title>
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

		<div class="container">
			<div class="row mt-5">
				<div class="col-9">
					<h4> User List </h4>
				</div>
				<div class="col-3 ml-auto">
					<input class="form-control mr-sm-2" type="search" placeholder="Search Here">
				</div>	
			</div>
		</div>

		<div class="container mt-3">
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">Name</th>
			      <th scope="col">Age</th>
			      <th scope="col">Email</th>
			      <th scope="col">Phone</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <td>Larry</td>
			      <td>the Bird</td>
			      <td>@twitter</td>
			      <td>@mdo</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</body>
</html>

