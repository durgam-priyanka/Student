using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentresultmgmt.views.Admin
{
    public partial class Results : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetStudents();
            ShowResults();
        }
        private void GetStudents()
        {
            string Query = "select * from StudentTb1";
            StudentCb.DataTextField = Con.GetDatas(Query).Columns["StUsn"].ToString();
            StudentCb.DataValueField = Con.GetDatas(Query).Columns["StUsn"].ToString();
            StudentCb.DataSource = Con.GetDatas(Query);
            StudentCb.DataBind();
        }
        private void ShowResults()
        {
            string Query = "Select RNum as [Reslut Id],Student,Algo as Algorithm,CProg as [C Programming],Java as [Java Programming],DBMS,Python as [Python Programming],Total,Pourcentage,Decision from ResultTb1";
            ResultGV.DataSource = Con.GetDatas(Query);
            ResultGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = StudentCb.SelectedItem.ToString();
                string Algo = AlgoTb.Value;
                string CProg = CProgTb.Value;
                string Java = JavaTb.Value;
                string DBMS = DBMSTb.Value;
                string Python = PythonTb.Value;
                int Total = Convert.ToInt32(AlgoTb.Value) + Convert.ToInt32(CProgTb.Value) + Convert.ToInt32(JavaTb.Value) + Convert.ToInt32(DBMSTb.Value) + Convert.ToInt32(PythonTb.Value);
                float Pourcentage = (Total / 150) * 100;
                string Decision;
                if (Pourcentage < 50)
                {
                    Decision = "Fail";
                }
                else
                {
                    Decision = "Pass";
                }
                string Query = "insert into ResultTb1 values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                Query = string.Format(Query, Usn, Algo, CProg, Java, DBMS, Python, Total, Pourcentage, Decision);
                Con.SetData(Query);
                ShowResults();
                ErrMsg.InnerText = "Result Added!!!";
                AlgoTb.Value = "";
                JavaTb.Value = "";
                PythonTb.Value = "";
                DBMSTb.Value = "";
                CProgTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

           /* void EditBtn_Click(object sender,EventArgs e)
            {
                try
                {
                    string Usn = StudentCb.SelectedItem.ToString();
                    string Algo = AlgoTb.Value;
                    string CProg = CProgTb.Value;
                    string Java = JavaTb.Value;
                    string DBMS = DBMSTb.Value;
                    string Python = PythonTb.Value;
                    int Total = Convert.ToInt32(AlgoTb.Value) + Convert.ToInt32(CProgTb.Value) + Convert.ToInt32(JavaTb.Value) + Convert.ToInt32(DBMSTb.Value) + Convert.ToInt32(PythonTb.Value);
                    float Pourcentage = (Total / 150) * 100;
                    string Decision;
                    if (Pourcentage < 50)
                    {
                        Decision = "Fail";
                    }
                    else
                    {
                        Decision = "Pass";
                    }
                    string Query = "update ResultTb1 set Algo='{0}',CProg='{1}',Java='{2}',DBMS='{3}',Python='{4}',Total='{5}',Pourcentage='{6}',Decision='{7}' where StUsn='{8}'";
                    Query = string.Format(Query, Usn, Algo, CProg, Java, DBMS, Python, Total, Pourcentage, Decision);
                    Con.SetData(Query);
                    ShowResults();
                    ErrMsg.InnerText = "Result Added!!!";
                    AlgoTb.Value = "";
                    JavaTb.Value = "";
                    PythonTb.Value = "";
                    DBMSTb.Value = "";
                    CProgTb.Value = "";
                }
                catch (Exception Ex)
                {
                    ErrMsg.InnerText = Ex.Message;
                }
            }
            void DeleteBtn_Click(object sender, EventArgs e)
            {
                try
                {
                    string Usn = StudentCb.SelectedItem.ToString();
                    string Query = "delete from ResultTb1 where StUsn='{0}'";
                    Con.SetData(Query);
                    ShowResults();
                    ErrMsg.InnerText = "Student Deleted!!!";
                    AlgoTb.Value = "";
                    PythonTb.Value = "";
                    JavaTb.Value = "";
                    DBMSTb.Value = "";
                    CProgTb.Value = "";
                }
                catch (Exception Ex)
                {
                    ErrMsg.InnerText = Ex.Message;
                }

            }*/
        }
    }
}