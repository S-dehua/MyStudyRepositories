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
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }

        private void Form8_Load(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            DataSet myds = new DataSet();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            OleDbDataAdapter myda = new OleDbDataAdapter(mysql, myconn);
            myda.Fill(myds, "student");			//将student表填充到myds中
            Binding mybinding1 = new Binding("Text", myds, "Student.学号");
            textBox1.DataBindings.Add(mybinding1);
            //或textBox1.DataBindings.Add("Text", myds, "Student.学号");
            Binding mybinding2 = new Binding("Text", myds, "Student.姓名");
            textBox2.DataBindings.Add(mybinding2);
            //或textBox2.DataBindings.Add("Text", myds, "Student.姓名");
            Binding mybinding3 = new Binding("Text", myds, "Student.性别");
            textBox3.DataBindings.Add(mybinding3);
            //或textBox3.DataBindings.Add("Text", myds, "Student.性别");
            Binding mybinding4 = new Binding("Text", myds, "Student.民族");
            textBox4.DataBindings.Add(mybinding4);
            //或textBox4.DataBindings.Add("Text", myds, "Student.民族");
            Binding mybinding5 = new Binding("Text", myds, "Student.班号");
            textBox5.DataBindings.Add(mybinding5);
            //或textBox5.DataBindings.Add("Text", myds, "Student.班号");
            myconn.Close();
        }
    }
}
