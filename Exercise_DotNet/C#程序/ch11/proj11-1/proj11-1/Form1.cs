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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            //Graphics gobj = this.CreateGraphics();
            Graphics gobj = e.Graphics;
            int x, y, w, h;
            x = 10; y = 10; w = 150; h = 100;
            gobj.DrawEllipse(Pens.Red, new Rectangle(x, y, w, h));
            gobj.FillEllipse(new SolidBrush(Color.Yellow), new Rectangle(x, y, w - 20, h - 20));
            gobj.Dispose();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.CreateGraphics().Clear(Color.White);
            this.button2.CreateGraphics().FillRectangle(new TextureBrush(new Bitmap("C:\\Users\\Administrator\\Pictures\\Saved Pictures\\WP_20150413_11_16_44_Pro.jpg")), new RectangleF(0, 0, 40, 60));
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Invalidate();
        }
    }
}
