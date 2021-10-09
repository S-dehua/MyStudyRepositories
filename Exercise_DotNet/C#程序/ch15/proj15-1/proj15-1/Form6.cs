using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;

namespace proj15_1
{
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            OleDbCommand mycmd = new OleDbCommand();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            OleDbDataReader myreader = mycmd.ExecuteReader();
            listBox1.Items.Add("学号\t姓名\t性别\t民族\t班号");
            listBox1.Items.Add("======================================");
            while (myreader.Read())		//循环读取信息
                listBox1.Items.Add(String.Format("{0}\t{1}\t{2}\t{3}\t{4}",
                    myreader[0].ToString(), myreader[1].ToString(),
                    myreader.GetString(2), myreader.GetString(3),
                    myreader.GetString(4)));
            myconn.Close();
            myreader.Close();
        }

        private void Form6_Load(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }
    }
}
