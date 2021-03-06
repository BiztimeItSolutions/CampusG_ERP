<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Biztime EduERP</title>
<title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">

<style type="text/css">
p{
color:#3c763d;
}</style>
</head>

<body>

    <div id="wrapper">

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div><img src="images/Biztime_Logo.png" width="250" height="50">
<!--            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
					      <div><img src="images/Biztime_Logo.png" width="250" height="50"></div>
            </div>-->

			
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

        </nav>
        <!-- /.navbar-static-top -->

        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
			
<!--			<div><img src="images/Biztime_Logo.png" width="250" height="60"></div>-->
			
                <ul class="nav" id="side-menu">
                <li>
                        <a href="indexnew.html"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                    </li>
                    
					<li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Masters<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="ad_department.html">Department</a>
                            </li>
                            <li>
                                <a href="ad_course.html">Course</a>
                            </li>
							 <li>
                                <a href="ad_subject.html">Subject</a>
                            </li>
							 <li>
                                <a href="ad_fees.html">Fees</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
					
					<li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Admission<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                             
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>CET Admission<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                           
							
							<li>
                                <a href="addCetapplicant.html">Registration Form</a>
                            </li>
                            	<li>
                                <a href="CetStudentList.html">CET Details</a>
                            </li>
                            	<li>
                                <a href="addDisplay.html">CET Display</a>
                            </li>
                            
                         </ul>   
                         </li>
							 <li>
                                  <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Management Admission<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                           
							
							<li>
                               <a href="applicantList.html">Shortlist Candidate</a>
                            </li>
                            	<li>
                               <a href="applicantInterviewList.html">Applicant Interview Details</a>
                            </li>
                            	<li>
                                 <a href="applicantFinalList.html">Final Applicant List</a>
                            </li>
                         
							
                            <li>
                                <a href="addapplicant.html">Online Application Form</a>
                            </li>
                        </ul>
                        </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
					
					<li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Employee Profile<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="empidcreation.html">Employee_ID creation</a>
                            </li>
                            <li>
                                <a href="persoINFo.html">Personal Details</a>
                            </li>
							 <li>
                                <a href="eduINFo.html">Education Details</a>
                            </li>
							 <li>
                                <a href="desigINFo.html" >Designation Details</a>
                            </li>
                            <li>
                            <a href="workexpINFo.html" >Work Experience details</a>
                            </li>
                            <li>
                            <a href="acntINFo.html" >Accounts details</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
					
                       
                        <!-- /.nav-second-level -->
                   


                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="panels-wells.html">Panels and Wells</a>
                            </li>
                            <li>
                                <a href="buttons.html">Buttons</a>
                            </li>
                            <li>
                                <a href="notifications.html">Notifications</a>
                            </li>
                            <li>
                                <a href="typography.html">Typography</a>
                            </li>
                            <li>
                                <a href="grid.html">Grid</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Third Level <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                                    </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" align="center">Student Details</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             <!-- DataTables Advanced Table -->
                            <p class="sus"> ${msg}</p><p class="susred"> ${msg1}</p>
                            
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <form name="form1" method="post" action="">
				<p align="center"></p>
				<table class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th>Student ID</th>
							<th>First Name</th>
							<th>Middle Name</th>
							<th>Last Name</th>
							<th>Gender</th>
							<!-- <th>Date of Birth</th> -->
							<th>Batch</th>
							<th>Year</th>
							<th>Sem</th>
							<!-- <th>10th Percentage</th>
							<th>12th Percentage</th>
							<th>10th Board</th>
							<th>12th Board</th>
							<th>CET Rank</th>
							<th>10th Board</th>
							<th>12th Board</th> -->
						    <!-- <th>Address</th>
							<th>City</th>
							<th>State</th>
							<th>Country</th>
							<th>Pin Code</th>
							<th>Phone Number</th> -->
							<th>Mail_ID</th>
							<!-- <th>10th Certificates</th>
							<th>12th Certificates</th>
							<th>Transfer Certificate</th>
							<th>Seat Allocation Certificates</th>
							<th>Cet Bill</th>
							<th>Fee Structure</th>-->
							<th>View Details</th>
							<th>Action</th> 
							
						</tr>
					</thead>
					<tbody>


						<c:forEach items="${studentsapplicants}" var="student">
							<tr class="odd gradeX">
								<td style="text-align: center;"><c:out value="${student.id}" /></td>
								<td style="text-align: center;"><c:out value="${student.fname}" /></td>
										<td style="text-align: center;"><c:out value="${student.mname}" /></td>
								<td style="text-align: center;"><c:out value="${student.lname}" /></td>
								<td style="text-align: center;"><c:out value="${student.gender}" /></td>
								
								<%-- <td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.dob}" />"/></td> --%>
								
								<td style="text-align: center;"><c:out value="${student.batch}" /></td>
								<td style="text-align: center;"><c:out value="${student.year}" /></td>
								<td style="text-align: center;"><c:out value="${student.sem}" /></td>
								
							   <%--  <td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.per}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.percent}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.sname}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cname}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cetrank}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.schooldoc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.collegedoc}" />"/></td>
										<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.tc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cetdoc}" />"/></td>
										<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cetdoc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.city}" />"/>"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.state}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.country}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.pincode}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.mobile}" />"/></td> --%>
								
								<td style="text-align: center;"><c:out value="${student.mail}" /></td>
								<%-- 
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.schooldoc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.collegedoc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.tc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cetdoc}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.cetbill}" />"/></td>
								<td style="text-align: center;"><input type="hidden"  name="" value="<c:out value="${student.feestructure}" />"/></td> --%>

 <td><a href="fetchCet.html?id=${student.id}">view</a></td> 

			<td><a href="editStudentData.html?id=${student.id}"><img
										src="images/edit.png" width="14" height="14" /></a> | <a
									href="deleteStudentData.html?id=${student.id}"><img
										src="images/delete16.png" width="14" height="14" /></a></td>

							</tr>

						</c:forEach>
					</tbody>

				</table>
				
			</form>
<!-- <a href="gotosuccess.html" >back</a><br> -->
 
                                
                               </div>
                           </div>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>

</body>
</html>
