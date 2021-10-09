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
    public partial class Form10 : Form
    {
        public Form10()
        {
            InitializeComponent();
        }

        private void Form10_Load(object sender, EventArgs e)
        {
            OleDbConnection myconn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;"+
            @"Data Source=D:\C#程序\ch15\school.accdb");
            OleDbDataAdapter myda = new OleDbDataAdapter("SELECT * FROM student", myconn);
            DataSet myds = new DataSet();
            BindingSource mybs = new BindingSource();
            myconn.Open();
            myda.Fill(myds, "student");
            mybs = new BindingSource(myds, "student");
            //用数据源myds和表student创建新实例mybs
            Binding mybinding1 = new Binding("Text", mybs, "学号");
            textBox1.DataBindings.Add(mybinding1);
            //将student.学号与textBox1文本框绑定起来
            Binding mybinding2 = new Binding("Text", mybs, "姓名");
            textBox2.DataBindings.Add(mybinding2);
            Binding mybinding3 = new Binding("Text", mybs, "性别");
            comboBox1.DataBindings.Add(mybinding3);
            Binding mybinding4 = new Binding("Text", mybs, "民族");
            comboBox2.DataBindings.Add(mybinding4);
            Binding mybinding5 = new Binding("Text", mybs, "班号");
            textBox3.DataBindings.Add(mybinding5);
            bindingNavigator1.Dock = DockStyle.Bottom;
            bindingNavigator1.BindingSource = mybs;
            myconn.Close();
            comboBox1.Items.Add("男");  comboBox1.Items.Add("女");
            comboBox2.Items.Add("汉族");comboBox2.Items.Add("回族");
            comboBox2.Items.Add("满族");comboBox2.Items.Add("土家族");
        }
    }
}
