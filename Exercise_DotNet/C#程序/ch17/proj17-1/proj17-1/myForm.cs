using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj17_1
{
    public partial class myForm : Form
    {
        public myForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {         
            int[] numbers = new int[10] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            var numQuery = from num in numbers
                           where num > 3
                           select num;
            textBox1.Text = "个  数："+numQuery.Count().ToString() + "\r\n";
            textBox1.Text += "最大值："+numQuery.Max().ToString() + "\r\n";
            textBox1.Text += "最小值："+numQuery.Min().ToString() + "\r\n";
            textBox1.Text += "平均值："+numQuery.Average().ToString() + "\r\n";
            textBox1.Text += "总  和：" + numQuery.Sum().ToString() + "\r\n";
        }
    }
}
