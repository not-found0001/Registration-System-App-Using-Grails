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
				          <span style="font-size: 18px;">Admin</span>
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <g:link class="dropdown-item" controller="Admin" action="logout"> Logout </g:link>
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
				<g:form controller="Admin" action="index">
					<g:textField name="name" value="${lastname}" class="form-control mr-sm-2" placeholder="Search User By Last Name" />
				</g:form>
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
			  	<g:each in="${users}" var="user">
			    <tr>
			      <td>${user.firstname} ${user.lastname}</td>
			      <td><%= (Math.floor((new Date() - user.birthdate)/365)).toInteger() %></td>
			      <td>${user.email}</td>
			      <td>${user.phone}</td>
			    </tr>
				</g:each>
			  </tbody>
			</table>
		</div>
	</body>
</html>

