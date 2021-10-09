using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Exercise_winform_11_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Pen pen = new Pen(Color.Red,3);
            Graphics graphics = this.CreateGraphics();
            graphics.DrawRectangle(pen, new Rectangle(50, 50, 200, 200));
            pen = new Pen(Color.Blue, 3);
            graphics.DrawRectangle(pen, new Rectangle(60, 60, 200, 200));
            pen.Dispose();
            graphics.Dispose();
        }
    }
}
