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

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /*string TempSql = "";
        string ConStr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(ConStr);
        SqlCommand cmd = new SqlCommand(TempSql, con);
        using (con)
        {
            con.Open();
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                if (dr1[0].ToString() != "0")
                {
                    newOrder.Visible = true;
                }
                else
                {
                    newOrder.Visible = false;
                }
            }
            dr1.Close();
            con.Close();
        }*/
        Label1.Text = TextBox1.ToString();
        this.SqlDataSource1.SelectCommand = "SELECT name,description from router where name like '%"+TextBox1.ToString()+"%'";
        this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
    }
}