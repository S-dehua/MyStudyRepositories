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
    public partial class Form5 : Form
    {
        public Form5()
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
            mysql = "SELECT AVG(分数) FROM score WHERE 学号=@no";
            mycmd.CommandText = mysql;
            mycmd.Connection = myconn;
            mycmd.Parameters.Add("@no", OleDbType.VarChar, 5).Value = textBox1.Text;
            textBox2.Text=mycmd.ExecuteScalar().ToString();
            if (textBox2.Text=="")            
                MessageBox.Show("不存在该学号的学生", "信息提示", MessageBoxButtons.OK);
            myconn.Close();
        }

        private void Form5_Load(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
        }
    }
}
