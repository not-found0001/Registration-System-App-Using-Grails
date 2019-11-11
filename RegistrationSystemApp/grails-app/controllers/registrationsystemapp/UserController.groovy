package registrationsystemapp

class UserController {

    def index() 
    {
    	if(session.email == "admin@localhost.local"){
    		if(params.name){
    			def users=User.findAllByLastname(params.name)
    			[users:users]
    		}
    		else{
    			def users = User.list()
    			[users:users]
    		}
    	}
    	else{
    		redirect(action: "login")
    	}
    }

    def show()
    {
    	if(session.email != "admin@localhost.local" && session.email != null){
    		def user = User.where{email==session.email}
    		def user_porfile = user.list();
    		[user:user_porfile]
    	}
    	else{
    		redirect(action: "login")
    	}
    }

    def login()
    {
    	if(session.email == "admin@localhost.local"){
    		redirect(action: "index")
    	}
    	else if(session.email){
    		redirect(action: "show")
    	}
    }

    def check_login()
    {
    	if(params.email == "admin@localhost.local" && params.password == "admin"){
    		session.email = params.email
    		session.password = params.password
    		redirect(action: "index")
    	}
    	else if(User.findByEmailAndPassword(params.email, params.password.encodeAsMD5())){
    		session.email = params.email
    		session.password = params.password.encodeAsMD5()
    		redirect(action: "show")
    	}
    	else{
    		flash.error = "Wrong Email Or Password"
    		redirect(action: "login")
    	}
    }

    def logout()
    {
    	session.invalidate()
    	redirect(aciton: "login")
    }

    def registration()
    {
    	if(session.email == "admin@localhost.local"){
    		redirect(action: "index")
    	}
    	else if(session.email){
    		redirect(action: "show")
    	}
    }

    def create()
    {
    	def user = new User(params)

    	if(user.save()){
    		flash.message = "Registration Successfully Completed"
    		redirect(action: "login")
    	}
    	else{
    		flash.message = "Registration Failed"
    		redirect(action:"registration")
    	}
    }

    def ajaxCheck()
    {
    	def check = User.countByEmail(params.email)
    	render check
    }

    def update_password()
    {
    	if(session.email != "admin@localhost.local" && session.email != null){
    		if(params.prevPassword == "" || params.newPassword == "" || params.confPassword == ""){
    			flash.error = "All field must be filled"
    			redirect(action: "change_password")
    		}
    		else if(params.newPassword != params.confPassword){
    			flash.error = "new password and confirm password doesn't match"
    			redirect(action: "change_password")
    		}
    		else if(params.prevPassword.encodeAsMD5() != session.password){
    			flash.error = "Previous password are wrong"
    			redirect(action: "change_password")
    		}
    		else{
    			User.executeUpdate("update User set password=:newPassword where email=:userEmail and password=:prevPassword",[newPassword:params.newPassword.encodeAsMD5(),userEmail:session.email,prevPassword:params.prevPassword.encodeAsMD5()])
	            session.password=params.newPassword.encodeAsMD5()
	            flash.message="Password changed successfully"
	            redirect(action:"show") 
	        }
    	}
    	else{
    		redirect(action: "login")
    	}
    }

    def change_password()
    {
    	if(session.email != "admin@localhost.local" && session.email != null){
    		def user = User.where{email==session.email}
    		def user_porfile = user.list();
    		[user:user_porfile]
    	}
    	else{
    		redirect(action: "login")
    	}
    }
}
