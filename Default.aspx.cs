using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         this.SqlDataSource1.SelectCommand = "SELECT name,description from router where name ='"+TextBox1.ToString()+"'";
         this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
         GridView1.DataSourceID = "SqlDataSource1";
         GridView1.DataBind();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        switch (e.Row.RowType)
        {
            case DataControlRowType.DataRow:
                //放置鼠标变色
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#999999'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
                e.Row.Attributes.Add("style", "cursor:pointer");
                #region
                PostBackOptions myPostBackOptions = new PostBackOptions(this);
                myPostBackOptions.AutoPostBack = false;
                myPostBackOptions.PerformValidation = false;
                myPostBackOptions.RequiresJavaScriptProtocol = true; //加入javascript:头
                String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as GridView, "Select$" + e.Row.RowIndex.ToString());
                e.Row.Attributes.Add("onclick", evt);
                #endregion
                break;
        }
    }
}