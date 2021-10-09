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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void Form6_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Rectangle rec1 = new Rectangle(20, 20, 100, 70);
            Rectangle rec2 = new Rectangle(130, 30, 140, 70);
            gobj.DrawPie(Pens.Red, rec1, 20, 180);
            gobj.FillPie(Brushes.Blue, rec2, 30, 180);
        }
    }
}
