component accessors=true {
	property userService;
	
	function init( fw ) {
   		variables.fw = arguments.fw;
   		return this;
	}

	function register(struct rc) {
		param name="rc.username" default="";
		param name="rc.password" default="";
		param name="rc.confirmPassword" default="";
		param name="rc.errors" default="";
	}

    function create(struct rc) {
    	param name="rc.username" default="";
		param name="rc.password" default="";
		param name="rc.confirmPassword" default="";
		param name="rc.errors" default="";
		validation(rc);

		rc.userId = variables.userService.create(
			username = rc.username, 
			password = rc.password
		);

		return rc.userId;
    }

    function login( struct rc ) {
        param name="rc.username" default="";
        param name="rc.password" default="";
        param name="rc.errors" default="";
        param name="rc.method" default="";

        if(rc.method == 'login') {
            // VALIDATION

            errors = arrayNew(1);

            if(rc.username == '') {
                arrayAppend(errors, 'Username is required.');
            }

            if(rc.password == '') {
                arrayAppend(errors, 'Password is required!');
            }

            if(arrayLen(errors) > 0) {
                rc.errors = arrayToList(errors);
                rc.method = "";
                fw.redirect('user.login', 'all');
                return;
            }

            // END VLAIDATION

            qUser = variables.userService.get(username = rc.username);
            usr_password = qUser['usr_password'];

            if(usr_password == rc.password) {
                SESSION['user'] = {
                    username = qUser['usr_username'],
                    id = qUser['usr_id'],
                    avatar = qUser['usr_avatar']
                };

                fw.redirect('main.default');
            }

            rc.errors = 'Username or password is invalid!';
        }
    }

    function logout() {
        structDelete(SESSION, "user");
        fw.redirect('main.default');
    }

    function validation(struct rc) {
        errors = arrayNew(1);

        if(rc.username == '') {
            arrayAppend(errors, 'Username is required.');
        }

        if(rc.password == '') {
            arrayAppend(errors, 'Password is required!');
        }

        if(rc.confirmPassword == '') {
            arrayAppend(errors, 'Confirm password is required!');
        }

        if(rc.password != rc.confirmPassword) {
            arrayAppend(errors, 'Passwords are not matching!'); 
        }

        if(arrayLen(errors) > 0) {
            rc.errors = arrayToList(errors);
            fw.redirect('user.register', 'all');
            return;
        }
    }

}