using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm11_3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            HatchBrush myHatchBrush = new HatchBrush(HatchStyle.Vertical, Color.Blue, Color.Green);
            Graphics graphics = this.CreateGraphics();
            graphics.FillEllipse(myHatchBrush, 20, 20, 200, 150);
        }
    }
}
