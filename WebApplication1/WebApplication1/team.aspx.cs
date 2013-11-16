using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace WebApplication1
{
    public partial class team : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string TempSql = "select teamid from teams where routerid=1";//routerid        
            string ConStr = WebConfigurationManager.ConnectionStrings["wIIConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand(TempSql, con);
            string id = "0";
            using (con)
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                    id = dr[0].ToString();
                dr.Close();
                con.Close();
            }

            if (id == "0")
            {
                TempSql = "select count(*) from teams";
                string ConStr2 = WebConfigurationManager.ConnectionStrings["wIIConnectionString"].ConnectionString;
                SqlConnection con2 = new SqlConnection(ConStr2);
                cmd = new SqlCommand(TempSql, con2);
                using (con2)
                {
                    con2.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                        id = dr[0].ToString();
                    dr.Close();
                    con2.Close();
                }
            }
            string TempSql2 = "insert into teams values (" + id + ",1)";//session[id]
            string ConStr3 = WebConfigurationManager.ConnectionStrings["wIIConnectionString"].ConnectionString;
            SqlConnection con3 = new SqlConnection(ConStr3);
            cmd = new SqlCommand(TempSql2, con3);
            using (con3)
            {
                con3.Open();
                cmd.ExecuteNonQuery();
                con3.Close();
            }
            string TempSql3 = "insert into teaminfo values (" + id + ",1)";//session[id]
            string ConStr4 = WebConfigurationManager.ConnectionStrings["wIIConnectionString"].ConnectionString;
            SqlConnection con4 = new SqlConnection(ConStr4);
            SqlCommand cmd4 = new SqlCommand(TempSql3, con4);
            using (con4)
            {
                con4.Open();
                cmd4.ExecuteNonQuery();
                con4.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView1.Visible = true;
        }
    }
}