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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            XmlDocument myxmldoc = new XmlDocument();
            myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
            textBox1.Text = myxmldoc.InnerText;	//InnerText属性获取所有节点的值
        }
    }
}
