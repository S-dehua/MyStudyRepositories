using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm11_5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by score desc",myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();
            while (result.Read())
            {
                string stuId = result["stuId"].ToString();
                string course = result["courseName"] + "\t";
                string score = result["score"].ToString();
                //listView1.Items.Add(stuId + course + score);
                //listView1.Items.Add(stuId + course + score);
                ListViewItem item = new ListViewItem();
                item = listView1.Items.Add(stuId);
                item.SubItems.Add(course);
                item.SubItems.Add(score);
            }
            myConnnect.Close();
            result.Close();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            listView1.Items.Clear();//每次点击事件后将ListView中的数据清空，重新显示
            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            string order = null;
            if (radioButton1.Checked)
            {
                order = "";
            }
            else
            {
                order = "desc";
            }
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by score "+order, myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();
            while (result.Read())
            {
                string stuId = result["stuId"].ToString();
                string course = result["courseName"] + "\t";
                string score = result["score"].ToString();
                //listView1.Items.Add(stuId + course + score);
                //listView1.Items.Add(stuId + course + score);
                ListViewItem item = new ListViewItem();
                item = listView1.Items.Add(stuId);
                item.SubItems.Add(course);
                item.SubItems.Add(score);
            }
            myConnnect.Close();
            result.Close();
        }
    }
}
