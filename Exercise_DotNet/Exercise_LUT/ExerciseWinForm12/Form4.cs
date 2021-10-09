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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            FileStream fs = File.OpenRead("二进制文件.bin");
            StreamReader sr = new StreamReader(fs);
            string val = sr.ReadLine();
            textBox1.Text = val;
            //val.Remove(0,11);
            //string[] valStr = val.Split("\t");
            //int[] valInt = Array.ConvertAll<string,int>(valStr,s=>int.Parse(s));


            string v = sr.ReadLine();
            textBox1.Text += v;
            string[] valStr = v.Split("\t");
            int[] valInt = new int[valStr.Length];
            for (int i = 0; i < valStr.Length; i++)
            {
                valInt[i] = Convert.ToInt32(valStr[i]);
;            }
            textBox2.Text = valInt.Sum()/valStr.Length+"";
            //textBox2.Text = valInt.Sum()/valInt.Length+"";
            sr.Close();
            fs.Close();
        }
    }
}
