using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj15_1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            oleDbConnection1.Open();
            if (oleDbConnection1.State == ConnectionState.Open)
                label1.Text = "成功连接到Access数据库";
            else
                label1.Text = "不能连接到Access数据库";
            oleDbConnection1.Close();

        }
    }
}
