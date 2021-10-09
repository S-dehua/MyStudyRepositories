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
    public partial class Form11 : Form
    {
        public Form11()
        {
            InitializeComponent();
        }

        private void Form11_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            SolidBrush myBrush1 = new SolidBrush(Color.Red); 	//声明实心画笔
            HatchBrush myBrush2 =
                 new HatchBrush(HatchStyle.Vertical, Color.Blue, Color.Green);
            Pen blackPen = new Pen(Color.Black, 3);
            gobj.FillRectangle(myBrush1, 20, 20, 100, 100); 	//绘制并填充矩形
            gobj.DrawRectangle(blackPen, 20, 20, 100, 100);
            //绘制绿色背景色蓝色垂直阴影线矩形
            gobj.FillRectangle(myBrush2, 150, 20, 100, 100);
        }
    }
}
