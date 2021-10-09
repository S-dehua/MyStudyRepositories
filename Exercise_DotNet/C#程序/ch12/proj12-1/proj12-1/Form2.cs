using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace proj12_1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string path = "D:\\C#程序\\ch12\\MyTest1.txt";  //文件名
            string mystr = "";
            FileStream fs = File.OpenRead(path);
            StreamReader sr = new StreamReader(fs, Encoding.Default);
            //指定打开文件
            fs.Seek(0, SeekOrigin.Begin); 	//将文件流指针定位在开始位置
            while (sr.Peek() > -1)
                mystr = mystr + sr.ReadLine() + "\r\n";  //\r\n表示回车换行
            sr.Close();
            fs.Close();
            textBox1.Text = mystr;

        }
    }
}
