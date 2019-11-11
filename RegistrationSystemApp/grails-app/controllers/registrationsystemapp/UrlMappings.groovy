package registrationsystemapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "User", action: "login")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
