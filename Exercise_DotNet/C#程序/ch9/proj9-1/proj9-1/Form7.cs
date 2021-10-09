using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj9_1
{
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void Form7_Load(object sender, EventArgs e)
        {
            listBox1.Items.Add("清华大学"); listBox1.Items.Add("北京大学");
            listBox1.Items.Add("浙江大学"); listBox1.Items.Add("南京大学");
            listBox1.Items.Add("武汉大学"); listBox1.Items.Add("中国科技大学");
            listBox1.Items.Add("中国人民大学"); listBox1.Items.Add("华中科技大学");
            listBox1.Items.Add("复旦大学");
            enbutton();					//调用enbutton()方法
        }
        private void enbutton()				//自定义方法
        {
            if (listBox1.Items.Count == 0)	//当左列表框为空时右移命令按钮不可用
            { button1.Enabled = false; button2.Enabled = false; }
            else							//当左列表框不为空时右移命令按钮可用
            { button1.Enabled = true; button2.Enabled = true; }
            if (listBox2.Items.Count == 0)	//当右列表框为空时左移命令按钮不可用
            { button3.Enabled = false; button4.Enabled = false; }
            else							//当右列表框不为空时左移命令按钮可用
            { button3.Enabled = true; button4.Enabled = true; }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)		//将左列表框中选中项移到右列表框中
            {
                listBox2.Items.Add(listBox1.SelectedItem);
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
            }
            enbutton();								//调用enbutton()方法
        }

        private void button2_Click(object sender, EventArgs e)
        {
            foreach (object item in listBox1.Items)//将左列表框中所有项移到右列表框中
                listBox2.Items.Add(item);
            listBox1.Items.Clear();
            enbutton();								//调用enbutton()方法
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (listBox2.SelectedIndex >= 0)		//将右列表框中选中项移到左列表框中
            {
                listBox1.Items.Add(listBox2.SelectedItem);
                listBox2.Items.RemoveAt(listBox2.SelectedIndex);
            }
            enbutton();								//调用enbutton()方法
        }

        private void button4_Click(object sender, EventArgs e)
        {
            foreach (object item in listBox2.Items)//将右列表框中所有项移到左列表框中
                listBox1.Items.Add(item);
            listBox2.Items.Clear();
            enbutton();								//调用enbutton()方法
        }
    }
}
