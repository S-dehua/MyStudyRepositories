using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
namespace proj16_1
{
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void Form6_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string xpath = "/学生表/学生[姓名='李兵']/姓名";
            XmlDocument myxmldoc = new XmlDocument();
            myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
            XmlNode mynode = myxmldoc.SelectSingleNode(xpath);
            mynode.InnerText = "李宾";				//第1种修改方法
            textBox1.Text = mynode.ParentNode.InnerXml;
            mynode.InnerXml = "<姓名>李滨</姓名>";	//第2种修改方法
            textBox2.Text = mynode.ParentNode.InnerXml;
            XmlNode newnode = myxmldoc.CreateNode(XmlNodeType.Element, "姓名", null);
            //第3种修改方法
            newnode.InnerXml = "<姓名>李斌</姓名>";
            mynode.ParentNode.ReplaceChild(newnode, mynode);
            textBox3.Text = newnode.ParentNode.InnerXml;
        }
    }
}
