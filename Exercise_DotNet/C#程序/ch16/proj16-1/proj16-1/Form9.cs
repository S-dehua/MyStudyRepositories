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
using System.Data.OleDb;
namespace proj16_1
{
    public partial class Form9 : Form
    {
        public Form9()
        {
            InitializeComponent();
        }

        private void Form9_Load(object sender, EventArgs e)
        {
           
        }
        private void Print()		//输出XML文档内容
        {
            string fpath = @"D:\C#程序\ch16\stud1.xml";
            XmlTextReader myreader = new XmlTextReader(fpath);
            textBox1.Text = "";
            int n = 1;
            while (myreader.Read())
            {
                if (myreader.NodeType == XmlNodeType.Element)	//元素节点
                {
                    if (myreader.Name == "Table")
                    {
                        textBox1.Text += "\r\n";
                        textBox1.Text += myreader.Name + n.ToString()+ "  ";
                        n++;
                    }
                    else
                        textBox1.Text += myreader.Name + ":";
                    myreader.Read();					        //读下一个节点
                    if (myreader.NodeType == XmlNodeType.Text)
                        textBox1.Text += myreader.Value;
                }
            }
            myreader.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            OleDbDataAdapter myda = new OleDbDataAdapter(mysql, myconn);
            DataSet myds = new DataSet();
            myda.Fill(myds);
            myds.WriteXml(@"D:\C#程序\ch16\stud1.xml");
            myconn.Close();
            Print();
        }
    }
}
