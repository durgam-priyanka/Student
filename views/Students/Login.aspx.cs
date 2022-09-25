using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentresultmgmt.views.Students
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

        }
        public static string USN, Name, FName, Gender;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //string UsnTb = USN;
            string Query = "select StUsn,StName,FName,StGend from StudentTb1 where StUsn='{0}'";
            Query = string.Format(Query, USN);
            DataTable dt = Con.GetDatas(Query);
            if (dt.Rows.Count == 0)
            {
                //ErrMsg.InnerText = "Invalid USN!!!";
            }
            else
            {
                USN = dt.Rows[0][0].ToString();
                Name = dt.Rows[0][1].ToString();
                FName = dt.Rows[0][2].ToString();
                Gender = dt.Rows[0][3].ToString();
                Response.Redirect("StudentResult.aspx");
            }
        }
    }
}