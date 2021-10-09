using System;
using System.Windows.Forms;
using System.Threading;
namespace proj14_3
{
    public partial class Form5 : Form
    {        
        int x;
        Random r = new Random();			//定义随机数对象
        public Form5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int i;
            Thread workth1, workth2;
            for (i = 0; i < 100; i++)		//循环100次
            {
                x = 1;
                workth1 = new Thread(add);	//创建工作线程1
                workth2 = new Thread(sub);	//创建工作线程2
                workth1.Start();			//启动工作线程1
                workth2.Start();			//启动工作线程2
                Thread.Sleep(50);
                workth1.Abort();			//终止工作线程1
                workth2.Abort();			//终止工作线程2
                if (listBox1.FindString(x.ToString()) == -1)
                    listBox1.Items.Add(x);	//当在listBox1中未找到时将x添加进去
            }
            listBox1.Items.Add("执行完毕");
        }
        public void add()					//方法add
        {
            int n;
            Monitor.Enter(this);			//加排它锁
            n = x;						//取出x的值
            n++;
            Thread.Sleep(r.Next(5, 10));	//睡眠5～10ms
            x = n;						//存回到x中
            Monitor.Exit(this);			//释放排它锁
        }
        public void sub()					//方法sub
        {
            int n;
            Monitor.Enter(this);			//加排它锁
            n = x;						//取出x的值
            n--;
            Thread.Sleep(r.Next(5, 10));	//睡眠5～10ms
            x = n;						//存回到x中
            Monitor.Exit(this);			//释放排它锁
        }
    }
}
