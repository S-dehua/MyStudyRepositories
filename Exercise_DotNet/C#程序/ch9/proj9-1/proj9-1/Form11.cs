using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj9_1
{
    public partial class Form11 : Form
    {
        public Form11()
        {
            InitializeComponent();
        }

        private void Form11_Load(object sender, EventArgs e)
        {
            dateTimePicker1.ShowCheckBox = true;
            dateTimePicker1.ShowUpDown = false;
            textBox1.Text = "";
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            textBox1.Text = dateTimePicker1.Value.ToString("yyyy.MM.dd hh:mm:ss");
            //将dateTimePicker1中的值转换成日期时间字符串并在textBox1中显示
        }
    }
}
