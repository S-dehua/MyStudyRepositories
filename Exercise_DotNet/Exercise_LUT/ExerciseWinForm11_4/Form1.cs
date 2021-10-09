using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm11_4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Graphics graphics = this.CreateGraphics();
            Font font = new Font("黑体",9);
            graphics.DrawString("中华人民共和国",font,Brushes.Red,20,20);
            font = new Font("黑体",18);
            graphics.DrawString("中华人民共和国",font,Brushes.Red,50,50);  
            font = new Font("黑体",27);
            graphics.DrawString("中华人民共和国",font,Brushes.Red,100,100);
        }
    }
}
