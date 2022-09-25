<%@ Page Language="C#" MasterPageFile="~/views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Studentresultmgmt.views.Admin.Results" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{
            font-family:Poppins;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="StudentCb" class="form-label">Student</label>
                     <asp:DropDownList runat="server" class="form-control" id="StudentCb">
                        
                     </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="AlgoTb" class="form-label">Algorithm</label>
                     <input type="text" class="form-control" id="AlgoTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="CProgTb" class="form-label">C Programming</label>
                     <input type="text" class="form-control" id="CProgTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="JavaTb" class="form-label">Java Programming</label>
                     <input type="text" class="form-control" id="JavaTb" autocomplete="off" runat="server" required="required"/>
                </div>  
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="DBMSTb" class="form-label">DBMS</label>
                     <input type="text" class="form-control" id="DBMSTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="PythonTb" class="form-label">Python Programming</label>
                     <input type="text" class="form-control" id="PythonTb" autocomplete="off" runat="server" required="required"/>
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                     <label for="TotalTb" class="form-label">Total</label>
                     <h5 id="TotalTb" runat="server" class="text-sucess">...</h5>
                </div>
            </div>
            <div class="col-1">
                
            </div>
        </div>

        <div class="row">
            <label id="ErrMsg" class="text-danger" runat="server"></label>
            <center><div><asp:Button Text="Save" id="SaveBtn" class="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click" /></div></center>
        </div>

        <div class="row">
            <h3 class="text-sucess text-center">Results List</h3>
            <asp:GridView ID="ResultGV" class="table" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
