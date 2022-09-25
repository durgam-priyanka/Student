using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentresultmgmt.views.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if(EmailIdTb.Value=="Admin" && PasswordTb.Value=="Password")
            {
                Response.Redirect("Students.aspx");
            }else
            {
                ErrMsg.InnerText = "Invalid Password!!!";
            }
            

        }

    }
}