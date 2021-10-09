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

namespace proj15_1
{
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataSet myds = new DataSet();
            DataTable mydt = new DataTable("course");
            myds.Tables.Add(mydt);
            DataColumn mycol1 = mydt.Columns.Add("ID", Type.GetType("System.String"));
            mydt.Columns.Add("cName", Type.GetType("System.String"));
            mydt.Columns.Add("cBook", Type.GetType("System.String"));
            DataRow myrow1 = mydt.NewRow();
            myrow1["ID"] = "101";
            myrow1["cName"] = "C语言";
            myrow1["cBook"] = "C语言教程";
            myds.Tables[0].Rows.Add(myrow1);
            DataRow myrow2 = mydt.NewRow();
            myrow2["ID"] = "120";
            myrow2["cName"] = "数据结构";
            myrow2["cBook"] = "数据结构教程";
            myds.Tables[0].Rows.Add(myrow2);
            dataGridView1.DataSource = myds.Tables["course"];
            //或dataGridView1.DataSource = mydt;
        }
    }
}
