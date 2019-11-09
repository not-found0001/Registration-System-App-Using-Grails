package registrationsystemapp

class User {

	String firstname
	String lastname
	String address
	String phone
	String email
	Date birthdate
	String password

    static constraints = {
    	firstname blank: false, nullable: false
        lastname blank: false, nullable: false
        address blank: false, nullable: false
        phone blank: false, nullable: false
        email blank: false, nullable: false
        birthdate blank: false, nullable: false
        password blank: false, nullable: false
    }

    def beforeInsert() {
    	this.password = this.password.encodeAsMD5()
    }
}
