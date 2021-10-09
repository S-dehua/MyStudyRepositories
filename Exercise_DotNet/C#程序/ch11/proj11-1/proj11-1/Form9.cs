using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj11_1
{
    public partial class Form9 : Form
    {
        public Form9()
        {
            InitializeComponent();
        }

        private void Form9_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Point p1 = new Point(30, 30);
            Point p2 = new Point(50, 50);
            Point p3 = new Point(80, 90);
            Point p4 = new Point(130, 30);
            gobj.DrawBezier(Pens.Red, p1, p2, p3, p4);
        }
    }
}
