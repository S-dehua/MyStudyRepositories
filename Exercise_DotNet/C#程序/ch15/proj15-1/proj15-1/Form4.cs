using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;		//新增引用

namespace proj15_1
{
    public partial class Form4 : Form
    {
        OleDbCommand mycmd = new OleDbCommand();
        OleDbConnection myconn = new OleDbConnection();
        public Form4()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mysql;
            mysql = "UPDATE score SET 分数=分数+5";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            mycmd.ExecuteNonQuery();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string mysql;
            mysql = "UPDATE score SET 分数=分数-5";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            mycmd.ExecuteNonQuery();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            string mystr;
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
        }

        private void Form4_FormClosing(object sender, FormClosingEventArgs e)
        {
            myconn.Close();
        }
    }
}
