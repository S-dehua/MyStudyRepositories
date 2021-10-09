using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Drawing2D;
namespace proj11_1
{
    public partial class Form12 : Form
    {
        public Form12()
        {
            InitializeComponent();
        }

        private void Form12_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            StringFormat sf1 = new StringFormat();
            StringFormat sf2 = new StringFormat();
            Font f = new Font("隶书", 20, FontStyle.Bold);
            HatchBrush bobj1 =
                new HatchBrush(HatchStyle.Vertical, Color.Blue, Color.Green);
            SolidBrush bobj2 = new SolidBrush(Color.Red);
            sf1.Alignment = StringAlignment.Far;
            sf2.FormatFlags = StringFormatFlags.DirectionVertical;
            gobj.DrawString("中华人民共和国", f, bobj1, 220, 15, sf1);
            gobj.DrawString("北京奥运会", f, bobj2, 100, 50, sf2);
        }
    }
}
