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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            gobj.DrawEllipse(Pens.Red, 20, 20, 150, 100);
            gobj.DrawEllipse(Pens.Blue, 50, 40, 60, 60);
            gobj.FillEllipse(Brushes.Green, 180, 40, 100, 60);
        }
    }
}
