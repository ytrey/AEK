using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using DXWebApplication1.DataModel.KUTA_ECA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1 {
    public partial class _bias: System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

        }

        protected void ASPxGridView1_RowInserting1(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            e.NewValues["main_id"] = System.Guid.NewGuid().ToString("B");

            e.NewValues["is_active"] = 'Y';
            e.NewValues["main_type"] = "{c7aa37cf-6df5-499a-be6a-073e26b7701e}";
            //e.NewValues["div_code"] = 1514;
            //e.NewValues["OptimisticLockField"] = 0;
            //e.NewValues["ObjectType"] = 0;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ASPxGridViewExporter1.WriteXlsxToResponse();
        }

        protected void ASPxGridView1_CommandButtonInitialize(object sender, DevExpress.Web.ASPxGridViewCommandButtonEventArgs e)
        {
            MembershipUser usr = Membership.GetUser();
            String name = usr.UserName;
            if (usr != null)
                if (Roles.IsUserInRole(name, "User"))
                {
                    e.Visible = false;
                }
        }
        
    }
}