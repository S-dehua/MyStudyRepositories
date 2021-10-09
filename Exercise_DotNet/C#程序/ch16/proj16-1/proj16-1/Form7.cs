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
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void Form7_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string xpath = "/学生表/学生[姓名='李兵']/姓名";
            XmlDocument myxmldoc = new XmlDocument();
            myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
            XmlNode mynode = myxmldoc.SelectSingleNode(xpath);
            mynode.ParentNode.RemoveChild(mynode);
            XmlNode mynode1 = myxmldoc.SelectSingleNode("/学生表/学生[学号='3']");
            textBox1.Text = mynode1.InnerXml;
        }
    }
}
