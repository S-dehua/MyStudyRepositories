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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void Form5_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string xpath = "/学生表/学生[姓名='李兵']/姓名";
            XmlDocument myxmldoc = new XmlDocument();
            myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
            XmlNode mynode = myxmldoc.SelectSingleNode(xpath);
            XmlNode newnode = myxmldoc.CreateNode(XmlNodeType.Element, "籍贯", null);
            newnode.InnerText = "北京";
            mynode.ParentNode.InsertAfter(newnode, mynode);
            textBox1.Text = mynode.ParentNode.InnerXml;
        }
    }
}
