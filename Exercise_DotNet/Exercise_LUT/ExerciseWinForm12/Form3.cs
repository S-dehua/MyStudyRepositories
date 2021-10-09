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

namespace ExerciseWinForm12
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string[] name = { "小明", "小红", "小华", "小花" };
            int[] score = { 98, 78, 89, 75 };
            FileStream fs = File.Create("二进制文件.bin");
            StreamWriter sw = new StreamWriter(fs);

            foreach (var n in name) 
            {
                sw.Write(n+"\t");
            }
            sw.Write("\r\n");
            foreach(var s in score)
            {
                sw.Write(s+"\t");
            }
            MessageBox.Show("存储成功！");
            sw.Close();
            fs.Close();
        }

    }
}
