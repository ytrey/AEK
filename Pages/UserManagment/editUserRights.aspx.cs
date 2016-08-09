using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECA.Core;
using System.IO;

namespace ECA.Pages.UserManagment
{
    public partial class editUserRights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
        	dt.Columns.Add("UserName");
        	dt.Columns.Add("UserRole");
            MembershipUserCollection userCollection = Membership.GetAllUsers();
        	foreach (MembershipUser currUser in userCollection)
            {
                if (currUser.UserName.Contains(FilterUsersViewTextBox.Text))
                {
                    bool isAdministrator = Roles.IsUserInRole(currUser.UserName, "Administrator");
                    bool isOperator = Roles.IsUserInRole(currUser.UserName, "Operator");
                    bool isUser = Roles.IsUserInRole(currUser.UserName, "User");
                    string roleName = "Роль не задана!";

                    if (isAdministrator)
                        roleName = "Администратор";
                    else
                        if (isOperator)
                            roleName = "Оператор";
                        else
                            if (isUser)
                                roleName = "Пользователь";

                    if ((isAdministrator && AdministratorsAllow.Checked) ||
                            (isOperator && OperatorsAllow.Checked) ||
                                (isUser && UsersAllow.Checked) ||
                                    (!isAdministrator && !isOperator && !isUser && UndefinedAllow.Checked))
                                        dt.Rows.Add(currUser.UserName, roleName);
                }
        	}
            UsersView.DataSource = dt;
            UsersView.DataBind();
        }
        protected void ButtonSetFilter_Click(object sender, EventArgs e)
        {
        }

        protected virtual void SetAdministratorRole(object sender, GridViewEditEventArgs e)
        {
            string userName = UsersView.Rows[e.NewEditIndex].Cells[0].Text;
            if (Roles.IsUserInRole(userName, "Administrator"))
                Roles.RemoveUserFromRole(userName, "Administrator");
            if (Roles.IsUserInRole(userName, "Operator"))
                Roles.RemoveUserFromRole(userName, "Operator");
            if (Roles.IsUserInRole(userName, "User"))
                Roles.RemoveUserFromRole(userName, "User");

            Roles.AddUserToRole(userName, "Administrator");
            Response.Redirect(Request.Url.AbsolutePath);            
        }

        protected virtual void SetOperatorRole(object sender, GridViewDeleteEventArgs e)
        {
            string userName = UsersView.Rows[e.RowIndex].Cells[0].Text;
            if (Roles.IsUserInRole(userName, "Administrator"))
                Roles.RemoveUserFromRole(userName, "Administrator");
            if (Roles.IsUserInRole(userName, "Operator"))
                Roles.RemoveUserFromRole(userName, "Operator");
            if (Roles.IsUserInRole(userName, "User"))
                Roles.RemoveUserFromRole(userName, "User");

            Roles.AddUserToRole(userName, "Operator");
            Response.Redirect(Request.Url.AbsolutePath);
        }

        protected virtual void SetUserRole(object sender, GridViewSelectEventArgs e)
        {
            string userName = UsersView.Rows[e.NewSelectedIndex].Cells[0].Text;
            if (Roles.IsUserInRole(userName, "Administrator"))
                Roles.RemoveUserFromRole(userName, "Administrator");
            if (Roles.IsUserInRole(userName, "Operator"))
                Roles.RemoveUserFromRole(userName, "Operator");
            if (Roles.IsUserInRole(userName, "User"))
                Roles.RemoveUserFromRole(userName, "User");

            Roles.AddUserToRole(userName, "User");
            Response.Redirect(Request.Url.AbsolutePath);
        }

        protected virtual void DeleteUser(object sender, GridViewUpdateEventArgs e)
        {
            string userName = UsersView.Rows[e.RowIndex].Cells[0].Text;

            Membership.DeleteUser(userName);

            Roles.AddUserToRole(userName, "User");
            Response.Redirect(Request.Url.AbsolutePath);
        }

        protected void OnConvertToExcel(object sender, EventArgs e)
        {

            //ExcelDocCreator temp = new ExcelDocCreator();
            //temp.create(UsersView, Response);
        }
    }
}