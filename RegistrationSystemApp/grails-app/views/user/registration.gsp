<!Doctype html>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title> Registration Page </title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
	</head>

	<body>
		<g:if test="${flash.message}">
			<div class="container">
				<div class="alert alert-danger text-center mt-3"> ${flash.message} </div>
			</div>
		</g:if>

		<g:form controller="User" action="create" class="col-md-5 mx-auto text-center border border-light p-3">
			<div style="font-size: 48px;">
				<i class="fas fa-address-book"></i>
			</div>
		    <p class="h4 mb-4">Registration Panel</p>

		    <p class="text-left" style="font-size:12px;color:red;"> * All Field must be completed </p>

		    <g:textField name="firstname" class="form-control mb-4 mr-5" placeholder="First Name" />
		    <g:textField name="lastname" class="form-control mb-4 mr-5" placeholder="Last Name" />
		    <g:textField name="address" class="form-control mb-4 mr-5" placeholder="Address" />
		    <g:field type="number" name="phone" class="form-control mb-4 mr-5" placeholder="Phone Number" />
		    <div>
		    	<g:field type="email" id="email" name="email" class="form-control mb-4 mr-5" placeholder="E-mail" />
		    	<span id="validId" class="text-success" style="float:right;margin-right:12px;margin-top:-56px;"></span>
		    	<span id="inValidId" class="text-danger" style="float:right;margin-right:12px;margin-top:-56px;"></span>
			</div>
		    <g:field type="password" name="password" class="form-control mb-4 mt-4" placeholder="Password" />
		    <div class="mb-4 form-control text-left">
		    	<div class="row">
		    		<div class="col-5">
				    	<label> Birth Date </label>
				    </div>
				    <div class="col-7">
				    	<g:datePicker name="birthdate" precision="year" precision="month" precision="day"/>
				    </div>
		    	</div>
			</div>
		    
    		<button id="reg-btn" class="btn btn-info btn-md" style="margin-right: 24px;"> Register </button>
    		<g:link class="btn btn-info btn-md" style="margin-left: 24px;" action="login"> Cancel </g:link>
              	
		</g:form>

		<script> 
		    $('#email').blur(function(){
		      let Email = $('#email').val();  
		      $.ajax({
		        url:"${g.createLink(controller:'User',action:'ajaxCheck')}",
		        data:{email:Email},
		        success:function(data){
		          if(data == 0){
		          	$('#reg-btn').prop('disabled', false);
		            $('#inValidId').html("");
		            $('#validId').html("Valid Email");
		          }
		          else{
		          	$('#reg-btn').prop('disabled', true);
		            $('#validId').html("");
		            $('#inValidId').html("Invalid Email");
		          }
		        }
		      });
		    });
	    </script>

	</body>
</html>

