using System;
using System.Windows.Forms;
using System.Net;
using System.Diagnostics;

namespace proj14_6
{
    public partial class Form1 : Form
    {
        Stopwatch sw = new Stopwatch();
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            DoRun();
            textBox1.Text += "-----执行完毕";
        }
        public void DoRun()
        {
            sw.Start();
            CountCharacters("http://www.microsoft.com");
            CountCharacters("http://www.whu.edu.cn");
            CountTo(1, 6000000);
            CountTo(2, 7000000);
            CountTo(3, 8000000);
            CountTo(4, 9000000);
            //textBox1.Text += "访问网站http://www.microsoft.com的字符数: " + t1.ToString() + "\r\n";
            //textBox1.Text += "访问网站http://www.whu.edu.cn的字符数:    " + t2.ToString() + "\r\n";
        }
        private void CountCharacters(string uristr)
        {
            WebClient wc1 = new WebClient();
            textBox1.Text += string.Format("访问网站: {0}\r\n开始时刻: {1}ms\r\n",uristr,Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            string result = wc1.DownloadString(new Uri(uristr));
            textBox1.Text += string.Format("结束时刻: {0}ms\r\n" ,Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            textBox1.Text += "访问" + uristr + "的字符数: " + result.Length.ToString() + "\r\n";
        }
        private void CountTo(int id, int value)
        {
            textBox1.Text += string.Format("计算{0}开始时刻: {1}ms\r\n", id, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            for (long i = 0; i < value; i++) ;
            textBox1.Text += string.Format("计算{0}结束时刻: {1}ms\r\n", id, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
        }

    }
}
