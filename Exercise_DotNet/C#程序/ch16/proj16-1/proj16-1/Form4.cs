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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            string fpath = @"D:\C#程序\ch16\stud.xml";
            XmlTextReader myreader = new XmlTextReader(fpath);
            textBox1.Text = "";
            while (myreader.Read())
            {
                if (myreader.NodeType == XmlNodeType.Element)	//元素节点
                {
                    for (int i = 0; i < myreader.Depth; i++)
                        textBox1.Text += "   ";
                    textBox1.Text += myreader.Name + ":";
                    myreader.Read();						//读下一个节点
                    if (myreader.NodeType == XmlNodeType.Text)
                        //该节点有内容，输出内容并换行
                        textBox1.Text += myreader.Value + "\r\n";
                    else		//该节点没有内容，换一行
                        textBox1.Text += "\r\n";
                }
            }
            myreader.Close();
        }
    }
}
