using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;			//引用System.IO命名空间，新增
namespace proj12_1
{
    public partial class Form3 : Form
    {
        string path = "D:\\MyTest1.txt";  //文件名
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            button1.Enabled = true;
            button2.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (File.Exists(path))  //存在该文件时删除之
                File.Delete(path);
            else
            {
                //FileStream fs = File.OpenWrite(path);
                FileStream fs = new FileStream(path,FileMode.Create);
                StreamWriter sw = new StreamWriter(fs, Encoding.Default);
                sw.WriteLine(textBox1.Text);
                sw.Close();
                fs.Close();
                button2.Enabled = true;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string mystr = "";
            FileStream fs = File.OpenRead(path);
            // FileStream(path,FileMode.Open)
            StreamReader sr = new StreamReader(fs, Encoding.Default);
            while (sr.Peek() > -1)
                mystr = mystr + sr.ReadLine() + "\r\n";
            sr.Close();
            fs.Close();
            textBox2.Text = mystr;
        }
    }
}
