using System;
//using System.Collections.Generic;
//using System.Linq;
using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

public partial class WebForm3 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        RadioButton1.Checked = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string result = "你的选择：<br>";
        if (RadioButton1.Checked)					//判断性别
            result += "&nbsp&nbsp性别：男<br>";				//<br>为屏幕换行
        else
            result += "&nbsp&nbsp性别：女<br>";
        if (RadioButtonList1.SelectedItem != null)	//判断年龄
            result += "&nbsp&nbsp年龄：" + RadioButtonList1.SelectedItem.Text + "<br>";
        if (CheckBoxList1.SelectedIndex > -1)			//读取爱好信息
        {
            result += "&nbsp&nbsp爱好：";
            for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
                if (CheckBoxList1.Items[i].Selected)
                    result += CheckBoxList1.Items[i].Text + "&nbsp;";
            result += "<br>";
        }
        if (CheckBox1.Checked)						//是否为三好生
            result += "&nbsp&nbsp该生是三好生";
        Label1.Text = result;
    }
}