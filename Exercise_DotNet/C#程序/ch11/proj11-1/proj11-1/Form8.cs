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
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }

        private void Form8_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Point[] parray1 = {new Point(20, 20), new Point(50, 50),
		new Point(80, 90), new Point(70, 60),
		new Point(110, 50), new Point(100, 10)};
            Point[] parray2 = {new Point(140, 20), new Point(170, 50),
		new Point(200, 90), new Point(190, 60),
		new Point(230, 50), new Point(220, 10)};
            gobj.DrawClosedCurve(Pens.Red, parray1);
            gobj.FillClosedCurve(Brushes.Blue, parray2);
        }
    }
}
