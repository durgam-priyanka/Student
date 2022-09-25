<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Studentresultmgmt.WebForm1" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Libraries/Bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        #Mrow{
            background-image:url("../Assets/Images/Student.jpeg");
            background-size:cover;
            height:695px;
        }
        .navbar{
            background-color:transparent;
        }
    </style>
</head>
<body>
    <!--<form id="form1" runat="server">
        <div>
        </div>
    </form>-->
    <div class="container-fluid">
        <div class="row" id="Mrow">
            <div class="row" id="NvaRow">
                <div class="col">
                     <nav class="navbar navbar-expand-lg ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">MTU</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
          <a class="nav-link text-light" href="views/Students/login.aspx">Student</a>
        </li>
          <li class="nav-item">
          <a class="nav-link text-light" href="views/Admin/login.aspx">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Logout</a>
        </li> 
      </ul>
      
    </div>
  </div>
</nav>
                </div>
            </div>
            <div class="col">
                <!--<h1>Main page</h1>-->
                <div class="row"></div>
                <div class="row" style="height:300px"></div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col bg-white opacity-75 rounded-3">
                        <h1 class="text-black-50">Student Result Management</h1>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col"><h3>Quality   Discipline   Excelence</h3></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col"><h5>NCAA</h5></div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col"></div>
            <div class="col">
                <div class="row">
                     <div class="col">
                         <h3>Excellence</h3>
                         <p>we are one of the leading institution
                             providing high level education driven
                             by discipline
                         </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <h3>Excellence</h3>
                <p>we are one of the leading institution
                    providing high level education driven
                    by discipline
                </p>
            </div>
            <div class="col">
                <h3>Excellence</h3>
                <p>we are one of the leading institution
                    providing high level education driven
                    by discipline
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col"><h6 class="table-secondary text-center">Student Result Management 2022</h6></div>
        </div>
    </div>
</body>
</html>
