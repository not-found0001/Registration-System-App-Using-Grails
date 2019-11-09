package registrationsystemapp

class UserController {

    def index() 
    {

    }

    def login()
    {

    }

    def logout()
    {
    	
    }

    def registration()
    {

    }

    def show()
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
