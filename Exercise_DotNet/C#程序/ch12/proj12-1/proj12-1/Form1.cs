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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int i;
            string[] filen;
            string filea;
            listBox1.Items.Clear();
            folderBrowserDialog1.ShowDialog();
            textBox1.Text = folderBrowserDialog1.SelectedPath;
            if (folderBrowserDialog1.SelectedPath == "") return;
            if (!Directory.Exists(folderBrowserDialog1.SelectedPath))
                MessageBox.Show(folderBrowserDialog1.SelectedPath + "文件夹不存在", "信息提示", MessageBoxButtons.OK);
            else
            {
                filen = Directory.GetFiles(folderBrowserDialog1.SelectedPath);
                for (i = 0; i <= filen.Length - 1; i++)
                {
                    filea = String.Format("{0}\t{1}  {2}", filen[i],
                        File.GetCreationTime(filen[i]), fileatt(filen[i]));
                    listBox1.Items.Add(filea);
                }
            }
        }
        private string fileatt(string filename) //获取文件属性
        {
            string fa = "";
            switch (File.GetAttributes(filename))
            {
                case FileAttributes.Archive:
                    fa = "存档";
                    break;
                case FileAttributes.ReadOnly:
                    fa = "只读";
                    break;
                case FileAttributes.Hidden:
                    fa = "隐藏";
                    break;
                case FileAttributes.Archive | FileAttributes.ReadOnly:
                    fa = "存档+只读";
                    break;
                case FileAttributes.Archive | FileAttributes.Hidden:
                    fa = "存档+隐藏";
                    break;
                case FileAttributes.ReadOnly | FileAttributes.Hidden:
                    fa = "只读+隐藏";
                    break;
                case FileAttributes.Archive | FileAttributes.ReadOnly
                    | FileAttributes.Hidden:
                    fa = "存档+只读+隐藏";
                    break;
            }
            return fa;
        }
    }
}
