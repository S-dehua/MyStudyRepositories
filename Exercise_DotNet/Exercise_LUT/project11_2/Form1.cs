using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project11_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Pen pen = new Pen(Color.Black, 4);

            Point point1 = new Point(100, 200);
            Point point2 = new Point(400, 200);

            Graphics g = this.CreateGraphics();
            g.DrawLine(pen, point1, point2);

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Pen pen = new Pen(Color.Black, 10);

            Graphics graphics = this.CreateGraphics();
            graphics.DrawEllipse(pen,100,100,100,100);

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Graphics graphics = this.CreateGraphics();

            graphics.DrawString("使用DrawString()方法",Font,Brushes.Red,200,200);

        }
    }
}
