using System;
using System.Collections.Generic;
using System.DirectoryServices;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECA.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string[] dom_usr = HttpContext.Current.Request.LogonUserIdentity.Name.Split('\\');
           // UserNameText.
            //LoginUser.UserName = HttpContext.Current.Request.LogonUserIdentity.Name;
            //User.Identity.
            //UserName.Text = "";
            //UserNa
            //UserNameText.Text = "";
            //d
            //DirectoryEntry de = new DirectoryEntry("LDAP://" + dom_usr[0], dom_usr[1], tbPassword.Text);
            //DirectorySearcher dsearch = new DirectorySearcher(de);
            //SearchResult results = dsearch.FindOne();

            //String adPath = results.Path;  ////"LDAP://niitnn-tn/DC=niitnn,DC=tn,DC=corp";
            //LdapAuthentication adAuth = new LdapAuthentication(adPath);

            //try
            //{
            //    if (true == adAuth.IsAuthenticated(dom_usr[0], dom_usr[1], tbPassword.Text))
            //    {

        }

        protected void OnLoggingIn(object sender, System.Web.UI.WebControls.LoginCancelEventArgs e)
        {
            // Проверка состояния БД логинов и ролей на содержание критических значений
            // Всегда должно быть 3 роли: - Пользователь (User);
            //                            - Оператор (Operator);
            //                            - Адмнистратор (Administrator);
            // Пользователь Default (если его нет создаётся пользователь с паролем по умолчаню default)
            
            MembershipCreateStatus status;

            if (Membership.FindUsersByName("Default").Count == 0)
                Membership.CreateUser("Default", "Default", "Default", "Are?", "Yes", true, out status);

            if (!Roles.RoleExists("User"))
                Roles.CreateRole("User");

            if (!Roles.RoleExists("Operator"))
                Roles.CreateRole("Operator");

            if (!Roles.RoleExists("Administrator"))
                Roles.CreateRole("Administrator");

            if (!Roles.IsUserInRole("Default", "Administrator"))
                Roles.AddUserToRole("Default", "Administrator");

            ECA.Core.EventsLog.EventsLog temp = new ECA.Core.EventsLog.EventsLog();
            temp.CreateEventInLog(ECA.Core.EventsLog.EventTypes.LogingEvent, "Попытка входа в систему пользователя \"" + LoginUser.UserName + "\"", "");
        }

        protected virtual void OnLoggedIn(object sender, EventArgs e)
        {
            
            ECA.Core.EventsLog.EventsLog temp = new ECA.Core.EventsLog.EventsLog();
            temp.CreateEventInLog(ECA.Core.EventsLog.EventTypes.LogingEvent, "Успешный вход в систему пользователя \"" + LoginUser.UserName + "\"", "");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}
