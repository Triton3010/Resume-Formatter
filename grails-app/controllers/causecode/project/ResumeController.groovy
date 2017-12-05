package causecode.project

class ResumeController {

    def index() {
        if (!session.user)
        {
            redirect(controller:"home")
            flash.message="You are not a valid user for this action"
            return false
        }
    }

    def display(){
        render(view: 'test', model:[params:params])
    }
}
