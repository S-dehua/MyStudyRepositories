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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Paint(object sender, PaintEventArgs e)
        {
            Graphics gobj = this.CreateGraphics();
            Rectangle rec1 = new Rectangle(20, 20, 50, 50);	//定义一个矩形rec1
            Rectangle rec2 = new Rectangle(80, 20, 80, 100);	//定义一个矩形rec2
            gobj.DrawRectangle(Pens.Blue, rec1);			//绘制一个空心矩形
            gobj.FillRectangle(Brushes.Red, rec2);		//绘制一个填充矩形
        }
    }
}
