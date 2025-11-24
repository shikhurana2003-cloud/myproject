using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeteriaManagement
{
    public partial class UserAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
    }
}