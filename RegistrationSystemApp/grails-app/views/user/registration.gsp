<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> Registration Page </title>
	</head>

	<body>
		<form class="col-md-5 mx-auto text-center border border-light p-3" action="#">
			<div style="font-size: 48px;">
				<i class="fas fa-address-book"></i>
			</div>
		    <p class="h4 mb-4">Registration Panel</p>

		    <input type="text"  class="form-control mb-4 mr-5" placeholder="First Name">
		    <input type="text"  class="form-control mb-4 mr-5" placeholder="Last Name">
		    <input type="text"  class="form-control mb-4 mr-5" placeholder="Address">
		    <input type="number"  class="form-control mb-4 mr-5" placeholder="Phone Number">
		    <input type="email" class="form-control mb-4 mr-5" placeholder="E-mail">
		    <input type="text"  id="datepicker" style="width: 300px;" placeholder="Birth Date">
		    <input type="password" class="form-control mb-4 mt-4" placeholder="Password">
    		<button class="btn btn-info btn-md" style="margin-right: 24px;"> Register </button>
            <button class="btn btn-info btn-md" style="margin-left: 24px;"> Cancel </button>
              	
		</form>

		<script>
	        $('#datepicker').datepicker({
	            uiLibrary: 'bootstrap4'
	        });
	    </script>

	</body>
</html>

