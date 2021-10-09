using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm17
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
            textBox1.Clear();

            List<Student> students = new List<Student>
            {
                    new Student{ no=120,name="Terry",scores=new List<int>{ 99,81} },
                    new Student{ no=116,name="Fadi",scores=new List<int>{ 99,86,90,94} },
                    new Student{ no=117,name="Hanying",scores=new List<int>{ 93,92,80,87} },
                    new Student{ no=114,name="Cesar",scores=new List<int>{ 97,89,85,82} },
                    new Student{ no=115,name="Debra",scores=new List<int>{35,72,91,70} },
                    new Student{ no=118,name="Hugo",scores=new List<int>{ 92,90,83,78} },
                    new Student{ no=113,name="Sven",scores=new List<int>{ 88,94,65,91} },
                    new Student{ no=112,name="claire",scores=new List<int>{ 75,84} },
                    new Student{ no=111,name="Svetlana",scores=new List<int>{ 81,60} },
                    new Student{ no=119,name="Lance",scores=new List<int>{ 68,79} },
                    new Student{ no=122,name="Michael",scores=new List<int>{ 94} },
                    new Student{ no=121,name="Eugene",scores=new List<int>{ 96,80,91} }
            };
            var mydata = from stu in students orderby stu.no select stu;
            textBox1.Text = "学号\t\t课程名\t\t分数\r\n";
            double sum;
            foreach (var x in mydata)
            {
                sum = 0;
                for (int i = 0; i < x.scores.Count; i++)
                {
                    sum += x.scores[i];
                }
                textBox1.Text += x.no.ToString() + "\t\t" + x.name + "\t\t"
              + sum/x.scores.Count + "\r\n";
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Clear();

            List<Student> students = new List<Student>
            {
                    new Student{ no=120,name="Terry",scores=new List<int>{ 99,81} },
                    new Student{ no=116,name="Fadi",scores=new List<int>{ 99,86,90,94} },
                    new Student{ no=117,name="Hanying",scores=new List<int>{ 93,92,80,87} },
                    new Student{ no=114,name="Cesar",scores=new List<int>{ 97,89,85,82} },
                    new Student{ no=115,name="Debra",scores=new List<int>{35,72,91,70} },
                    new Student{ no=118,name="Hugo",scores=new List<int>{ 92,90,83,78} },
                    new Student{ no=113,name="Sven",scores=new List<int>{ 88,94,65,91} },
                    new Student{ no=112,name="claire",scores=new List<int>{ 75,84} },
                    new Student{ no=111,name="Svetlana",scores=new List<int>{ 81,60} },
                    new Student{ no=119,name="Lance",scores=new List<int>{ 68,79} },
                    new Student{ no=122,name="Michael",scores=new List<int>{ 94} },
                    new Student{ no=121,name="Eugene",scores=new List<int>{ 96,80,91} }
            };

            var mydata = from stu in students where stu.scores.Sum()/stu.scores.Count>80 orderby stu.no select stu;
            textBox1.Text = "学号\t\t课程名\t\t分数\r\n";
            double sum;
            foreach (var x in mydata)
            {
                sum = 0;
                for (int i = 0; i < x.scores.Count; i++)
                {
                    sum += x.scores[i];
                }
                textBox1.Text += x.no.ToString() + "\t\t" + x.name + "\t\t"
              + sum / x.scores.Count + "\r\n";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Clear();

            List<Student> students = new List<Student>
            {
                    new Student{ no=120,name="Terry",scores=new List<int>{ 99,81} },
                    new Student{ no=116,name="Fadi",scores=new List<int>{ 99,86,90,94} },
                    new Student{ no=117,name="Hanying",scores=new List<int>{ 93,92,80,87} },
                    new Student{ no=114,name="Cesar",scores=new List<int>{ 97,89,85,82} },
                    new Student{ no=115,name="Debra",scores=new List<int>{35,72,91,70} },
                    new Student{ no=118,name="Hugo",scores=new List<int>{ 92,90,83,78} },
                    new Student{ no=113,name="Sven",scores=new List<int>{ 88,94,65,91} },
                    new Student{ no=112,name="claire",scores=new List<int>{ 75,84} },
                    new Student{ no=111,name="Svetlana",scores=new List<int>{ 81,60} },
                    new Student{ no=119,name="Lance",scores=new List<int>{ 68,79} },
                    new Student{ no=122,name="Michael",scores=new List<int>{ 94} },
                    new Student{ no=121,name="Eugene",scores=new List<int>{ 96,80,91} }
            };

            var mydata = from stu in students orderby stu.scores.Count descending select stu;
            textBox1.Text = "学号\t\t课程名\t\t选课数\r\n";
            foreach (var x in mydata)
            {
                textBox1.Text += x.no.ToString() + "\t\t" + x.name + "\t\t"
              + x.scores.Count + "\r\n";
            }
        }
    }
}
