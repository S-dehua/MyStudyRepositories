using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;


namespace proj12_1
{
    public partial class Form4 : Form
    {
        string path = "D:\\MyTest2.dat";  //文件名
        const int stnum = 4;  				//学生人数常量
        struct Student					//声明结构类型
        {
            public int sno;
            public string sname;
            public double score;
        }
        Student[] st = new Student[stnum];	//定义结构数组

        public Form4()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            st[0].sno = 1; st[0].sname = "王  华"; st[0].score = 90.2;
            st[1].sno = 3; st[1].sname = "陈红兵"; st[1].score = 87.5;
            st[2].sno = 4; st[2].sname = "刘  英"; st[2].score = 72.5;
            st[3].sno = 2; st[3].sname = "张晓华"; st[3].score = 88.5;
            int i;
            if (File.Exists(path))   //存在该文件时删除之
                File.Delete(path);
            FileStream fs = File.OpenWrite(path);
            BinaryWriter sb = new BinaryWriter(fs, Encoding.Default);
            for (i = 0; i < stnum; i++)
            {
                sb.Write(st[i].sno);
                

                sb.Write(st[i].sname);
                sb.Write(st[i].score);
            }
            sb.Close();
            fs.Close();
        }
    }
}
