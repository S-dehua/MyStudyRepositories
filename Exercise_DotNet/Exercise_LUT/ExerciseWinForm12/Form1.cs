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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FileStream fs = new FileStream("io文件.txt",FileMode.Create,FileAccess.ReadWrite);
            StreamWriter sw = new StreamWriter(fs);
            string saveValue = textBox1.Text;
            sw.Write(saveValue);
            MessageBox.Show("OK!");
            sw.Close();
            fs.Close();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
        }
    }
}
