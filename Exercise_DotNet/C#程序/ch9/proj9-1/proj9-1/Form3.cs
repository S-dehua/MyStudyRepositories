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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (checkBox1.Checked && checkBox3.Checked && !checkBox2.Checked && !checkBox4.Checked)
                MessageBox.Show("您答对了,真的很棒!!!", "信息提示", MessageBoxButtons.OK);
            else
                MessageBox.Show("您答错了,继续努力吧!!!", "信息提示", MessageBoxButtons.OK);

        }
    }
}
