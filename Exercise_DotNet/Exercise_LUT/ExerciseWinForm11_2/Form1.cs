using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm11_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Graphics graphics = this.CreateGraphics();
            graphics.FillPie(new SolidBrush(Color.Red),new Rectangle(20,20,200,200),50,100);
            graphics.FillPie(new SolidBrush(Color.Blue),new Rectangle(20,20,200,200),150,260);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
       
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Graphics graphics = this.CreateGraphics();
            graphics.FillPie(new SolidBrush(Color.Red), new Rectangle(400, 40, 200, 150), 50, 100);
            graphics.FillPie(new SolidBrush(Color.Blue), new Rectangle(400, 40, 200, 150), 150, 260);
        }
    }
}
