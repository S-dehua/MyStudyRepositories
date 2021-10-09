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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void Form5_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            gobj.DrawArc(Pens.Red, 30, 30, 140, 70, 30, 180);
            gobj.DrawArc(Pens.Black, 50, 40, 140, 70, 60, 270);
        }
    }
}
