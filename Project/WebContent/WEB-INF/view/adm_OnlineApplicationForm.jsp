<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ page  language="java" %>
<%
 String hiddenFieldValue="";
%>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
 
    <!-- Page-Level Plugin CSS - Forms -->

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />
    <style type="text/css">
<!--
.style1 {color: #FF0000}
-->
    </style>
 
 <link rel="stylesheet"  type="text/css" href="new.css"/>
 
    
  <script type="text/javascript" src="jquery-1.11.js" ></script>
<script type="text/javascript" src="changepass.js"> </script>
<script src="jquery.min.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>
  <script type="text/javascript" src="jsDatePick.min.1.3.js"></script>
    
    
</head>

<body>

    <div id="wrapper">

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="img/Biztime_Logo.png" width="200" height="50"></a>
            </div>
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
                        <li><a href="settings.html"><i class="fa fa-gear fa-fw"></i> Settings</a>
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
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </li>
              
             
              <li>       
                        <a href="adm_mainpage.html"><i class="fa fa-dashboard fa-fw"></i>College Main Page</a>
             </li>
             
                   </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Online Registration Form</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            
                        </div>
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                
                              <c:url var="Registration" value="saveApplicant.html"/>

<form id="OnlineApplicationForm" modelAttribute="applicant" method="post" action="${Registration}">
		<fieldset>
	
			<p>
				<label for="fname" class="block">First name:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="first_Name" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				
			
				<label for="lname" class="block">Last name:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="last_Name" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
			</p>
			<fieldset>
			<label for="fname" class="block">10th Details:</label>
			
			
			
			    <p>
				<label for="fname" class="block">Percentage:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="tenth_Percentage" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
                                          
				<label for="mname" class="block">Year of passing:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="tenth_YOP"></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				
				<label for="fname" class="block">School Name:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="tenth_School" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
			</p>

            
			</fieldset>
			<fieldset>
			<label for="fname" class="block">12th Details:</label>
			
			
			
			    <p>
				<label for="fname" class="block">Percentage:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="twelth_Percentage" id="user"></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
                                          
				<label for="mname" class="block">Year of passing:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="twelth_YOP"></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				
				<label for="fname" class="block">School Name:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="twelth_School" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
			</p>

             
			</fieldset>
			 <p>
				<label class="block">Gender:</label></br></br>
				<input type="radio" name="gender" id="man" value="Male" /> <label for="man">Male</label>
				<input type="radio" name="gender" id="woman" value="Female" /> <label for="woman">Female</label>
			</p>

			<p>
				<label for="lname" class="block">Area Of Interest:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                               
                                                 <div class="form-group"><select name="department">
                                                 <option value="Computer Science & Engineering">Computer Science & Engineering</option>
  <option value="Information Science & Engineering">Information Science & Engineering</option>
  <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
  <option value="Telecommunication Engineering">Telecommunication Engineering</option>
  <option value="Electrical & Electronics Engineering">Electrical & Electronics Engineering</option>
  <option value="Mechanical Engineering">Mechanical Engineering</option>
  <option value="Civil Engineering">Civil Engineering</option>
  <option value="Biomedical Engineering">Biomedical Engineering</option>
  <option value="Instrumentation Technology">Instrumentation Technology</option>
  <option value="Bio-technology">Bio-technology</option>
  <option value="Chemical Engineering">Chemical Engineering</option>
  <option value="Automobile Engineering">Automobile Engineering</option>
                                                 </select></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
			</p>

			
			<p>
				<label class="block">Date Of Birth:</label>
				<span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control"  name="dob" type="date"></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				

			</p>
			<p>
			<label for="fname" class="block">Address Line:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="address" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
                                          
				<label for="fname" class="block">City:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="city" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				
				<label for="mname" class="block">Pincode:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="pincode" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
				
				<p>
				<label for="lname" class="block">State:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                               
    
                                                <div class="form-group"><select name="state">
                                                
   <!-- India -->                                             
  <option value="Rajastan">Rajastan</option>
  <option value="Madhya Pradesh">Madhya Pradesh</option>
  <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  <option value="Jammu and Kashmir">Jammu and Kashmir</option>
  <option value="Gujarat">Gujarat</option>
  <option value="Karnataka">Karnataka</option>
  <option value="Andhra Pradesh">Andhra Pradesh</option>
  <option value="Odisha">Odisha</option>
  <option value="Chhattisgarh">Chhattisgarh</option>
  <option value="Tamil Nadu">Tamil Nadu</option>
  <option value="Telangana">Telangana</option>
  <option value="Bihar">Bihar</option>
  <option value="West Bengal">West Bengal</option>
  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
  <option value="Jharkhand">Jharkhand</option>
  <option value="Assam">Assam</option>
  <option value="Himachal Pradesh">Himachal Pradesh</option>
  <option value="Uttarakhand">Uttarakhand</option>
  <option value="Punjab">Punjab</option>
  <option value="Haryana">Haryana</option>
  <option value="Kerala">Kerala</option>
  <option value="Meghalaya">Meghalaya</option>
  <option value="Manipur">Manipur</option>
  <option value="Mizoram">Mizoram</option>
  <option value="Nagaland">Nagaland</option>
 <option value="Tripura">Tripura</option>
  <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
  <option value="Sikkim">Sikkim</option>
  <option value="Goa">Goa</option>
  <option value="Delhi">Delhi</option>
  <option value="Puducherry">Puducherry</option>
  <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
  <option value="Chandigarh">Chandigarh</option>
  <option value="Daman and Diu">Daman and Diu</option>
  <option value="Lakshadweep Islands">Lakshadweep Islands</option>
  
  <!-- Australia -->
 <option value="Capital Territory">Capital Territory</option>
<option value="New South Wales">New South Wales</option>
<option value="Northern Territory">Northern Territory</option>
<option value="Queensland">Queensland</option>
<option value="South Australia">South Australia</option>
<option value="Tasmania">Tasmania</option>
<option value="Victoria">Victoria</option>
<option value="Western Australia">Western Australia</option>
  
  <!-- Bangladesh -->
 <option value="Dhaka">Dhaka</option>
 <option value="Khulna">Khulna</option>
 <option value="Rajshahi">Rajshahi</option>
 <option value="Chittagong">Chittagong</option>
 <option value="Sylhet">Sylhet</option>
 <option value="Barisal">Barisal</option> 
  
  <!-- brazil -->
  <option value="Acre">Acre</option>
<option value="Alagoas">Alagoas</option>
<option value="Amapa">Amapa</option>
<option value="Amazonas">Amazonas</option>
<option value="Bahia">Bahia</option>
<option value="Ceara">Ceara</option>
<option value="Distrito Federal">Distrito Federal</option>
<option value="Espirito Santo">Espirito Santo</option>
<option value="Goias">Goias</option>
<option value="Maranhao">Maranhao</option>
<option value="Mato Grosso">Mato Grosso</option>
<option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
<option value="Minas Gerais">Minas Gerais</option>
<option value="Para">Para</option>
<option value="Paraiba">Paraiba</option>
<option value="Parana">Parana</option>
<option value="Pernambuco">Pernambuco</option>
<option value="Piaui">Piaui</option>
<option value="Rio de Janeiro">Rio de Janeiro</option>
<option value="Rio Grande do Norte">Rio Grande do Norte</option>
<option value="Rio Grande do Sul">Rio Grande do Sul</option>
<option value="Rondonia">Rondonia</option>
<option value="Roraima">Roraima</option>
<option value="Santa Catarina">Santa Catarina</option>
<option value="Sao Paulo">Sao Paulo</option>
<option value="Sergipe">Sergipe</option>
<option value="Tocantins">Tocantins</option>

<!--  -->
  
                                                 </select></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
			</p>

			<p>
				<label for="fname" class="block">Country:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group">
                                                 <select name="country">
<option>Afghanistan</option>

<option>Akrotiri</option>

<option>Albania</option>

<option>Algeria</option>

<option>American Samoa</option>

<option>Andorra</option>

<option>Angola</option>

<option>Anguilla</option>

<option>Antarctica</option>

<option>Antigua and Barbuda</option>

<option>Argentina</option>

<option>Armenia</option>

<option>Aruba</option>

<option>Ashmore and Cartier Islands</option>

<option>Australia</option>

<option>Austria</option>

<option>Azerbaijan</option>

<option>Bahamas</option>

<option>Bahrain</option>

<option>Bangladesh</option>
<option>Barbados</option>

<option>Bassas da India</option>

<option>Belarus</option>
<option>Belgium</option>

<option>Belize</option>

<option>Benin</option>

<option>Bermuda</option>

<option>Bhutan</option>

<option>Bolivia</option>

<option>Bosnia and Herzegovina</option>

<option>Botswana</option>

<option>Bouvet Island</option>

<option>Brazil</option>

<option>British Indian Ocean Territory</option>

<option>British Virgin Islands</option>

<option>Brunei</option>

<option>Bulgaria</option>

<option>Burkina Faso</option>

<option>Burma</option>

<option>Burundi</option>

<option>Cambodia</option>

<option>Cameroon</option>

<option>Canada</option>

<option>Cape Verde</option>

<option>Cayman Islands</option>

<option>Central African Republic</option>

<option>Chad</option>

<option>Chile</option>

<option>China</option>

<option>Christmas Island</option>

<option>Clipperton Island

<option>Cocos (Keeling) Islands</option>

<option>Colombia</option>

<option>Comoros</option>

<option>Congo, Democratic Republic of the</option>

<option>Congo, Republic of the</option>

<option>Cook Islands</option>

<option>Coral Sea Islands</option>

<option>Costa Rica</option>

<option>Cote d'Ivoire</option>

<option>Croatia</option>

<option>Cuba</option>

<option>Cyprus</option>

<option>Czech Republic</option>

<option>Denmark</option>

<option>Dhekelia</option>

<option>Djibouti</option>

<option>Dominica</option>

<option>Dominican Republic</option>

<option>Ecuador</option>

<option>Egypt</option>

<option>El Salvador</option>

<option>Equatorial Guinea</option>

<option>Eritrea</option>

<option>Estonia</option>

<option>Ethiopia</option>

<option>Europa Island</option>

<option>Falkland Islands (Islas Malvinas)</option>

<option>Faroe Islands</option>

<option>Fiji</option>

<option>Finland</option>

<option>France</option>

<option>French Guiana</option>

<option>French Polynesia</option>

<option>French Southern and Antarctic Lands</option>

<option>Gabon</option>

<option>Gambia, The</option>

<option>Gaza Strip</option>

<option>Georgia</option>

<option>Germany</option>

<option>Ghana</option>

<option>Gibraltar</option>

<option>Glorioso Islands</option>

<option>Greece</option>

<option>Greenland</option>

<option>Grenada</option>

<option>Guadeloupe</option>

<option>Guam</option>

<option>Guatemala</option>

<option>Guernsey</option>

<option>Guinea</option>

<option>Guinea-Bissau</option>

<option>Guyana</option>

<option>Haiti</option>

<option>Heard Island and McDonald Islands</option>

<option>Holy See (Vatican City)</option>

<option>Honduras</option>

<option>Hong Kong</option>

<option>Hungary</option>

<option>Iceland</option>

<option>India</option>

<option>Indonesia</option>

<option>Iran</option>

<option>Iraq</option>

<option>Ireland</option>

<option>Isle of Man</option>

<option>Israel</option>

<option>Italy</option>

<option>Jamaica</option>

<option>Jan Mayen</option>

<option>Japan</option>

<option>Jersey</option>

<option>Jordan</option>

<option>Juan de Nova Island</option>

<option>Kazakhstan</option>

<option>Kenya</option>

<option>Kiribati</option>

<option>Korea, North</option>

<option>Korea, South</option>

<option>Kuwait</option>

<option>Kyrgyzstan</option>

<option>Laos</option>

<option>Latvia</option>

<option>Lebanon</option>

<option>Lesotho</option>

<option>Liberia</option>

<option>Libya</option>

<option>Liechtenstein</option>

<option>Lithuania</option>

<option>Luxembourg</option>

<option>Macau</option>

<option>Macedonia</option>

<option>Madagascar</option>

<option>Malawi</option>

<option>Malaysia</option>

<option>Maldives</option>

<option>Mali</option>

<option>Malta</option>

<option>Marshall Islan</option>ds

<option>Martinique</option>

<option>Mauritania</option>

<option>Mauritius</option>

<option>Mayotte</option>

<option>Mexico</option>

<option>Micronesia, Federated States of</option>

<option>Moldova</option>

<option>Monaco</option>

<option>Mongolia</option>

<option>Montserrat</option>

<option>Morocco</option>

<option>Mozambique</option>

<option>Namibia</option>

<option>Nauru</option>

<option>Navassa Island</option>

<option>Nepal</option>

<option>Netherlands</option>

<option>Netherlands Antilles</option>

<option>New Caledonia</option>

<option>New Zealand</option>

<option>Nicaragua</option>

<option>Niger</option>

<option>Nigeria</option>

<option>Niue</option>

<option>Norfolk Island</option>

<option>Northern Mariana Islands</option>

<option>Norway</option>

<option>Oman</option>

<option>Pakistan</option>

<option>Palau</option>

<option>Panama</option>

<option>Papua New Guinea</option>

<option>Paracel Islands</option>

<option>Paraguay</option>

<option>Peru</option>

<option>Philippines</option>

<option>Pitcairn Islands</option>

<option>Poland</option>

<option>Portugal</option>

<option>Puerto Rico</option>

<option>Qatar</option>

<option>Reunion</option>

<option>Romania</option>

<option>Russia</option>

<option>Rwanda</option>

<option>Saint Helena</option>

<option>Saint Kitts and Nevis</option>

<option>Saint Lucia</option>

<option>Saint Pierre and Miquelon</option>

<option>Saint Vincent and the Grenadines</option>

<option>Samoa</option>

<option>San Marino</option>

<option>Sao Tome and Principe</option>

<option>Saudi Arabia</option>

<option>Senegal</option>

<option>Serbia and Montenegro</option>

<option>Seychelles</option>

<option>Sierra Leone</option>

<option>Singapore</option>

<option>Slovakia</option>

<option>Slovenia</option>

<option>Solomon Islands</option>

<option>Somalia</option>

<option>South Africa</option>

<option>South Georgia and the South Sandwich Islands</option>
<option>Spain</option>

<option>Spratly Islands</option>

<option>Sri Lanka</option>

<option>Sudan</option>
<option>Suriname</option>

<option>Svalbard</option>

<option>Swaziland</option>

<option>Sweden</option>

<option>Switzerland</option>

<option>Syria</option>

<option>Taiwan</option>

<option>Tajikistan</option>

<option>Tanzania</option>

<option>Thailand</option>

<option>Timor-Leste</option>

<option>Togo</option>

<option>Tokelau</option>

<option>Tonga</option>
<option>Trinidad and Tobago</option>

<option>Tromelin Island</option>
<option>Tunisia</option>

<option>Turkey</option>

<option>Turkmenistan</option>

<option>Turks and Caicos Islands</option>

<option>Tuvalu</option>
<option>Uganda</option>

<option>Ukraine</option>

<option>United Arab Emirates</option>

<option>United Kingdom</option>

<option>United States</option>
<option>Uruguay</option>
<option>Uzbekistan</option>
<option>Vanuatu</option>
<option>Venezuela</option>
<option>Vietnam</option>
<option>Virgin Islands</option>
<option>Wake Island</option>
<option>Wallis and Futuna</option>
<option>West Bank</option>
<option>Western Sahara</option>
<option>Yemen</option>
<option>Zambia</option>
<option>Zimbabwe</option></select>
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
                                          <p>
                                          <p>
				<label for="fname" class="block">EmailID:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="email_ID" ></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
                                          </table> 
                                          <p>
                                          
                                          <p>
				<label for="fname" class="block">Phone Number:</label>
				 <span class="style1">                                            *</span>
                                            
                                          <table width="1015">
                                              <tr>
                                               <td width="608">
                                                 <div class="form-group"><input class="form-control" name="mobile_No"></div>
                                                 
                                               </td>
                                               <td width="393"><label id="lbluser"></label></td>
                                               
                                             </tr>
        
                                                                      
                                          </table> 	
			
			</p>
		
		<p>
		<table>
		<input type="hidden" name="mail" value="<%=hiddenFieldValue%>" />
		</table>
		</p>
		
		<p>
		<table>
		<input type="hidden" name=counseling1" value="<%=hiddenFieldValue%>" />
		</table>
		</p>
		
			<p>
		<table>
		<input type="hidden" name=counseling2" value="<%=hiddenFieldValue%>" />
		</table>
		</p>
		
		
			<p>
		<table>
		<input type="hidden" name="status" value="<%=hiddenFieldValue%>" />
		</table>
		</p>
		
		
		
              
			<input type="submit" value="submit">
			
		                                     
            </form>  
            
            
                         
                                                                          </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
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

    <!-- Page-Level Plugin Scripts - Forms -->

    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Forms - Use for reference -->

</body>

</html>

          
                   