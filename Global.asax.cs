using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Security;
    using System.Web.SessionState;
    using System.Security.Principal;
    using DevExpress.Web;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using DXWebApplication1.DataModel.KUTA_ECA;
using System.Web.Configuration;



    namespace DXWebApplication1 {
        public class Global_asax : System.Web.HttpApplication {
            void Application_Start(object sender, EventArgs e) {
                DevExpress.Web.ASPxWebControl.CallbackError += new EventHandler(Application_Error);
            }

            void Application_End(object sender, EventArgs e) {
                // Code that runs on application shutdown
            }

            void Application_Error(object sender, EventArgs e) {
                // Code that runs when an unhandled error occurs
            }

            void Session_Start(object sender, EventArgs e) {
                // Code that runs when a new session is started
                //String str=WebConfigurationManager.ConnectionStrings["SaltConnectionString"].ConnectionString;
                //pgProvider.DDLManager.ValidateVersion("SaltConnectionString", "");
                
                XpoDefault.Session = new Session(XpoDefault.GetDataLayer(WebConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString, AutoCreateOption.DatabaseAndSchema));//ConnectionHelper.GetDataLayer(AutoCreateOption.DatabaseAndSchema));

                Response.Redirect("~/Pages/Linear/source.aspx");


                //Server.Transfer("~/Pages/Linear/source.aspx");
            }

            void Session_End(object sender, EventArgs e) {
                // Code that runs when a session ends. 
                // Note: The Session_End event is raised only when the sessionstate mode
                // is set to InProc in the Web.config file. If session mode is set to StateServer 
                // or SQLServer, the event is not raised.
            }
            void Application_AuthenticateRequest(object sender, EventArgs e)
            {
                //string cookieName = FormsAuthentication.FormsCookieName;
                //HttpCookie authCookie = Context.Request.Cookies[cookieName];

                //if (null == authCookie)
                //{
                //    //There is no authentication cookie.
                //    return;
                //}
                //FormsAuthenticationTicket authTicket = null;
                //try
                //{
                //    authTicket = FormsAuthentication.Decrypt(authCookie.Value);
                //}
                //catch (Exception ex)
                //{
                //    //Write the exception to the Event Log.
                //    return;
                //}
                //if (null == authTicket)
                //{
                //    //Cookie failed to decrypt.
                //    return;
                //}
                ////When the ticket was created, the UserData property was assigned a
                ////pipe-delimited string of group names.
                ////string[] groups = authTicket.UserData.Split(new char[] { '|' });
                ////Create an Identity.
                //GenericIdentity id = new GenericIdentity(authTicket.Name, "LdapAuthentication");
                ////This principal flows throughout the request.
                //GenericPrincipal principal = new GenericPrincipal(id, null);
                //Context.User = principal;
            }


        }
    }