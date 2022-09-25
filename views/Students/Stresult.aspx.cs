using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentresultmgmt.views.Students
{
    public partial class Stresult : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            FetchData();
            GetResult();
        }
        private void GetResult()
        {
            string Query = "Select Algo,CProg,Java ,DBMS,Python,Total,Pourcentage,Decision from ResultTb1 where Student='{0}'";
            Query = string.Format(Query, WebForm1.USN);
            AMarks.InnerText = Con.GetDatas(Query).Rows[0]["Algo"].ToString();
            CMarks.InnerText = Con.GetDatas(Query).Rows[0]["CProg"].ToString();
            JavaMarks.InnerText = Con.GetDatas(Query).Rows[0]["Java"].ToString();
            DBMSMarks.InnerText = Con.GetDatas(Query).Rows[0]["DBMS"].ToString();
            PythonMarks.InnerText = Con.GetDatas(Query).Rows[0]["Python"].ToString();
            TotalObtainedLb1.InnerText = Con.GetDatas(Query).Rows[0]["Total"].ToString();
            DecisionLb1.InnerText = Con.GetDatas(Query).Rows[0]["Decision"].ToString();
            PourcentageLb1.InnerText = Con.GetDatas(Query).Rows[0]["Pourcentage"].ToString() + "%";
            AMarks.DataBind();
            CMarks.DataBind();
            JavaMarks.DataBind();
            DBMSMarks.DataBind();
            PythonMarks.DataBind();
            PourcentageLb1.DataBind();
            DecisionLb1.DataBind();
            TotalObtainedLb1.DataBind();
        }
        private void FetchData()
        {
            USNLb1.InnerText = WebForm1.USN;
            StNameLb1.InnerText = WebForm1.Name;
            FnameLb1.InnerText = WebForm1.FName;
            GenderLb1.InnerText = WebForm1.Gender;
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

    }
}