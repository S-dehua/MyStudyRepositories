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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            FileStream fs = new FileStream("io文件.txt",FileMode.Open,FileAccess.Read);
            StreamReader sr = new StreamReader(fs);
            char[] buf = new char[fs.Length];
            sr.Read(buf);
            textBox1.Text = new string(buf);

            sr.Close();
            fs.Close();

        }
    }
}
