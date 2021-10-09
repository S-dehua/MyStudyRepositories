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
    public partial class Form10 : Form
    {
        public Form10()
        {
            InitializeComponent();
        }

        private void Form10_Load(object sender, EventArgs e)
        {
            hScrollBar1.Maximum = 100; hScrollBar1.Minimum = 0;
            hScrollBar1.SmallChange = 2; hScrollBar1.LargeChange = 5;
            vScrollBar1.Maximum = 100; vScrollBar1.Minimum = 0;
            vScrollBar1.SmallChange = 2; vScrollBar1.LargeChange = 5;
            hScrollBar1.Value = 0; vScrollBar1.Value = 0;
            textBox1.Text = "0";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt16(textBox1.Text) >= 0 && Convert.ToInt16(textBox1.Text) <= 100)
            {
                hScrollBar1.Value = Convert.ToInt16(textBox1.Text);
                vScrollBar1.Value = Convert.ToInt16(textBox1.Text);
            }
        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            textBox1.Text = hScrollBar1.Value.ToString("d");
            //将hScrollBar1.Value整数将实际宽度转换成字符串在textBox1中显示
            vScrollBar1.Value = hScrollBar1.Value;
        }

        private void vScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            textBox1.Text = vScrollBar1.Value.ToString("d");
            hScrollBar1.Value = vScrollBar1.Value;
        }
    }
}
