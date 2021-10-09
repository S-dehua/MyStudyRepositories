using System;
using System.Windows.Forms;
using System.Threading;
namespace proj14_3
{
    public partial class Form6 : Form
    {
        int x = 0, sum = 0;
        Random r = new Random();
        public Form6()
        { InitializeComponent(); }
        private void button1_Click(object sender, EventArgs e)
        {
            Thread workth1 = new Thread(put);	//创建工作线程1
            Thread workth2 = new Thread(get); 	//创建工作线程2
            workth1.Start();					//启动工作线程1
            workth2.Start();					//启动工作线程2
            Thread.Sleep(600);
            workth1.Abort();					//终止工作线程1
            workth2.Abort();					//终止工作线程2
            textBox1.Text = "消费总数=" + sum.ToString();
        }
        public void put()						//生产者
        {
            int k;
            for (k = 1; k <= 4; k++)
            {
                x = k;
                Thread.Sleep(r.Next(20, 30));	//睡眠20-30ms
            }
        }
        public void get()						//消费者
        {
            int k;
            for (k = 1; k <= 4; k++)
            {
                sum += x;
                Thread.Sleep(r.Next(20, 30));	//睡眠20-30ms
            }
        }
    }
}
