using System;
using System.Windows.Forms;
using System.Threading;
namespace proj14_3
{
    public partial class Form7 : Form
    {
        int x = 0, sum = 0;
        Random r = new Random();
        bool mark = false;
        public Form7()
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
                Monitor.Enter(this);			//加排它锁
                if (mark)						//若mark为true,不能放数据,本线程等待
                    Monitor.Wait(this);
                mark = !mark;					//将mark由false改为true
                x = k;						//放数据
                Thread.Sleep(r.Next(20, 30));	//睡眠20-30ms
                Monitor.Pulse(this);			//激活消费者线程
                Monitor.Exit(this);			//释放排它锁
            }
        }
        public void get()						//消费者
        {
            int k;
            for (k = 1; k <= 4; k++)
            {
                Monitor.Enter(this);			//加排它锁
                if (!mark)					//若mark为false,不能取数据,本线程等待
                    Monitor.Wait(this);
                mark = !mark;					//将mark由true改为false
                sum += x;						//累加数
                Thread.Sleep(r.Next(20, 30));	//睡眠20-30ms
                Monitor.Pulse(this);			//激活生产者线程
                Monitor.Exit(this);			//释放排它锁
            }
        }
    }
}
