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
    public partial class MForm : Form
    {
        public MForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            TempData.mynum = int.Parse(textBox1.Text);
            //将文本框textBox1的值转换为整数后保存在静态字段mynum中
            TempData.mystr = textBox2.Text;
            //将文本框textBox2的值保存在静态字段mystr中
            Form myform = new SForm();
            myform.ShowDialog();
        }
    }
}
