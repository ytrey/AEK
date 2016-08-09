using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECA.Pages.UserManagment
{
    public partial class addUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreatedUser(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/UserManagment/editUserRights.aspx");
        }
    }
}