using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls;
using Npgsql;

namespace ECA.Core.EventsLog
{
    public enum EventTypes { LogingEvent, DbEvent, UserManagmentEvent };
    public class EventsLog
    {
        public void CreateEventInLog(EventTypes eventType_, string eventDescription_, string eventComment_)
        {
            string eventStr;
            switch (eventType_)
            {
                case EventTypes.LogingEvent:
                    eventStr = "Логирование";
                    break;
                case EventTypes.DbEvent:
                    eventStr = "База данных";
                    break;
                case EventTypes.UserManagmentEvent:
                    eventStr = "Управление пользователями";
                    break;
                default:
                    eventStr = "---";
                    break;
            }

            SqlDataSource dataSource = new SqlDataSource();

            // Заменить строку соединения!!!
            NpgsqlConnection conn = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["KUTAAuditConnectionString"].ConnectionString.ToString());
            NpgsqlCommand cmd = new NpgsqlCommand("INSERT INTO Events (time, userName, type, description, comment) " +
                                                  " Values(@time, @user, @type, @description, @comment)", conn);

            cmd.Parameters.Add("@time", NpgsqlTypes.NpgsqlDbType.Timestamp, 255).Value = DateTime.Now;

            string userName;
            MembershipUser user = Membership.GetUser();
            if (user == null)
                userName = "Анонимный пользователь";
            else
                userName = user.ToString();

            cmd.Parameters.Add("@user", NpgsqlTypes.NpgsqlDbType.Text, 255).Value = userName;
            cmd.Parameters.Add("@type", NpgsqlTypes.NpgsqlDbType.Text, 255).Value = eventStr;
            cmd.Parameters.Add("@description", NpgsqlTypes.NpgsqlDbType.Text, 255).Value = eventDescription_;
            cmd.Parameters.Add("@comment", NpgsqlTypes.NpgsqlDbType.Text, 255).Value = eventComment_;

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (NpgsqlException e)
            {
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
    }
}