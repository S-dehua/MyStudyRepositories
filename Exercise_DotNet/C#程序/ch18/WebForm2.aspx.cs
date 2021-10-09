using System;
//using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class WebForm2 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        string mystr;
        OleDbConnection myconn = new OleDbConnection();
        mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data") + "\\school.accdb"; myconn.ConnectionString = mystr;
        OleDbCommand mycmd = new OleDbCommand("SELECT 姓名 FROM student", myconn);
        myconn.Open();
        OleDbDataReader myreader = mycmd.ExecuteReader();
        DropDownList1.DataSource = myreader;
        DropDownList1.DataTextField = "姓名";
        DropDownList1.DataBind();		//上面的绑定在调用该方法时才执行
        OleDbCommand mycmd1 = new OleDbCommand("SELECT distinct 班号 " +
            "FROM student", myconn);
        OleDbDataReader myreader1 = mycmd1.ExecuteReader();
        DropDownList2.DataSource = myreader1;
        DropDownList2.DataTextField = "班号";
        DropDownList2.DataBind();		//上面的绑定在调用该方法时才执行
        myreader.Close();
        myreader1.Close();
        myconn.Close();
        Label3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = "学生'" + DropDownList1.Text + "'属于'" +
            DropDownList2.SelectedValue + "'班";
    }
}