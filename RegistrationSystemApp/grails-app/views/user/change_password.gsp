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
				          <g:link class="dropdown-item" action="change_password">Change Password</g:link>
				          <g:link class="dropdown-item" action="logout"> Logout </g:link>
				        </div>
				      </li>
				  </ul>
			    </div>
			</div>
		</nav>

		<div class="row">
			<div class="col-2 text-center p-2 mt-2">
				<p class="border bg-dark p-2 ml-3"> <a style="text-decoration: none;color: white;" href="/user/show"> Profile Page </a> </p>
				<p class="border bg-dark p-2 ml-3"> <a style="text-decoration: none;color: white;" href="/user/change_password"> Change Password </a> </p>
			</div>
			<div class="col-9 text-center">
				<div class="mt-5 p-2">
					<h4> Change Password </h4>
				</div>
				<div class="container mt-3">
					<input type="text" class="form-control mb-4 mr-5" placeholder="Previous Password">
				    <input type="text" class="form-control mb-4" placeholder="New Password">
				    <input type="text" class="form-control mb-4" placeholder="Confirm Password">

		    		<button class="btn btn-info btn-md" style="margin-rightt: 24px;"> Change Password </button>
		            <button class="btn btn-info btn-md" style="margin-left: 24px;"> Clear </button>
             	
				</div>
			</div>
		</div>

	</body>
</html>

