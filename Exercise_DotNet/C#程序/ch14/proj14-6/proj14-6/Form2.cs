using System;
using System.Windows.Forms;
using System.Net;
using System.Threading.Tasks;
using System.Diagnostics;

namespace proj14_6
{
    public partial class Form2 : Form
    {
        Stopwatch sw = new Stopwatch();
        public Form2()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            button1.Enabled = false;
            textBox1.Clear();
            DoRun();
            button1.Enabled = true;
        }
        public void DoRun()
        {
            sw.Start();
            Task t1 = CountCharacters("http://www.microsoft.com");
            Task t2 = CountCharacters("http://www.whu.edu.cn");
            CountTo(1, 6000000);
            CountTo(2, 7000000);
            CountTo(3, 8000000);
            CountTo(4, 9000000);
        }
        private async Task CountCharacters(string uristr)
        {
            WebClient wc1 = new WebClient();
            textBox1.Text += string.Format("访问{0}的开始时刻: {1}ms\r\n", uristr, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            string result = await wc1.DownloadStringTaskAsync(new Uri(uristr));
            textBox1.Text += string.Format("访问{0}的结束时刻: {1}ms\r\n", uristr, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            textBox1.Text += "访问" + uristr + "的字符数: " + result.Length.ToString() + "\r\n";
        }
        private void CountTo(int id, int value)
        {
            textBox1.Text += string.Format("计算{0}的开始时刻: {1}ms\r\n", id, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
            for (int i = 0; i < value; i++) ;
            textBox1.Text += string.Format("计算{0}的结束时刻: {1}ms\r\n", id, Math.Ceiling(sw.Elapsed.TotalMilliseconds).ToString());
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

    }
}
