using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mystr;
        OleDbConnection myconn = new OleDbConnection();
        mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+Server.MapPath("App_Data")+"\\"+ TextBox1.Text;
        myconn.ConnectionString = mystr;
        myconn.Open();
        if (myconn.State == System.Data.ConnectionState.Open)
            Label2.Text = "成功连接到Access数据库";
        else
            Label2.Text = "不能连接到Access数据库";
        myconn.Close();
    }
}