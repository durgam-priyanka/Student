<%@ Page Title="" Language="C#" MasterPageFile="~/views/Students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Studentresultmgmt.views.Students.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Mybody" runat="server">
    <style>
        *{
            font-family:Poppins;
        }
    </style>

    <div class="container-fluid">
       <div class="row"> 
           
           <div class="col">
               <center><img src="../../Assets/Images/Student1.jpg" style="width:150px;height:150px" /></center>
           </div>
       </div>
           <div class="col"></div>
       <div class="row">
           <div class="col"></div>
           <div class="col">
  <form>
  <div class="mb-3">
    <label for="UsnTb" class="form-label">Student USN</label>
    <input type="text" class="form-control" id="UsnTb" aria-describedby="UsnHelp" autocomplete="off" required="required" />
    <div id="UsnHelp" class="form-text">Enter Your Student Serial Number To Fetch The Results</div>
  </div>
  
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" />
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
                    <div class="d-grid">
                        <label id="ErrMsg" class="text-danger" runat="server"></label>
                        <asp:Button ID="LoginBtn" runat="server" Text="Submit" class="btn btn-warning btn-block" OnClick="LoginBtn_Click"/>
                    </div> 
</form>
           </div>
           <div class="col"></div>
        </div>
    </div>

</asp:Content>
