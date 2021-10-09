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
    public partial class Form10 : Form
    {
        public Form10()
        {
            InitializeComponent();
        }

        private void Form10_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj=this.CreateGraphics();		//创建Graphics对象
	Pen redPen = new Pen(Color.Red);			//创建Pen对象redPen
	Pen bluePen = new Pen(Color.Blue, 8);		//创建Pen对象bluePen
	Pen greenPen = new Pen(Color.Green, 3);	//创建Pen对象greenPen
	Point p1 = new Point(40, 30);
	Point p2 = new Point(150, 30);
	redPen.DashStyle=System.Drawing.Drawing2D.DashStyle.Dash;//设置直线样式为虚线
	redPen.Width = 5;						//设置直线宽度
	gobj.DrawLine(redPen, 20, 20, 20, 150);
	bluePen.StartCap = System.Drawing.Drawing2D.LineCap.RoundAnchor; 
		//设置直线起点样式
	bluePen.EndCap = System.Drawing.Drawing2D.LineCap.ArrowAnchor;  
		//设置直线终点样式
	gobj.DrawLine(bluePen, p1, p2);
	gobj.DrawLine(greenPen, 40, 50, 150, 150);
        }
    }
}
