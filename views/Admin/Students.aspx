<%@ Page Title="" Language="C#" MasterPageFile="~/views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Studentresultmgmt.views.Admin.Students" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="UsnTb" class="form-label">Student USN</label>
                     <input type="text" class="form-control" id="UsnTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="NameTb" class="form-label">Student Name</label>
                     <input type="text" class="form-control" id="NameTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="FNameTb" class="form-label">Father's Name</label>
                     <input type="text" class="form-control" id="FNameTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="DOBTb" class="form-label">Date Of Birth</label>
                     <input type="date" class="form-control" id="DOBTb" autocomplete="off" runat="server"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="AddressTb" class="form-label">Student Address</label>
                     <input type="text" class="form-control" id="AddressTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="PhoneTb" class="form-label">Student Phone</label>
                     <input type="text" class="form-control" id="PhoneTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="GenderCb" class="form-label">Gender</label>
                     <asp:DropDownList runat="server" class="form-control" id="GenderCb">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                </div>
            </div>
            <div class="col-1">
                
            </div>
        </div>

        <div class="row">
            <label id="ErrMsg" class="text-danger text-center" runat="server"></label>
            <div class="col d-grid"><asp:Button Text="Edit" id="EditBtn" class="btn btn-success btn-block" runat="server" OnClick="EditBtn_Click"/></div>
            <div class="col d-grid"><asp:Button Text="Save" id="SaveBtn" class="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click"/></div>
            <div class="col d-grid"><asp:Button Text="Delete" id="DeleteBtn" class="btn btn-danger btn-block" runat="server" OnClick="DeleteBtn_Click"/></div>
        </div>

        <div class="row">
            <h3 class="text-sucess text-center">Student List</h3>
            <asp:GridView ID="StudentGV" class="table" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="StudentGV_SelectedIndexChanged">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
