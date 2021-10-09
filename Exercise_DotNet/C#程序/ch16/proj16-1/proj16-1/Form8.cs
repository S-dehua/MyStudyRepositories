using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;
namespace proj16_1
{
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }

        private void Form8_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataSet myds = new DataSet();
            myds.ReadXml(@"D:\C#程序\ch16\stud.xml");
            foreach (DataTable table in myds.Tables)
            {
                textBox1.Text = "表名:" + table.TableName + "\r\n";
                foreach (DataRow row in table.Rows)
                {
                    foreach (DataColumn column in table.Columns)
                        textBox1.Text = textBox1.Text + "\t" + row[column];
                    textBox1.Text = textBox1.Text + "\r\n";
                }
            }
        }
    }
}
