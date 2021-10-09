using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project12
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        Student student;
        string[] values = new string[10];
        static int index = 0;


        public class Student
        {
            public string stuId;
            public string name;
            public string gender;
            public string age;
            public string grade;
            public Student(string stuId,string name,string gender,string age,string grade)
            {
                this.stuId = stuId;
                this.name = name;
                this.gender = gender;
                this.age = age;
                this.grade = grade;
            }
        }


        private void button1_Click(object sender, EventArgs e)
        {
            string stuId = textBox2.Text;
            string name = textBox3.Text;
            string gender = textBox4.Text;
            string age = textBox5.Text;
            string grade = textBox6.Text;
            Student student = new Student(stuId,name,gender,age,grade);
            SetStudent(student);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "学号" + "\t" + "姓名" + "\t" + "性别" + "\t" + "年龄" + "\t" + "分数" + "\n";
            if (student != null)
            {
                values[index] = student.stuId + "\t" + student.name + "\t" + student.gender + "\t" + student.age + "\t" + student.grade + "\r\n";
            }
            for (int i = 0; i < values.Length; i++)
            {
                if (values[i] != null) 
                textBox1.AppendText(values[i]);
            }
            index++;
        }

        public void SetStudent(Student student)
        {
             this.student = student;
        }

    }
}
