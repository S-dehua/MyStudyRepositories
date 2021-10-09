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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add("1"); comboBox1.Items.Add("2");
            comboBox1.Items.Add("3"); comboBox1.Items.Add("6");
            comboBox1.Items.Add("8"); comboBox1.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text != "")
            {
                string xpath = "/学生表/学生[学号='" + comboBox1.Text + "']/descendant::*";
                XmlDocument myxmldoc = new XmlDocument();
                myxmldoc.Load(@"D:\C#程序\ch16\stud.xml");
                XmlNodeList mynodes = myxmldoc.SelectNodes(xpath);
                textBox1.Text = "";
                foreach (XmlNode item in mynodes)
                    textBox1.Text = textBox1.Text + item.Name + ":" + item.InnerText + "\r\n";
            }
            else
                MessageBox.Show("必须选择一个学号", "信息提示");
        }
    }
}
