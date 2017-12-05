<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.rawgit.com/FezVrasta/bootstrap-material-design/dist/dist/bootstrap-material-design.min.css">
</head>
<body>

<div class="container">

    <g:form class="" name="abc" url="[controller: 'resume', action: 'display']" method="post">

        <fieldset>
            <legend> Personal Details </legend>

            <div class="row">
                <div class="col-md-3" style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_firstname">First Name</label>
                        <g:textField id="form_firstname" name="firstname" required="true" class="form-control" placeholder="Please enter your firstname" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_lastname">Last Name</label>
                        <g:textField id="form_lastname" name="lastname" required="true" class="form-control" placeholder="Please enter your lastname"  />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3" style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_email">Email</label>
                        <g:field type="email" id="form_email" name="email" required="true" class="form-control" placeholder="Please enter a valid email id" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_phone">Contact No.</label>
                        <g:field type="number" id="form_phone" name="phone" maxLength="12" required="true" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3" style="margin-right:10%">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_gender">Select Gender</label>
                        <g:select name="gender" id="form_gender" from="${['Male', 'Female']}" required="true" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3" style="margin-right:10%">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_dob">Date of birth</label>
                        <g:datePicker name="dob" id="form_dob"  value="${new Date()}" required="true" precision="day" years="${1960..2005}"  class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3"  style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_hometown">Hometown </label>
                        <g:textField name="hometown" id="form_hometown" required="true" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_email"> Nationality </label>
                        <g:countrySelect name="nationality" value="${country}"
                                         required="true" noSelection="['':'-Choose your country-']" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="address">Permanent Address </label>
                        <g:textArea name="address" id="address" required="true" rows="2" cols="40" class="form-control"/>
                    </div>
                </div>

            </div>

        </fieldset>

        <br />

        <fieldset>
            <legend>Academic Details </legend>

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_school"> School name</label>
                        <g:textField name="school_name" id="form_school" required="true" class="form-control" placeholder="School name"  />

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_phone">10th percentage </label>
                        <g:field type="number" name="tenth_per" min="1" max="100" step="0.05" required="true" class="form-control"/>
                    </div>

                </div>
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_phone">Year of passing </label>
                        <g:field type="number" name="tenth_year" min="1960" max="2020" maxLength="4" required="true" class="form-control" />

                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label for="form_phone">Board</label>
                        <g:textField name="tenth_board_name" required="true" class="form-control" placeholder="Board name"  />
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_email"> 12th percentage </label>
                        <g:field type="number" name="twelve_per" min="1" max="100" step="0.05" required="true" class="form-control"/>
                    </div>
                </div>
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_phone"> Year of passing </label>
                        <g:field type="number" name="twelve_year" min="1960" max="2020" maxLength="4" required="true" class="form-control"/>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label for="form_phone"> Board </label>
                        <g:textField name="twelve_board_name" required="true" placeholder="Board name" class="form-control"  />

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_email"> College name </label>
                        <g:textField id="form_name" name="college_name" required="true" class="form-control" placeholder="College name" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group">
                        <label for="form_phone"> Degree </label>
                        <g:textField id="form_phone" name="degree" required="true" class="form-control" />
                    </div>
                </div>
                <div class="col-md-2" style="margin-right:10%">
                    <div class="form-group">
                        <label for="college_year"> Year of passing </label>
                        <g:field type="number" name="college_year" min="1960" max="2020" maxLength="4" required="true" class="form-control" />
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label for="form_phone"> Current percentage </label>
                        <g:field type="number" name="college_per" min="1" max="100" step="0.05" required="true" class="form-control" />
                    </div>
                </div>
            </div>

        </fieldset>
        <br />
        <fieldset>

            <legend> Internship & Projects</legend>

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_name">Project Title</label>
                        <g:textField id="form_name" name="title1" class="form-control" required="true" placeholder="Please enter your firstname *" data-error="Firstname is required." />
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="form_desc1">Description</label>
                        <g:textArea name="desc1" id="form_desc1" placeholder="Details" rows="3" cols="40" required="true" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3" style="margin-right:10%;">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_lastname">Start date</label>
                        <g:datePicker name="org1_startdate" value="${new Date()}" precision="day" years="${1960..2018}" required="true" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_lastname">End date</label>
                        <g:datePicker name="org1_enddate" value="${new Date()}" precision="day" years="${1960..2018}" required="true" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="form_name">Project Title</label>
                        <g:textField id="form_name" name="title2" class="form-control" required="true" placeholder="Please enter your firstname *" data-error="Firstname is required." />
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="form_lastname">Description</label>
                        <g:textArea name="desc2" placeholder="Details" rows="3" cols="40" required="true" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3" style="margin-right:10%;">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_lastname">Start date</label>
                        <g:datePicker name="org2_startdate" value="${new Date()}" required="true" precision="day" years="${1960..2018}" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group bmd-form-group">
                        <label class="bmd-label-static" for="form_lastname">End date</label>
                        <g:datePicker name="org2_enddate" value="${new Date()}" required="true" precision="day" years="${1960..2018}" class="form-control" />
                    </div>
                </div>
            </div>

        </fieldset>
        <br />
        <g:submitButton value="Generate Resume" name="submit_button" style=" text-decoration: none;
    color: #fff;
    text-align: center;
    cursor: pointer;
    border: 1px solid #219c24;
    border-radius: 3px;
    display: inline-block;
    background: #43b02a;
    padding: 5px 30px;
    text-transform: none;
    vertical-align: middle;
    font-family: proxima-nova,sans-serif;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    width: 20%;
    " />

    </g:form>

</div>

<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script src="https://cdn.rawgit.com/HubSpot/tether/v1.3.4/dist/js/tether.min.js"></script>
<script src="https://cdn.rawgit.com/FezVrasta/bootstrap-material-design/dist/dist/bootstrap-material-design.iife.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://maxcdn.bootstrapcdn.com/js/ie10-viewport-bug-workaround.js"></script>
<script>
    $('body').bootstrapMaterialDesign();
</script>

</body>
</html>