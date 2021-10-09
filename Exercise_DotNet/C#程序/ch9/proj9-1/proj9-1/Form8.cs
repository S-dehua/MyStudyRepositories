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
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }

        private void Form8_Load(object sender, EventArgs e)
        {
            checkedListBox1.Items.Add("中国"); checkedListBox1.Items.Add("美国");
            checkedListBox1.Items.Add("俄罗斯"); checkedListBox1.Items.Add("英国");
            checkedListBox1.Items.Add("法国"); checkedListBox1.CheckOnClick = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (object item in checkedListBox1.CheckedItems)
                listBox1.Items.Add(item);
        }
    }
}
