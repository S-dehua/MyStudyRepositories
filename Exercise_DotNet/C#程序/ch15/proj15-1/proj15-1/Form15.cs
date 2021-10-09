using System;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;
using System.Drawing;

namespace proj15_1
{
    public partial class Form15 : Form
    {
        OleDbDataAdapter myda = new OleDbDataAdapter();
        DataSet myds = new DataSet();
        public Form15()
        {
            InitializeComponent();
        }

        private void Form15_Load(object sender, EventArgs e)
        {
            string mystr,mysql;
            OleDbConnection myconn = new OleDbConnection();
            mystr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\C#程序\ch15\school.accdb";
            myconn.ConnectionString = mystr;
            myconn.Open();
            mysql = "SELECT * FROM student";
            myda = new OleDbDataAdapter(mysql, myconn);
            myda.Fill(myds, "student");
            dgv1.DataSource = myds.Tables["student"];
            dgv1.ColumnHeadersDefaultCellStyle.Font = 
                new Font("隶书", 11);  //设置标题字体
            dgv1.AlternatingRowsDefaultCellStyle.ForeColor = Color.Red;
            dgv1.GridColor = Color.RoyalBlue;
            dgv1.ScrollBars = ScrollBars.Vertical;
            dgv1.CellBorderStyle = DataGridViewCellBorderStyle.Single;
            dgv1.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            dgv1.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OleDbCommandBuilder mycmdbuilder = new OleDbCommandBuilder(myda);
            //获取对应的修改命令
            if (myds.HasChanges())    //如果有数据改动
            {
                try
                {
                    myda.Update(myds, "student");   //更新数据源
                }
                catch(Exception ex)
                {
                    MessageBox.Show("数据修改不正确，如学号重复等","信息提示");
                }
            }
        }
    }
}