using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1 {
    public partial class MainMaster : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {

            MembershipUser usr= Membership.GetUser();
            if (usr != null)
            {
                String user = usr.UserName;
                if (!Roles.IsUserInRole(user, "Administrator"))
                {
                    ASPxNavBar2.Visible = false;
                }

                if (Roles.IsUserInRole(user, "User"))
                {
                    ASPxNavBar2.Visible = false;
                    ASPxNavBar3.Visible = false;
                }
            }
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.NavBarItemEventArgs e)
        {

            if (e.Item.Text == "Комплекты документов")
            {
                Response.Redirect("~/Pages/Linear/source.aspx");
            }

            if (e.Item.Text == "Листы")
            {
                Response.Redirect("~/Pages/Linear/sheets.aspx");
            }

            if (e.Item.Text == "Проектные высотные отметки")
            {
                Response.Redirect("~/Pages/Linear/high_point.aspx");
            }

            if (e.Item.Text == "Уклоны")
            {
                Response.Redirect("~/Pages/Linear/bias.aspx");
            }

            if (e.Item.Text == "Углы поворотов")
            {
                Response.Redirect("~/Pages/Linear/turning_angles.aspx");
            }

            if (e.Item.Text == "УЗА")
            {
                Response.Redirect("~/Pages/Linear/uza.aspx");
            }

            if (e.Item.Text == "Вантузы")
            {
                Response.Redirect("~/Pages/Linear/valves.aspx");
            }

            if (e.Item.Text == "Сведения из БД «Дефект»")
            {
                Response.Redirect("~/Pages/VTD/bd_defect.aspx");
            }

            if (e.Item.Text == "Динамика изменений радиусов изгиба")
            {
                Response.Redirect("~/Pages/VTD/dynamic.aspx");
            }

            if (e.Item.Text == "Классификатор грунтов")
            {
                Response.Redirect("~/Pages/Geological/classificator.aspx");
            }

            if (e.Item.Text == "Реестр ЭГП")
            {
                Response.Redirect("~/Pages/Geological/reestregp.aspx");
            }


            if (e.Item.Text == "Загрузить")
            {
                Response.Redirect("~/Pages/Upload/upload.aspx");
            }

        }

        protected void ASPxNavBar2_ItemClick(object source, DevExpress.Web.NavBarItemEventArgs e)
        {

            if (e.Item.Text == "Журнал событий")
            {
                Response.Redirect("~/Pages/UserManagment/eventsLog.aspx");
            }

            if (e.Item.Text == "Редактирование прав пользователей")
            {
                Response.Redirect("~/Pages/UserManagment/editUserRights.aspx");
            }

            if (e.Item.Text == "Добавление пользователей")
            {
                Response.Redirect("~/Pages/UserManagment/addUser.aspx");
            }
        }
    }
}