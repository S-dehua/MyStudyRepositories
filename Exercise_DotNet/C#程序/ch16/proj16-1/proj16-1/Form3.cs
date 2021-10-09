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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            XmlDocument myxmldoc = new XmlDocument();
            myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
            XmlElement myelem = (XmlElement)myxmldoc.DocumentElement.FirstChild;
            textBox1.Text = "Name:" + myelem.Name + "\r\n";
            textBox1.Text += "NodeType:" + myelem.NodeType + "\r\n";
            textBox1.Text += "InnerText:" + myelem.InnerText + "\r\n";
            textBox1.Text += "InnerXml:" + myelem.InnerXml + "\r\n";
            textBox1.Text += "OuterXml:" + myelem.OuterXml + "\r\n";
        }
    }
}
