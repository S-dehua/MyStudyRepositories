using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj10_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            aAA2ToolStripMenuItem.Checked = true;
            aAA2ToolStripMenuItem.Text = "AAA2菜单项";
            aAA2ToolStripMenuItem.ToolTipText = "功能是插入一个记录";
        }

        private void aAA2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("AAA2");
        }

        private void aAA1ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }             
    }
}
