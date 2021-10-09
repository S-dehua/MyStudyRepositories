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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ExerciseWinForm15
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
            MySqlCommand queryAllValue = new MySqlCommand("select * from score order by stuId", myConnnect);
            MySqlDataReader result = queryAllValue.ExecuteReader();
            textBox1.Text += "学号\t\t姓名\t\t课程名\t\t分数\r\n";
            textBox1.Text += "==========================================\r\n";
            while (result.Read())
            {
                string stuId = result["stuId"].ToString();
                string course = result["courseName"].ToString();
                string name = result["name"].ToString();
                string score = result["score"].ToString();

                textBox1.Text += stuId+"\t\t" + name + "\t\t" + course + "\t\t" + score+"\r\n";
                
            }
            myConnnect.Close();
            result.Close();
        }
    }
}
