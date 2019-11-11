<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> Change Password </title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
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
				          <g:link class="dropdown-item" action="change_password">Change Password</g:link>
				          <g:link class="dropdown-item" action="logout"> Logout </g:link>
				        </div>
				      </li>
				  </ul>
			    </div>
			</div>
		</nav>

		<g:if test="${flash.error}">
			<div class="container">
				<div class="alert alert-danger text-center mt-3"> ${flash.error} </div>
			</div>
		</g:if>


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
					<g:form controller="User" action="update_password">
						<g:field type="password" id="prevPassword" name="prevPassword" class="form-control mb-4 mr-5" placeholder="Previous Password"/>
					    <input type="password" id="newPassword" name="newPassword" class="form-control mb-4" placeholder="New Password"/>
					    <input type="password" id="confPassword" name="confPassword" class="form-control mb-4" placeholder="Confirm Password"/>

			    		<button class="btn btn-info btn-md" style="margin-rightt: 24px;"> Change Password </button>
			            <button id="clr-btn" class="btn btn-info btn-md" style="margin-left: 24px;"> Clear </button>
             		</g:form>
				</div>
			</div>
		</div>

		<script>
			$("#clr-btn").click(e => {
				e.preventDefault();
				$("#prevPassword").val("");
				$("#newPassword").val("");
				$("#confPassword").val("");
			});
		</script>
	</body>
</html>

