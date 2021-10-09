using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj9_2
{
    public partial class SForm1 : Form
    {
        private int mynum;
        private string mystr;
        public SForm1(int num, string str)
        {
            InitializeComponent();
            mynum=num;
            mystr=str;
        }

        private void SForm1_Load(object sender, EventArgs e)
        {
            textBox1.Text = mynum.ToString();   //显示传递过来的数据
            textBox2.Text = mystr;              //显示传递过来的数据
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
