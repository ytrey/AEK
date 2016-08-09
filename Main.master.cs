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

            if (e.Item.Text == "��������� ����������")
            {
                Response.Redirect("~/Pages/Linear/source.aspx");
            }

            if (e.Item.Text == "�����")
            {
                Response.Redirect("~/Pages/Linear/sheets.aspx");
            }

            if (e.Item.Text == "��������� �������� �������")
            {
                Response.Redirect("~/Pages/Linear/high_point.aspx");
            }

            if (e.Item.Text == "������")
            {
                Response.Redirect("~/Pages/Linear/bias.aspx");
            }

            if (e.Item.Text == "���� ���������")
            {
                Response.Redirect("~/Pages/Linear/turning_angles.aspx");
            }

            if (e.Item.Text == "���")
            {
                Response.Redirect("~/Pages/Linear/uza.aspx");
            }

            if (e.Item.Text == "�������")
            {
                Response.Redirect("~/Pages/Linear/valves.aspx");
            }

            if (e.Item.Text == "�������� �� �� �������")
            {
                Response.Redirect("~/Pages/VTD/bd_defect.aspx");
            }

            if (e.Item.Text == "�������� ��������� �������� ������")
            {
                Response.Redirect("~/Pages/VTD/dynamic.aspx");
            }

            if (e.Item.Text == "������������� �������")
            {
                Response.Redirect("~/Pages/Geological/classificator.aspx");
            }

            if (e.Item.Text == "������ ���")
            {
                Response.Redirect("~/Pages/Geological/reestregp.aspx");
            }


            if (e.Item.Text == "���������")
            {
                Response.Redirect("~/Pages/Upload/upload.aspx");
            }

        }

        protected void ASPxNavBar2_ItemClick(object source, DevExpress.Web.NavBarItemEventArgs e)
        {

            if (e.Item.Text == "������ �������")
            {
                Response.Redirect("~/Pages/UserManagment/eventsLog.aspx");
            }

            if (e.Item.Text == "�������������� ���� �������������")
            {
                Response.Redirect("~/Pages/UserManagment/editUserRights.aspx");
            }

            if (e.Item.Text == "���������� �������������")
            {
                Response.Redirect("~/Pages/UserManagment/addUser.aspx");
            }
        }
    }
}