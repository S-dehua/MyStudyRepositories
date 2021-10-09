using System;
using System.Linq;
using System.Data;          //新增引用
using System.Data.OleDb;    //新增引用
public partial class WebForm7 : System.Web.UI.Page
{
    DataSet myds = new DataSet();
    DataView mydv = new DataView();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection myconn = new OleDbConnection();
        myconn.ConnectionString = " Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
            Server.MapPath("App_Data") + "\\school.accdb";
        myconn.Open();
        OleDbDataAdapter myda = new OleDbDataAdapter("SELECT * FROM student", myconn);
        myda.Fill(myds, "student");
        mydv = myds.Tables["student"].DefaultView;
        myconn.Close();
        GridView1.AllowPaging = true;		//允许分页
        GridView1.PageSize = 3;				//每页3个记录
        GridView1.DataSource = mydv;		//数据源为mydv
        GridView1.DataBind();
        GridView1.GridLines = System.Web.UI.WebControls.GridLines.Both;
    }
    protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}