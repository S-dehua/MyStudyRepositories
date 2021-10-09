using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj17_1
{
    public partial class Form6 : Form
    {
        ArrayList arrList1 = new ArrayList();   //定义学生动态数组
        ArrayList arrList2 = new ArrayList();   //定义学生成绩动态数组
        public Form6()
        {
            InitializeComponent();
        }

        private void Form6_Load(object sender, EventArgs e)
        {
            Student[] st ={new Student(1,"王华","女","汉族","07001"),
                              new Student(3,"李明","男","汉族","07001"),
                              new Student(8,"马棋","男","回族","07002"),
                              new Student(2,"孙丽","女","满族","07002"),
                              new Student(6,"张军","男","汉族","07001")};
            foreach (Student s in st)    //向arrList1中添加5个学生记录
                arrList1.Add(s);
            Score[] sc ={new Score(1,"C语言",80),new Score(3,"C语言",76),
                             new Score(6,"C语言",90),new Score(2,"C语言",70),
                             new Score(8,"C语言",88),new Score(1,"数据结构",83),
                             new Score(3,"数据结构",70),new Score(6,"数据结构",92),
                             new Score(2,"数据结构",52),new Score(8,"数据结构",79)};
            foreach (Score c in sc)  //向arrList2中添加10个学生成绩记录
                arrList2.Add(c);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var mydata = from Score sc in arrList2
                         group sc by sc.课程名 into fs
                         select new
                         {
                             f1 = fs.Key,
                             f2 = fs.Max(sc => sc.分数)
                         };
            textBox1.Text = "课程名\t最高分\r\n";
            foreach (var x in mydata)
                textBox1.Text += x.f1+"\t"+x.f2.ToString()+"\r\n";
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var mydata = from Score sc in arrList2
                         group sc by sc.课程名 into fs
                         select new
                         {
                             f1 = fs.Key,
                             f2 = fs.Average(sc => sc.分数)
                         };
            textBox1.Text = "课程名\t平均分\r\n";
            foreach (var x in mydata)
                textBox1.Text += x.f1 + "\t" + x.f2.ToString() + "\r\n";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var mydata = (from Student st in arrList1
                         select st.班号).Distinct();
            textBox1.Text = "班号\r\n";
            foreach (var x in mydata)
                textBox1.Text += x + "\r\n";
        }        
    }
}
