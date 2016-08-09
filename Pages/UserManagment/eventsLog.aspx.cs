using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ECA.Core;

namespace ECA.Pages.UserManagment
{
    public partial class eventsLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.ConnectionString = DbConnection.GetSecurityConnectionString();
            
            bool flagUpdateVision = false;
            if (EventsLogViewStartTime.Text.Length == 0)
            {
                EventsLogViewStartTime.Text = DateTime.Now.AddDays(-1).ToString("u").Remove(19);
                flagUpdateVision = true;
            }

            if (EventsLogViewStopTime.Text.Length == 0)
            {
                EventsLogViewStopTime.Text = DateTime.Now.ToString("u").Remove(19);
                flagUpdateVision = true;
            }

            if (flagUpdateVision == true)
            {
                SqlDataSource1.SelectCommand = CreateSelectFilteredSqlQuery();
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            }
        }

        protected void ButtonSetFilter_Click(object sender, EventArgs e)
        {
            SqlDataSource1.ConnectionString = DbConnection.GetSecurityConnectionString();
            SqlDataSource1.SelectCommand = CreateSelectFilteredSqlQuery();
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        }

        protected string CreateSelectFilteredSqlQuery()
        {
            string selectComand = "SELECT * from events WHERE ( userName LIKE '%" + EventsLogViewTextBox.Text + "%' OR " +
                                                               "description LIKE '%" + EventsLogViewTextBox.Text + "%' OR " +
                                                               "comment LIKE '%" + EventsLogViewTextBox.Text + "%' ) ";

            selectComand += " AND ( type = '???' "; // Ничего не отображается
            if (LogingEvents.Checked || DbEvents.Checked || UserManagmentEvents.Checked)
            {
                if (LogingEvents.Checked == true)
                {
                    selectComand += " OR ";
                    selectComand += "type = 'Логирование' ";
                }

                if (DbEvents.Checked == true)
                {
                    selectComand += " OR ";
                    selectComand += "type = 'База данных' ";
                }

                if (UserManagmentEvents.Checked == true)
                {
                    selectComand += " OR ";
                    selectComand += "type = 'Управление пользователями' ";
                }
            }
            selectComand += " ) ";

            selectComand += " AND ( time BETWEEN '" + EventsLogViewStartTime.Text + "' AND '" + EventsLogViewStopTime.Text + "' ) ";

            selectComand += "ORDER BY id DESC";

            return selectComand;
        }

        protected void OnConvertToExcel(object sender, EventArgs e)
        {
            //ExcelDocCreator temp = new ExcelDocCreator();
            //temp.create(EventsLog, Response);
        }
    }
}