<html>
<head>
    <title>Homepage</title>
    <meta name="layout" content="main" />
    <style>
    a {
        color: #43b02a;
        line-height: inherit;
        text-decoration: none;
    }
    li {
        margin-bottom:5px;
    }
    input {
        margin-bottom: 10px !important; padding:6px !important;
    }
    .form-control {
        width:90% !important;
    }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js" sync></script>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" sync></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js" sync> </script>

</head>
<body>

<g:if test="${session?.user}">

    <div class="container" style="font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif; background-image:url('${resource(dir: "images", file: "background_test.png")}');" >
        <h3 style="color: #222;
        font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif;
        font-style: normal;
        font-weight: 400;
        line-height: 1.4;
        margin-bottom: 8px;
        margin-bottom: .5rem;
        margin-top: 30px;"> Creating a formatted resume simplified</h3>
        <ul style="font-size: 17px;">
            <li> Step 1 : Login using your account </li>
            <li> Step 2 : Enter your details and then choose your resume format from available samples </li>
            <li> Step 3 : Get the formatted resume in a click </li>
        </ul>
        <p style="text-align: center;">
            <g:link controller="resume" name="start_link" style="
           color: #fff;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    border: 1px solid #219c24;
    border-radius: 3px;
    display: inline-block;
    background: #43b02a;
    padding: 6px 35px;
    text-transform: none;
    vertical-align: middle;
    font-family: proxima-nova,sans-serif;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    margin:14px;
    width: 40%;
    -webkit-transition: .15s ease;
    transition: .15s ease;"
            >Get started!</g:link>
        </p>
    </div>
</g:if>

<g:else>
    <div class="container" style="font-family: 'Lato', sans-serif; background-image:url('${resource(dir: "images", file: "background_test.png")}'); ">
        <div class="row" style="margin: 30px auto 0 auto; max-width:1200px;">
            <div class="col-sm-6">
                <h3 style="color: #222;
                font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif;
                font-style: normal;
                font-weight: 400;
                line-height: 1.4;
                margin-bottom: 8px;
                margin-bottom: .5rem;
                margin-top: 3.2px;
                margin-top: .2rem;"> Creating a formatted resume simplified</h3>
                <ul style="font-size: 17px;">
                    <li> Step 1 : Login using your account </li>
                    <li> Step 2 : Enter your details and then choose your resume format from available samples </li>
                    <li> Step 3 : Get the formatted resume in a click </li>
                </ul>
            </div>
            <div class="col-sm-6" style="box-sizing: border-box !important;">
                <div style="box-sizing: border-box;">
                    <ul class="nav nav-tabs text-center" style="list-style-type: none; box-sizing: border-box; margin:0; padding:0; border-bottom: 0px !important;">
                        <li class="active" id="signup1" style="width:45%; float:left; text-align:center; line-height:1.6; margin:0; box-sizing: border-box;">
                            <a data-toggle="pill" id="signup_link" href="#signup" style="border-radius:3px; border: 1px solid rgba(33,156,36,.3) !important;
                            transition: .15s ease; background-color: #43b02a; font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif;
                            font-size: 16px;
                            padding: 8px 16px;
                            color: #fff; position:relative;
                            margin: 0 1px;"> Signup </a>
                        </li>
                        <li id="login1" style="width:45%; float:left; text-align:center; line-height:1.6; margin:0;">
                            <a data-toggle="pill" id="login_link" href="#login" style="border-radius:3px; border: 1px solid rgba(33,156,36,.3) !important;
                            transition: .15s ease; background-color: rgba(67,176,42,.3); font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif;
                            font-size: 16px;
                            padding: 8px 16px;
                            color: #fff; position: relative;
                            margin: 0 1px;"> Signin </a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div id="signup" class="tab-pane fade in active">
                            <h4>Register with us to get started!</h4>
                            <g:form name="register__form" id="register_form" url="[controller: 'user', action: 'register']" method="post">

                                <div class="form-group">
                                    <label class="col-md-12 control-label"></label>
                                    <div class="col-md-12">
                                        <g:textField name="username"  placeholder="Pick a username" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label"></label>
                                    <div class="col-md-12">
                                        <g:textField name="email" placeholder="Enter your email" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label"></label>
                                    <div class="col-md-12">
                                        <g:passwordField name="password" placeholder="Create a password" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label"></label>
                                    <div class="col-md-12">
                                        <g:passwordField name="confirm" placeholder="Confirm password" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <g:submitButton class="button" name="submitButton" value="Sign Up!" style=" text-decoration: none; color: #fff; text-align: center; cursor: pointer; border: 1px solid #219c24; border-radius: 3px; display: inline-block;background: #43b02a; padding: 6px 35px; text-transform: none; vertical-align: middle; font-family: proxima-nova,sans-serif; font-style: normal; font-weight: 500; font-size: 18px; width: 90%;" />
                                    </div>
                                </div>
                            </g:form>
                        </div>
                        <div id="login" class="tab-pane fade in">
                            <h4>Already a member? Sign in!</h4>
                            <g:form name="register__form" url="[controller: 'user', action: 'login']">
                                <g:textField name="username" placeholder="Enter your username" class="form-control" />
                                <g:passwordField name="password" placeholder="Enter your password" class="form-control" />
                                <g:submitButton value="Submit" name="login_button" style=" text-decoration: none; color: #fff; text-align: center; cursor: pointer; border: 1px solid #219c24; border-radius: 3px; display: inline-block; background: #43b02a; padding: 6px 35px; text-transform: none; vertical-align: middle; font-family: proxima-nova,sans-serif; font-style: normal; font-weight: 500; font-size: 18px; width: 90%;" />
                            </g:form>
                            <br />
                            <p class="text-center">
                                <a class="text-primary" href="/account/forgot_password" style="color: #43b02a">I forgot my password</a>
                                <br>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
</g:else>

<div id="content" role="main">
    <section class="row colset-2-its">
        <div id="controllers" role="navigation">
            <h2>Available Controllers:</h2>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

<script>

    $('#register_form')
        .bootstrapValidator({
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    validators: {
                        notEmpty: {
                            message: 'The first name is required'
                        },
                        stringLength: {
                            min: 5,
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: 'Password is required'
                        },
                        stringLength: {
                            min: 5,
                        },
                    }
                },
                confirm: {
                    validators: {
                        identical: {
                            field: 'password',
                            message: 'The password and its confirm are not the same'
                        },
                        notEmpty: {
                            message: 'Please re-enter the password'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'The email address is required'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                },

            }
        })
    document.getElementById("login1").onclick = function() {
        document.getElementById("signup_link").style.opacity=0.3
        document.getElementById("login_link").style.opacity=1
        document.getElementById("login_link").style.backgroundColor = "#43b02a";
    };
    document.getElementById("signup1").onclick = function() {
        document.getElementById("login_link").style.opacity=0.3
        document.getElementById("signup_link").style.opacity=1
        document.getElementById("signup_link").style.backgroundColor = "#43b02a";
    };

</script>

</body>
</html>
