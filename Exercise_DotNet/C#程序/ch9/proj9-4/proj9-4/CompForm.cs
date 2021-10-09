﻿using System;
using System.Windows.Forms;

namespace proj9_4
{
    public partial class CompForm : Form
    {
        private string s;				//保存用户所按的运算符
        private double x, y;			//保存用户输入的运算数
        private Button btn;				//运算符按钮对象
        public CompForm()
        {
            InitializeComponent();
        }

        private void CompForm_Load(object sender, EventArgs e)
        {
            textBox1.Text = "";
            label1.Text = "";
        }
        private void buttond_Click(object sender, EventArgs e)
        //单击数字命令按钮的事件过程
		{	btn = (Button)sender;
			textBox1.Text = textBox1.Text + btn.Text;
		}
        private void buttonop_Click(object sender, EventArgs e)
        //单击运算符命令按钮的事件过程
        {
            btn = (Button)sender;
            if (btn.Name != "button12")		//用户不是单击“=”命令按钮
            {
                x = Convert.ToDouble(textBox1.Text);
                textBox1.Text = "";
                s = btn.Name;				//保存用户按键
                label1.Text = x.ToString();
            }
            else							//用户单击“=”命令按钮
            {
                if (label1.Text == "")
                    MessageBox.Show("输入不正确!!!",
                        "信息提示", MessageBoxButtons.OK);
                else
                {
                    y = Convert.ToDouble(textBox1.Text);
                    switch (s)
                    {
                        case "button13":		//用户刚前面单击“+”命令按钮
                            textBox1.Text = (x + y).ToString();
                            break;
                        case "button14":		//用户刚前面单击“-”命令按钮
                            textBox1.Text = (x - y).ToString();
                            break;
                        case "button15":		//用户刚前面单击“×”命令按钮
                            textBox1.Text = (x * y).ToString();
                            break;
                        case "button16":		//用户刚前面单击“÷”命令按钮
                            if (y == 0)
                                MessageBox.Show("除零错误!!!",
                                    "信息提示", MessageBoxButtons.OK);
                            else
                                textBox1.Text = (x / y).ToString();
                            break;
                    }
                    label1.Text = textBox1.Text;
                }
            }
        }
    }
}
