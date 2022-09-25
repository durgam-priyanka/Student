<%@ Page Language="C#" MasterPageFile="~/views/Students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Stresult.aspx.cs" Inherits="Studentresultmgmt.views.Students.Stresult" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        *{
            font-family:Poppins;
        }
    </style>
    <script type="text/javascript">
        function PrintPanel() {
            var PGrid = document.getElementById('<%=MarksCard1.ClientID %>');
            PGrid.border = 0;
            var Pwin = window.open('', 'PrintGrid', 'left=100,top=100,width=1024,height=1200,tollbar=0,scrollbars=1,status=0,resizable=1');
            Pwin.document.write(PGrid.outerHTML);
            Pwin.document.close();
            Pwin.focus();
            Pwin.print();
            Pwin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <center><img src="../../Assets/Images/Student2.png" style="width:100px;height:100px" /></center>
            </div>
            <div class="col-md-7">
                <h3>Student Result Management</h3>
            </div>
            <div class="col-md-2">
                <center><img src="../../Assets/Images/Student2.png" style="width:100px;height:100px" /></center>
            </div>
        </div>

        <div class="row mt-2 mb-4">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table class="table table-bordered table-warning" runat="server" id="MarksCard">
                    <tr>
                        <td><h5>Student Result Management</h5></td>
                        <td><span class="h5">Course Name:</span><span class="h6">Engineering</span></td>
                        <td><span class="h5">Department:</span><span class="h6">MCA</span></td>
                        <td><span class="h5">Student USN:</span><span class="h6" id="USNLb1" runat="server">ST001</span></td>
                    </tr>
                    <tr>
                       <td><span class="h5">Student Name: </span><span class="h6 text-danger" id="StNameLb1" runat="server">Kumar Singh</span></td>
                       <td><span class="h5">Father Name: </span><span class="h6 text-danger" id="FnameLb1" runat="server">Singh</span></td>
                       <td><span class="h5">Student Gender: </span><span class="h6 text-danger" id="GenderLb1" runat="server">Male</span></td>
                       <td class="d-grid"><asp:Button Text="Print" runat="server" class="btn btn-danger btn-block" OnClick="Unnamed1_Click" OnClientClick="PrintPanel()" /></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-1">

            </div>
            <div class="col-md-10">
                <table class="table table-bordered table-primary" id="MarksCard1" runat="server">
                <tr>
                    <th>Courses</th><th>Type</th><th>Full Marks</th><th>Passing Marks</th><th>Obtained Marks</th>
                </tr>
                <tr>
                    <td>Algorithm</td><td>Theory</td><td>30</td><td>15</td><td><span id="AMarks" runat="server">xxx</span></td>
                </tr>
                <tr>
                    <td>C Programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="CMarks" runat="server">xxx</span></td>
                </tr>
                <tr>
                    <td>Java Programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="JavaMarks" runat="server">xxx</span></td>
                </tr>
                <tr>
                    <td>DBMS Programming</td><td>Theory</td><td>30</td><td>15</td><td><span id="DBMSMarks" runat="server">xxx</span></td>
                </tr>
                <tr>
                    <td>Python Programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="PythonMarks" runat="server">xxx</span></td>
                </tr>
                <tr>
                    <td>Total:  <span class="h6 text-primary">150</span></td><td colspan="2">Marks Obtained <span class="h5 text-danger" id="TotalObtainedLb1" runat="server">Obt</span></td><td><span class="h6">Pourcentage</span><span id="PourcentageLb1" class="h6 text-danger" runat="server">%%%</span></td><td><span class="h6 text-primary">Decision  </span><span id="DecisionLb1" runat="server" class="h6 text-primary">Decision</span></td>
                </tr>
            </table>
            </div>
            <div class="col-md-1">

            </div>
            
        </div>
    </div>
</asp:Content>
