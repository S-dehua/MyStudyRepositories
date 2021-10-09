using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExerciseWinForm15
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Form4_Load(object sender, EventArgs e)
        {
            string constructorString = "server=localhost;User Id=root;password=123456;Database=lut_c#_test";
            MySqlConnection myConnnect = new MySqlConnection(constructorString);
            myConnnect.Open();
            string sql = "select * from score order by stuId";
            MySqlDataAdapter sda = new MySqlDataAdapter(sql, myConnnect);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];

            dataGridView1.Columns[0].HeaderText = "学号";
            dataGridView1.Columns[1].HeaderText = "姓名";
            dataGridView1.Columns[2].HeaderText = "课程名";
            dataGridView1.Columns[3].HeaderText = "分数";

            //while (result.Read())
            //{
            //    string id = result["stuId"].ToString();
            //    string name = result["name"].ToString();
            //    string course = result["courseName"].ToString();
            //    string score = result["score"].ToString();
            //}


            myConnnect.Close();
        }
    }
}
