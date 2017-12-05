<html>
<head>
    <title>Testing</title>
    <style>
        td { text-align: center; }
        table, th, tr, td { border: 1px solid black; border-collapse: collapse;}
        th, td { padding:10px;}
    </style>
</head>
<body>

 ${params.firstname} ${params.lastname}
<br />
<span style="text-decoration: underline;">Address for Correspondence: <br /> </span>
<span>${params.address}</span>
<span style="float:right">Phone:${params.phone}</span> <br />
<span style="float:right">Email:${params.email}</span>
<br />
<h4 style="background-color:grey;">ACADEMIC BACKGROUND</h4>
<table style="width:80%; border:1px solid black;">
    <tr>
        <th>Year(s)</th>
        <th>Qualification-Degree/Diploma</th>
        <th>Board/University</th>
        <th>College/Institute</th>
        <th>Percentage</th>
    </tr>
    <tr>
        <td>${params.college_year}</td>
        <td>${params.degree}</td>
        <td>${params.college_name}</td>
        <td>${params.college_name}</td>
        <td>${params.college_per}</td>
    </tr>
    <tr>
        <td>${params.twelve_year}</td>
        <td>12th</td>
        <td>${params.twelve_board_name}</td>
        <td>${params.school_name}</td>
        <td>${params.twelve_per}</td>
    </tr>
    <tr>
        <td>${params.tenth_year}</td>
        <td>10th</td>
        <td>${params.tenth_board_name}</td>
        <td>${params.school_name}</td>
        <td>${params.tenth_per}</td>
    </tr>
</table>
<br />
<h4 style="background-color:grey;">INTERNSHIP AND PROJECTS UNDERTAKEN</h4>
<span> <g:formatDate format="MMM , yy" date="${params.org1_startdate}"/>- <g:formatDate format="MMM , yy" date="${params.org1_enddate}"/> </span>
<span style="float:right; font-weight: bold;">${params.title1}</span><br />
<span style="float:right;">${params.desc1}</span> <br /><br />
<span> <g:formatDate format="MMM , yy" date="${params.org2_startdate}"/>- <g:formatDate format="MMM , yy" date="${params.org2_enddate}"/> </span>
<span style="float:right; font-weight: bold;">${params.title2}</span><br />
<span style="float:right">${params.desc2}</span>


<h4 style="background-color:grey;">PERSONAL DETAILS</h4>
<span style="margin-right:10%;">Date of Birth</span> : <span style="margin-left:10%;"><g:formatDate date="${params.dob}" type="date" style="LONG"/></span><br />
<span style="display:inline-block; width:105px; margin-right:10%;">Gender</span> : <span style="margin-left:10%;">${params.gender}</span><br />
<span style="display:inline-block; width:105px; margin-right:10%;">Nationality</span> : <span style="margin-left:10%;">${params.nationality}</span><br />
<span style="display:inline-block; width:105px; margin-right:10%;">Hometown</span> : <span style="margin-left:10%;">${params.hometown}</span><br />
<span style="display:inline-block; width:105px; margin-right:10%;">Contact No.</span> : <span style="margin-left:10%;">${params.phone}</span><br /><br />
<p>I hereby declare that the details above are correct and true to the best of my knowledge.</p><br />
${params.firstname} ${params.lastname}
</body>
</html>