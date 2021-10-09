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
    public partial class Form11 : Form
    {
        public Form11()
        {
            InitializeComponent();
        }

        private void Form11_Load(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            DataSet myds = new DataSet();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM score";
            OleDbDataAdapter myda = new OleDbDataAdapter(mysql, myconn);
            myda.Fill(myds, "score");
            myconn.Close();
            DataView mydv = new DataView(myds.Tables["score"]);
            mydv.Sort = "学号 ASC,分数 DESC";
            listBox1.Items.Add("学号\t课程名\t\t分数");
            for (int i = 0; i < mydv.Count; i++)
            {               
                listBox1.Items.Add(String.Format("{0}\t{1,-15}\t{2}",
                    mydv[i]["学号"], mydv[i]["课程名"], mydv[i]["分数"]));
            }
        }
    }
}
