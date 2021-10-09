using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proj10_1
{
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            openFileDialog1.FileName = "";
            openFileDialog1.Filter = "RTF File(*.rtf)|*.RTF|TXT FILE(*.txt)|*.txt";
            openFileDialog1.ShowDialog();
            if (openFileDialog1.FileName != "")
                switch (openFileDialog1.FilterIndex)
                {
                    case 1:			//选择的是.rtf类型
                        richTextBox1.LoadFile(openFileDialog1.FileName,
                            RichTextBoxStreamType.RichText);
                        break;
                    case 2:			//选择的是.txt类型
                        richTextBox1.LoadFile(openFileDialog1.FileName,
                            RichTextBoxStreamType.PlainText);
                        break;
                }
            button2.Enabled = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            saveFileDialog1.Filter = "RTF File(*.rtf)|*.RTF|TXT FILE(*.txt)|*.txt";
            if (saveFileDialog1.ShowDialog() ==
                System.Windows.Forms.DialogResult.OK)
                switch (openFileDialog1.FilterIndex)
                {
                    case 1:			//选择的是.rtf类型
                        richTextBox1.SaveFile(saveFileDialog1.FileName,
                            RichTextBoxStreamType.RichText);
                        break;
                    case 2:		//选择的是.txt类型
                        richTextBox1.SaveFile(saveFileDialog1.FileName,
                            RichTextBoxStreamType.PlainText);
                        break;
                }
        }

        private void Form5_Load(object sender, EventArgs e)
        {
            button1.Enabled = true;
            button2.Enabled = false;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (richTextBox1.SelectedText != "")
            {
                colorDialog1.ShowDialog();
                richTextBox1.SelectionColor = colorDialog1.Color;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (richTextBox1.SelectedText != "")
            {
                fontDialog1.ShowDialog();
                richTextBox1.SelectionFont = fontDialog1.Font;
            }
        }
    }
}
