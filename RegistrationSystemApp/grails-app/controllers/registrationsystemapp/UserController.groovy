package registrationsystemapp

class UserController {

    def index() 
    {
    	if(session.email == "admin@localhost.local"){
    		def users = User.list()
    		[users:users]
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

    }

    def check_login()
    {
    	if(params.email == "admin@localhost.local" && params.password == "admin"){
    		session.email = params.email
    		redirect(action: "index")
    	}
    	else if(User.findByEmailAndPassword(params.email, params.password.encodeAsMD5())){
    		session.email = params.email
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

    def change_password()
    {
    	
    }
}
