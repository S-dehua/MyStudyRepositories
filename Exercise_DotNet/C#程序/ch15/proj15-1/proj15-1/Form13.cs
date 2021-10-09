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
    public partial class Form13 : Form
    {
        public Form13()
        {
            InitializeComponent();
        }

        private void Form13_Load(object sender, EventArgs e)
        {
            string mystr, mysql;
            OleDbConnection myconn = new OleDbConnection();
            DataSet myds = new DataSet();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            OleDbDataAdapter myda = new OleDbDataAdapter(mysql, myconn);
            myda.Fill(myds, "student");
            dgv1.DataSource = myds.Tables["student"];
            dgv1.GridColor = Color.RoyalBlue;
            dgv1.ScrollBars = ScrollBars.Vertical;
            dgv1.CellBorderStyle = DataGridViewCellBorderStyle.Single;
            dgv1.ReadOnly = true;		//设置为只读的
            dgv1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgv1.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            myconn.Close();
            label1.Text = "";
        }

        private void dgv1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex < dgv1.RowCount - 1)
                    label1.Text = "选择的学生学号为:" +
                        dgv1.Rows[e.RowIndex].Cells[0].Value;
            }
            catch (Exception ex)
            { MessageBox.Show("需选中一个学生记录", "信息提示"); }
        }
    }
}
