using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeroKitab
{
    public partial class ErrorLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public static void WriteToEventLog(Exception ex)
        {
            string ErrorMessage = ex.Message;
            System.Diagnostics.StackTrace trace = new System.Diagnostics.StackTrace(ex, true);
            string pagename = trace.GetFrame((trace.FrameCount - 1)).GetFileName();
            string method = trace.GetFrame((trace.FrameCount - 1)).GetMethod().ToString();
            Int32 lineNumber = trace.GetFrame((trace.FrameCount - 1)).GetFileLineNumber();
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pageName", pagename);
            cmd.Parameters.AddWithValue("@method", method);
            cmd.Parameters.AddWithValue("@line_number", lineNumber);
            cmd.Parameters.AddWithValue("@error_msg", ErrorMessage);
            cmd.Parameters.Add("@error_id", SqlDbType.Int);
            cmd.Parameters["@error_id"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}