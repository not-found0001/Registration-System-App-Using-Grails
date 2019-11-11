<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> Login Page </title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
	</head>

	<body>
		<g:if test="${flash.message}">
			<div class="container">
				<div class="alert alert-success text-center mt-3"> ${flash.message} </div>
			</div>
		</g:if>

		<g:if test="${flash.error}">
			<div class="container">
				<div class="alert alert-danger text-center mt-3"> ${flash.error} </div>
			</div>
		</g:if>

		<g:form controller="User" action="check_login" class="col-md-5 mx-auto text-center border border-light p-5 mt-5">
			<div style="font-size: 48px;">
				<i class="fas fa-address-book"></i>
			</div>
		    <p class="h4 mb-4">Login Panel</p>

		    <g:field id="email" type="email" name="email" class="form-control mb-4" placeholder="E-mail" />
		    <g:field id="password" type="password" name="password" class="form-control mb-4" placeholder="Password" />

		    
    		<button class="btn btn-info btn-md" style="margin-rightt: 24px;"> Login </button>
			<button id="clr-btn" class="btn btn-info btn-md" style="margin-left: 24px;"> Clear </button>             	
            <div class="mt-3">
			    <p>Are You New Here?
			        <a href="${createLink(action: 'registration')}">Register Now</a>
			    </p>
			</div>
		</g:form>

		<script>
			$("#clr-btn").click(e => {
				e.preventDefault();
				$("#email").val("");
				$("#password").val("");
			});
		</script>
	</body>
</html>

