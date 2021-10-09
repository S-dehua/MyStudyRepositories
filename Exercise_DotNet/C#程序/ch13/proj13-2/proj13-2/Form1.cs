using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj13_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            int i, j;
            bool flag;
            string mystr = "";
            for (i = 10; i <= 20; i++)
            {
                flag = true;
                for (j = 3; j <= Math.Sqrt(i); j++)
                    if (i % j == 0)
                    {
                        flag = false;
                        break;
                    }
                if (flag == true) mystr = mystr + i.ToString() + " ";
            }
            textBox1.Text = mystr;
        }
    }
}
