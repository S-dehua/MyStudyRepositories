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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string path = "D:\\C#程序\\ch12\\MyTest2.dat";
            int n, reclen, currp;
            textBox1.Text = "";
            if (comboBox1.Text != "")
            {
                string mystr;
                FileStream fs = File.OpenRead(path);
                BinaryReader sb = new BinaryReader(fs, Encoding.Default);
                reclen = (int)(fs.Length / 4);	//每个记录的长度
                n = Convert.ToInt16(comboBox1.Text);
                currp = (n - 1) * reclen;		//计算第n个记录的起始位置
                fs.Seek(currp, SeekOrigin.Begin);//将文件流指针定位在指定的位置
                mystr = sb.ReadInt32() + "\t" + sb.ReadString() + "\t"
                    + sb.ReadDouble();
                sb.Close();
                fs.Close();
                textBox1.Text = mystr;
            }
        }

        private void Form6_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add(1); comboBox1.Items.Add(2);
            comboBox1.Items.Add(3); comboBox1.Items.Add(4);
            comboBox1.Text = ""; textBox1.Text = "";
        }
    }
}
