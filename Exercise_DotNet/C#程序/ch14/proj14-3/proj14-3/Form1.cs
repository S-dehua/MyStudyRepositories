using System;
using System.Windows.Forms;
using System.Threading;
namespace proj14_3
{
    struct Mystruct				//声明结构类型
    {
        public ProgressBar pb;		//进度条对象
        public int n;				//睡眠时间
    }
    public partial class Form1 : Form
    {
        delegate void deletype(ProgressBar p);	//声明委托类型deletype
        deletype mydele;						//定义委托变量
        private Thread workth1;					//定义工作线程1变量
        private Thread workth2;					//定义工作线程2变量
        Mystruct s;							//定义结构变量
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            mydele = new deletype(setvalue);	//创建委托实例,让mydele指向setvalue方法
            workth1 = new Thread(new ParameterizedThreadStart(fun)); //创建工作线程1
            workth2 = new Thread(new ParameterizedThreadStart(fun)); //创建工作线程2
            s.pb = progressBar1;				//给结构变量s赋值
            s.n = 100;
            workth1.Start(s);					//启动工作线程1
            s.pb = progressBar2;
            s.n = 200;
            workth2.Start(s);					//启动工作线程2
        }
        public void fun(object data)			//定义方法fun
        {
            Mystruct s1 = (Mystruct)data;		//将data参数强制转换为Mystruct类型
            ProgressBar p1 = s1.pb;				//获取当前的进度条控件
            int n = s1.n;
            while (p1.Value < 100)				//循环
            {
                p1.Invoke(mydele, new object[] { p1 });	//执行setvalue方法
                Thread.Sleep(n);				//睡眠或等待指定的时间
            }
        }
        private void setvalue(ProgressBar p)		//进度条值增1的方法
        { p.Value += 1; }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (workth1.IsAlive) workth1.Abort();	//终止工作线程1
            if (workth2.IsAlive) workth2.Abort();	//终止工作线程2
        }
    }
}
