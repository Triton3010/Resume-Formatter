<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <script>

    </script>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>

    <div class="navbar navbar-default navbar-static-top" role="navigation" style="background-color:#43b02a; height:63px; margin-bottom:0px !important;">
        <div class="container" style="max-width:80%; margin:0 auto; font-family: Proxima Nova,Lato,Helvetica Neue,Helvetica,Roboto,Arial,sans-serif;
             font-style: normal; font-weight: 400; line-height: 1.5;">
            <div class="navbar-header">
                <a class="navbar-brand" href="/#" style="margin-top:5px !important;">
                     <i class="glyphicon glyphicon-list-alt"> </i> Resume Formatter
                </a>

            </div>

            <div class="navbar-collapse collapse">
                <ul style="display:inline; list-style-type:none;">
                <g:if test="${session?.user}">
                    <li style="float:right">
                        ${session?.user?.username}|
                        <g:link controller="user" action="logout">Logout</g:link></li>
                </g:if>
                </ul>
            </div>

        </div>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>


</body>
</html>
