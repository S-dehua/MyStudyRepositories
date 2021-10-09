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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Point[] parray1 = {new Point(20, 20), 		//定义点数组parray1
		new Point(20, 80),new Point(100, 80)};
            gobj.DrawPolygon(Pens.Blue, parray1);
            Point[] parray2 = {new Point(150, 10), new Point(120, 50),
		new Point(150, 90), new Point(200, 90),	//定义点数组parray2
		new Point(230, 50), new Point(200, 10)};
            gobj.FillPolygon(Brushes.Red, parray2);
        }
    }
}
