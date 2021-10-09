using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace proj15_1
{
    public partial class Form14 : Form
    {
        DataView mydv = new DataView();
        public Form14()
        {
            InitializeComponent();
        }

        private void Form14_Load(object sender, EventArgs e)
        {
            string mystr;
            OleDbConnection myconn = new OleDbConnection();
            DataSet myds = new DataSet();
            DataSet myds1 = new DataSet();
            DataSet myds2 = new DataSet();
            DataSet myds3 = new DataSet();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            OleDbDataAdapter myda = new OleDbDataAdapter("SELECT * FROM student", myconn);
            myda.Fill(myds, "student");
            mydv = myds.Tables["student"].DefaultView;  //获得DataView对象mydv
            //以下设置ComboBox1的绑定数据
            OleDbDataAdapter myda1 = new OleDbDataAdapter("SELECT distinct 性别 " +
                "FROM student", myconn);
            myda1.Fill(myds1, "student");
            comboBox1.DataSource = myds1.Tables["student"];
            comboBox1.DisplayMember = "性别";
            //以下设置ComboBox2的绑定数据
            OleDbDataAdapter myda2 = new OleDbDataAdapter("SELECT distinct 民族 " +
                "FROM student", myconn);
            myda2.Fill(myds2, "student");
            comboBox2.DataSource = myds2.Tables["student"];
            comboBox2.DisplayMember = "民族";
            //以下设置ComboBox3的绑定数据
            OleDbDataAdapter myda3 = new OleDbDataAdapter("SELECT distinct 班号 " +
                "FROM student", myconn);
            myda3.Fill(myds3, "student");
            comboBox3.DataSource = myds3.Tables["student"];
            comboBox3.DisplayMember = "班号";
            //以下设置DataGridView1的属性
            dgv1.DataSource = mydv;
            dgv1.GridColor = Color.RoyalBlue;
            dgv1.ScrollBars = ScrollBars.Vertical;
            dgv1.CellBorderStyle = 
                DataGridViewCellBorderStyle.Single;
            dgv1.Columns[0].AutoSizeMode =
                DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[1].AutoSizeMode = 
                DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[2].AutoSizeMode = 
                DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[3].AutoSizeMode = 
                DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[4].AutoSizeMode = 
                DataGridViewAutoSizeColumnMode.AllCells;
            myconn.Close();
            comboBox4.Items.Add("学号"); comboBox4.Items.Add("姓名");
            comboBox4.Items.Add("性别"); comboBox4.Items.Add("民族");
            comboBox4.Items.Add("班号");
            radioButton1.Checked = true; radioButton2.Checked = false;
            textBox1.Text = "";   textBox2.Text = "";
            comboBox1.Text = "";  comboBox2.Text = "";
            comboBox3.Text = "";  comboBox4.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string condstr = "";
            //以下根据用户输入求得条件表达式condstr
            if (textBox1.Text != "")
                condstr = "学号 Like '" + textBox1.Text + "%'";
            if (textBox2.Text != "")
                if (condstr != "")
                    condstr = condstr + " AND 姓名 Like '" + textBox2.Text + "%'";
            else
                condstr = "姓名 Like '" + textBox2.Text + "%'";
            if (comboBox1.Text != "")
                if (condstr != "")
                    condstr = condstr + " AND 性别 = '" + comboBox1.Text + "'";
            else
                condstr = "性别 = '" + comboBox1.Text + "'";
            if (comboBox2.Text != "")
                if (condstr != "")
                    condstr = condstr + " AND 民族 = '" + comboBox2.Text + "'";
                else
                    condstr = "民族 = '" + comboBox2.Text + "'";
            if (comboBox3.Text != "")
                if (condstr != "")
                    condstr = condstr + " AND 班号 = '" + comboBox3.Text + "'";
            else
                    condstr = "班号 = '" + comboBox3.Text + "'";
            mydv.RowFilter = condstr;  //过滤DataView中的记录
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";  textBox2.Text = "";
            comboBox1.Text = ""; comboBox2.Text = "";
            comboBox3.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string orderstr = "";
            //以下根据用户输入求得排序条件表达式orderstr
            if (comboBox4.Text != "")
                if (radioButton1.Checked)
                    orderstr = comboBox4.Text + " ASC";
                else
                    orderstr = comboBox4.Text + " DESC";
            mydv.Sort = orderstr;   //对DataView中记录排序
        }
    }
}