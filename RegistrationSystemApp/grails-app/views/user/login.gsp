<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> Login Page </title>
	</head>

	<body>
		<form class="col-md-5 mx-auto text-center border border-light p-5 mt-5" action="#">
			<div style="font-size: 48px;">
				<i class="fas fa-address-book"></i>
			</div>
		    <p class="h4 mb-4">Login Panel</p>

		    <input type="email" id="defaultLoginFormEmail" class="form-control mb-4 mr-5" placeholder="E-mail">

		    <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">

		    
    		<button class="btn btn-info btn-md" style="margin-rightt: 24px;"> Login </button>
            <button class="btn btn-info btn-md" style="margin-left: 24px;"> Clear </button>
             	
            <div class="mt-3">
			    <p>Are You New Here?
			        <a href="${createLink(action: 'registration')}">Register Now</a>
			    </p>
			</div>
		</form>
	</body>
</html>

