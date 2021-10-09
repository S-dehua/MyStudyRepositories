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
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void Form7_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Point[] parray = {new Point(30, 30), new Point(50, 50),
		new Point(80, 90), new Point(70, 60),
		new Point(130, 50), new Point(150, 10)};
            gobj.DrawCurve(Pens.Red, parray, 0, 5, 0.2f);
        }
    }
}
