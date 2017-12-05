package causecode

class User {

    Date dateCreated
    Date lastUpdated

    String username
    String email
    String password        // plain text, not stored
    String confirm         // plain text, not stored
    String passwordHashed


    // transients
    static transients = ['password', 'confirm']

    // constraints
    static constraints = {
        email blank:false
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}