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

namespace ExerciseWinForm15
{
    public partial class Form2 : Form
    {
        static int index = 0;

        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId limit 1", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();

            result.Read();
            string id = result["stuId"].ToString();
            string course = result["courseName"].ToString();
            string score = result["score"].ToString();
            textBox1.Text += id;
            textBox2.Text += course;
            textBox3.Text += score;

            myConnnect.Close();
            result.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();
            result.Read();
            textBox1.Text += result["stuId"].ToString();
            textBox2.Text += result["courseName"].ToString();
            textBox3.Text += result["score"].ToString();

            myConnnect.Close();
            result.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId desc limit 1", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();

            result.Read();
            string id = result["stuId"].ToString();
            string course = result["courseName"].ToString();
            string score = result["score"].ToString();
            textBox1.Text += id;
            textBox2.Text += course;
            textBox3.Text += score;

            myConnnect.Close();
            result.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();

            index--;

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId limit " + index + ",1", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();


            if (result.Read())
            {
                string id = result["stuId"].ToString();
                string course = result["courseName"].ToString();
                string score = result["score"].ToString();


                textBox1.Text += id;
                textBox2.Text += course;
                textBox3.Text += score;
            }

            myConnnect.Close();
            result.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();

            index++;

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId limit "+index+",1",myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();


            if (result.Read())
            {
                string id = result["stuId"].ToString();
                string course = result["courseName"].ToString();
                string score = result["score"].ToString();


                textBox1.Text += id;
                textBox2.Text += course;
                textBox3.Text += score;
            }


            myConnnect.Close();
            result.Close();

        }
    }
}
