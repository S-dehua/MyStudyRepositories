using System;
using System.Data;
using System.Windows.Forms;
using System.Data.OleDb;		//新增引用

namespace proj15_1
{
    public partial class Form9 : Form
    {
        BindingSource mybs = new BindingSource();		//类字段
        public Form9()
        {
            InitializeComponent();
        }    

        private void Form9_Load(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            DataSet myds = new DataSet();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            OleDbDataAdapter myda = new OleDbDataAdapter(mysql, myconn);
            myda.Fill(myds, "student");
            mybs = new BindingSource(myds, "student");
            //用数据源myds和表student创建新实例mybs
            Binding mybinding1 = new Binding("Text", mybs, "学号");
            textBox1.DataBindings.Add(mybinding1);
            //将student.学号与textBox1文本框绑定起来
            Binding mybinding2 = new Binding("Text", mybs, "姓名");
            textBox2.DataBindings.Add(mybinding2);
            Binding mybinding3 = new Binding("Text", mybs, "性别");
            textBox3.DataBindings.Add(mybinding3);
            Binding mybinding4 = new Binding("Text", mybs, "民族");
            textBox4.DataBindings.Add(mybinding4);
            Binding mybinding5 = new Binding("Text", mybs, "班号");
            textBox5.DataBindings.Add(mybinding5);
            myconn.Close();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (mybs.Position != 0)
                mybs.MoveFirst();			//移到第一个记录
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (mybs.Position != 0)
                mybs.MovePrevious();		//移到上一个记录
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (mybs.Position != mybs.Count - 1)
                mybs.MoveNext();			//移到下一个记录
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (mybs.Position != mybs.Count - 1)
                mybs.MoveLast();			//移到最后一个记录
        }
    }
}
