using System;
using System.Windows.Forms;
using System.Collections;               //新增
using System.IO;						//新增
using System.Runtime.Serialization;		//新增使用序列化引用的命名空间
using System.Runtime.Serialization.Formatters.Binary;
//新增使用序列化引用的命名空间

namespace proj12_1
{
    public partial class Form7 : Form
    {
        [Serializable]
        public class Student
        {
            private int no;		    //学号
            private string name;	//姓名
            public int pno
            {
                get
                {
                    return no;
                }
                set
                {
                    no = value;
                }
            }
            public string pname
            {
                get
                {
                    return name;
                }
                set
                {
                    name = value;
                }
            }
        }
        public Form7()
        {
            InitializeComponent();
        }
        private void Form7_Load(object sender, EventArgs e)
        {
            button1.Enabled = true;
            button2.Enabled = false;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            ArrayList st = new ArrayList();
           
            Student s1 = new Student();
            s1.pno = 1; s1.pname = "王华";
            Student s2 = new Student();
            s2.pno = 8; s2.pname = "李明";
            st.Add(s1);
            st.Add(s2);
            FileStream f = new FileStream(@"D:\student.dat",
                FileMode.Create);
            BinaryFormatter formatter = new BinaryFormatter();
            formatter.Serialize(f, st);
            f.Close();
            button1.Enabled = false;
            button2.Enabled = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ArrayList st = new ArrayList();
            FileStream f = new FileStream(@"D:\student.dat", FileMode.Open);
           
            BinaryFormatter formatter = new BinaryFormatter();
            st = (ArrayList)formatter.Deserialize(f);
            f.Close();
            textBox1.Text = "学号\t姓名" + "\r\n";
            foreach (Student s in st)
                textBox1.Text = textBox1.Text +
                    string.Format("{0}\t{1}", s.pno, s.pname) + "\r\n";
        }       
    }
}

