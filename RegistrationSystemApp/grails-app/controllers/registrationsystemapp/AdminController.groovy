package registrationsystemapp

class AdminController {

    def index() 
    {
    	if(session.email == "admin@localhost.local"){
    		if(params.name){
    			def users=User.findAllByLastname(params.name)
    			[users:users, lastname:params.name]
    		}
    		else{
    			def users = User.list()
    			[users:users]
    		}
    	}
    	else{
    		redirect(controller:"User", action: "login")
    	}
    }

    def logout()
    {
    	session.invalidate()
    	redirect(controller:"User", aciton: "login")
    }
}
