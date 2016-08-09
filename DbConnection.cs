using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Odbc;
using System.Data;
using System.Web.Configuration;

namespace ECA.Core
{
    /// <summary>
    /// Методы для работы с соединением.
    /// </summary>
    public static class DbConnection
    {
        /// <summary>
        /// Возвращает строку соединения
        /// </summary>
        /// <param name="userID">Имя пользователя</param>
        /// <param name="pwd">Пароль</param>
        /// <returns>Строка соединения</returns>
        public static string GetConnectionString(string userID, string pwd)
        {
            OdbcConnectionStringBuilder bldr = new OdbcConnectionStringBuilder();
            //bldr["Driver"] = "PostgreSQL UNICODE";
            //bldr["Server"] = "10.247.0.53";
            //bldr["DataBase"] = "ECA_NEW";
            //bldr["Port"] = "5432";
            //bldr["uid"] = userID;
            //bldr["pwd"] = pwd;
            //bldr["SSLMode"] = "Disabled";
            //return bldr.ConnectionString;
            return "Driver={PostgreSQL Unicode(x64)};database=eca_new;server=10.247.0.53;uid=ecaAdmin;pwd=ecaAdmin;";
            bldr["Driver"] = WebConfigurationManager.ConnectionStrings["Driver"].ConnectionString;// "PostgreSQL UNICODE";
            bldr["Server"] = WebConfigurationManager.ConnectionStrings["Server"].ConnectionString;// "10.249.240.101";
            bldr["DataBase"] = WebConfigurationManager.ConnectionStrings["DataBase"].ConnectionString; ;// "ECA_NEW";
            bldr["Port"] = "5432";
            bldr["uid"] = userID;
            bldr["pwd"] = pwd;
            bldr["SSLMode"] = "Disabled";
            return bldr.ConnectionString;
        }

        public static string GetSecurityConnectionString()
        {
            OdbcConnectionStringBuilder bldr = new OdbcConnectionStringBuilder();
            bldr["Driver"] = WebConfigurationManager.ConnectionStrings["Driver"].ConnectionString;// "PostgreSQL UNICODE";
            bldr["Server"] = WebConfigurationManager.ConnectionStrings["Server"].ConnectionString; ;
            bldr["DataBase"] = "KUTA_ECAAudit";
            bldr["Port"] = "5432";
            bldr["uid"] = "postgres";
            bldr["pwd"] = "pwd123";
            bldr["SSLMode"] = "Disabled";
            return bldr.ConnectionString;
        }

        /// <summary>
        /// Формирует таблицу с данными в соответствии с запросом
        /// </summary>
        /// <param name="conn">Соединение с БД</param>
        /// <param name="query">Строка запроса</param>
        /// <returns>Таблица данных</returns>
        public static DataTable GetData(OdbcConnection conn, string query)
        {
            OdbcCommand cmd = new OdbcCommand(query, conn);
            OdbcDataAdapter adptr = new OdbcDataAdapter(cmd);
            DataTable tbl = new DataTable();
            try
            {
                conn.Open();
                adptr.Fill(tbl);
                return tbl;
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Ошибка заполнения таблицы", ex);
            }
            finally
            {
                adptr.Dispose();
                cmd.Dispose();
                conn.Close();
            }
        }

        /// <summary>
        /// Формирует таблицу с данными в соответствии с запросом
        /// </summary>
        /// <param name="connectionString">Строка соединения</param>
        /// <param name="query">Строка запроса</param>
        /// <returns>Таблица данных</returns>
        public static DataTable GetData(string connectionString, string query)
        {
            return GetData(new OdbcConnection(connectionString), query);
        }

        /// <summary>
        /// Формирует массив таблиц с данными в соответствии запросом
        /// </summary>
        /// <param name="conn">Соединение с БД</param>
        /// <param name="queries">строковой массив с запросами</param>
        /// <returns>Массив таблиц данных</returns>
        public static DataTable[] GetData(OdbcConnection conn, string[] queries)
        {
            DataTable[] retVal = new DataTable[queries.Length];
            int ind = -1;
            foreach (string query in queries)
            {
                ind++;
                retVal[ind] = GetData(conn, query);
            }
            return retVal;
        }

        /// <summary>
        /// Формирует массив таблиц с данными в соответствии с запросами
        /// </summary>
        /// <param name="connectionString">Строка соединения</param>
        /// <param name="queries">строковой массив с запросами</param>
        /// <returns>Массив таблиц данных</returns>
        public static DataTable[] GetData(string connectionString, string[] queries)
        {
            return GetData(new OdbcConnection(connectionString), queries);
        }

    }
}