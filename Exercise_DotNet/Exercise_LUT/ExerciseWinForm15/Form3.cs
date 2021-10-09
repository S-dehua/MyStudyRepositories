﻿using MySql.Data.MySqlClient;
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
    public partial class Form3 : Form
    {
        static int index = 1;

        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();

            MySqlCommand counter = new MySqlCommand("select count(stuId) count from score", myConnnect);
            MySqlDataReader value = counter.ExecuteReader();
            value.Read();
            textBox4.Text += index+"/"+value["count"].ToString();
            value.Close();


            //============
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();
            result.Read();
            textBox1.Text += result["stuId"].ToString();
            textBox2.Text += result["courseName"].ToString();
            textBox3.Text += result["score"].ToString();

            myConnnect.Close();
            result.Close();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();

            index++;

           

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();

            MySqlCommand counter = new MySqlCommand("select count(stuId) count from score", myConnnect);
            MySqlDataReader value = counter.ExecuteReader();
            value.Read();
            textBox4.Text += index + "/" + value["count"].ToString();
            value.Close();


            //============

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

        private void button4_Click_1(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();

       

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();

            MySqlCommand counter = new MySqlCommand("select count(stuId) count from score", myConnnect);
            MySqlDataReader value = counter.ExecuteReader();
            value.Read();
            textBox4.Text += value["count"].ToString() + "/" + value["count"].ToString();
            value.Close();


            //============

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

        private void button1_Click_1(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();

            MySqlCommand counter = new MySqlCommand("select count(stuId) count from score", myConnnect);
            MySqlDataReader value = counter.ExecuteReader();
            value.Read();
            textBox4.Text += 1 + "/" + value["count"].ToString();
            value.Close();


            //============

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

        private void button2_Click_1(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();

            index--;
            if (index < 0) index = 1;
    
            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();

            MySqlCommand counter = new MySqlCommand("select count(stuId) count from score", myConnnect);
            MySqlDataReader value = counter.ExecuteReader();
            value.Read();
            textBox4.Text += index + "/" + value["count"].ToString();
            value.Close();


            //============

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
    }
}
