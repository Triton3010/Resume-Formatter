package causecode.project
import causecode.User
class UserController {

    def register = {

        if (request.method == 'POST') {
            def u = new User(params)
            u.passwordHashed = u.password.encodeAsPassword()
            if (!u.save()) {  //failed case
                return [user:u]
                redirect(controller:'home')
            } else {          //success
                session.user = u
                redirect(controller:'home')
            }
        } else if (session.user) {    //user already logged in
            redirect(controller:'home')
        }
    }

    def login = {

        if (request.method == 'POST') {
            def passwordHashed = params.password.encodeAsPassword()
            def u = User.findByUsernameAndPasswordHashed(params.username, passwordHashed)
            if (u) {
                session.user = u
                redirect(controller:'home')
            } else {
                flash.message = "User not found"
                redirect(controller:'home')
            }
        } else if (session.user) {
            redirect(controller:'home')
        }
    }

    def logout = {
        session.invalidate()
        redirect(controller:'home')
    }
}