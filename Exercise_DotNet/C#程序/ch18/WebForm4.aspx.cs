using System;
using System.Web;

public partial class WebForm4 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)  //用户输入均有效
        {
            Label1.Text += TextBox1.Text + " ";
            Label1.Text += "的密码为:" + TextBox2.Text + " ";
            Label1.Text += "邮箱为:" + TextBox4.Text;
        }
    }
}