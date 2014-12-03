<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <title>Biztime EduERP</title>

    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Blank -->

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">
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
				      
                    <h1 class="page-header">${sub} Subjects</h1>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Pill Tabs
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#Sem-1" data-toggle="tab">Sem-1</a>
                                </li>
                                <li><a href="#Sem-2" data-toggle="tab">Sem-2</a>
                                </li>
                                <li><a href="#Sem-3" data-toggle="tab">Sem-3</a>
                                </li>
                                <li><a href="#Sem-4" data-toggle="tab">Sem-4</a>
                                </li>
								<li><a href="#Sem-5" data-toggle="tab">Sem-5</a>
                                </li>
								<li><a href="#Sem-6" data-toggle="tab">Sem-6</a>
                                </li>
								<li><a href="#Sem-7" data-toggle="tab">Sem-7</a>
                                </li>
								<li><a href="#Sem-8" data-toggle="tab">Sem-8</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="Sem-1">
                                    <h4>Subject Details1</h4>
                                   <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${first}" var="course">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${course.subject_code}"/></td>
											    <td><c:out value="${course.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
</div>
                                <div class="tab-pane fade" id="Sem-2">
                                    <h4>Subject Details2</h4>
                                   <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${second}" var="sec">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${sec.subject_code}"/></td>
											    <td><c:out value="${sec.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>
                                <div class="tab-pane fade" id="Sem-3">
                                    <h4>Subject Details3</h4>
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${third}" var="thir">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${thir.subject_code}"/></td>
											    <td><c:out value="${thir.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>
                                <div class="tab-pane fade" id="Sem-4">
                                    <h4>Subject Details4</h4>
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${fourth}" var="four">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${four.subject_code}"/></td>
											    <td><c:out value="${four.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>    
                                </div>

                                <div class="tab-pane fade" id="Sem-5">
                                    <h4>Subject Details5</h4>
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${fifth}" var="fif">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${fif.subject_code}"/></td>
											    <td><c:out value="${fif.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>

                                <div class="tab-pane fade" id="Sem-6">
                                    <h4>Subject Details6</h4>
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${sixth}" var="six">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${six.subject_code}"/></td>
											    <td><c:out value="${six.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>

                                <div class="tab-pane fade" id="Sem-7">
                                    <h4>Subject Details7</h4>
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${seventh}" var="seven">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${seven.subject_code}"/></td>
											    <td><c:out value="${seven.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>

                                <div class="tab-pane fade" id="Sem-8">
                                    <h4>Subject Details8</h4>
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Subject Code</th>
											<th>Subject Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									
										   <c:forEach items="${eighth}" var="eight">
									   
                                        <tr class="odd gradeX">
                                                <td><c:out value="${eight.subject_code}"/></td>
											    <td><c:out value="${eight.subject_name}"/></td>
                                        </tr> 
                                        </c:forEach>                                     
                                </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>

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

    <!-- Page-Level Plugin Scripts - Blank -->

    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Blank - Use for reference -->

</body>
</html>
