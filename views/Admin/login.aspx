<%@ Page Language="C#" MasterPageFile="~/views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Studentresultmgmt.views.Admin.Login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .mb-3{
            font-family:Poppins;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" style="height:200px">
        </div>
        <div>
            <center><img src="../../Assets/Images/Student1.jpg" style="width:150px;height:150px"/></center>
        </div>
        <div class="col"></div>
        <div class="col"></div>
        <div class="row">
            <div class="col"></div>
            <div class="col">
                 <form>
                       <div class="mb-3">
                            <label for="EmailIdTb" class="form-label">Admin Email</label>
                            <input type="text" class="form-control" id="EmailIdTb" runat="server" aria-describedby="emailHelp" autocomplete="off" />
                            <div id="emailHelp" class="form-text">Enter Your Email Id</div>
                       </div>
                       <div class="mb-3">
                            <label for="PasswordTb" class="form-label">Admin Password</label>
                            <input type="text" class="form-control" id="PasswordTb" runat="server" aria-describedby="PassHelp" autocomplete="off" />
                            <div id="PassHelp" class="form-text">Enter Your Admin password!!!</div>
                       </div>
                       <div class="d-grid">
                            <label id="ErrMsg" class="text-danger" runat="server"></label>
                            <asp:Button runat="server" Text="Login" id="LoginBtn" class="btn btn-warning btn-block text-white" OnClick="LoginBtn_Click"/>
                       </div>
  
                 </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
</asp:Content>
