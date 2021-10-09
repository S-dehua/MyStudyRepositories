using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm11_6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Clear();//重新显示
            double[] sum = new double[2];
            int i = 0;
            FileStream file = new FileStream("save.xml", FileMode.Open, FileAccess.Write, FileShare.Read);
            StreamWriter sw = new StreamWriter(file);

            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            string stuId = "";
            MySqlCommand queryAllValue = new MySqlCommand("select * from school order by id", myConnnect);
            if (textBox2.Text != "")
            {
                stuId = textBox2.Text;
                queryAllValue = new MySqlCommand("select * from school where id ="+stuId+" order by id", myConnnect);
            }
            MySqlDataReader result = queryAllValue.ExecuteReader();
            while (result.Read())
            {
                string id = result["id"].ToString()+"\t";
                string name = result["name"] + "\t";
                string course = result["course"] + "\t";
                string grade = result["grade"].ToString()+"\r\n";
                textBox1.Text += "学号："+id +"姓名："+ name + "课程名：" + course + "分数：" + grade;
                sum[i % 2] = Convert.ToInt32(grade);
                sw.Write("学号："+id+"\t姓名：" + name+"\t课程名：" + course +"\t分数:"+ grade);

                if (i%2==1)
                {
                    textBox1.Text += "学号：" + id + "平均分：" + (sum[0] + sum[1]) / 2 + "\r\n";
                    sw.Write(("平均分："+(sum[0] + sum[1]) / 2));
                }


                i++;
            }
            myConnnect.Close();
            result.Close();
            sw.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
