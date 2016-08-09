using DevExpress.Web;
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
    public partial class _source: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {

           // ASPxGridView1...OptionsBehavior.Editable = false;
           // a
            //((GridViewCommandColumn)ASPxGridView1.Columns["CommandColumn"]).EditButton.Visible = Convert.ToBoolean(false);
        }

        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            //source_types sr = new source_types(XpoDefault.Session);
            //sr.GetMemberValue("").
            //sr.book_type_id = "2";
            //sr.type_name = "asd";

            e.NewValues["book_id"] = System.Guid.NewGuid().ToString("B");
            //e.NewValues["book_type_id"] = "asdasdasdas";

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ASPxGridViewExporter1.WriteXlsxToResponse();
        }

        protected void ASPxGridView1_CommandButtonInitialize(object sender, ASPxGridViewCommandButtonEventArgs e)
        {
            MembershipUser usr = Membership.GetUser();
            String name=usr.UserName;
            if (usr != null)
                if (Roles.IsUserInRole(name, "User"))
                {
                    e.Visible = false;
                }
        }
        
    }
}