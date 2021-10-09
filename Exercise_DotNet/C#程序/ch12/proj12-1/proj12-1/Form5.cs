using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;	//引用System.IO命名空间，新增
namespace proj12_1
{
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string path = "D:\\MyTest2.dat";
			string mystr = "";
			FileStream fs = File.OpenRead(path);
			BinaryReader sb = new BinaryReader(fs, Encoding.Default);
			fs.Seek(0, SeekOrigin.Begin);
			while (sb.PeekChar() > -1)
				mystr = mystr + sb.ReadInt32() + "\t" + 
					sb.ReadString() + "\t" + sb.ReadDouble() + "\r\n";
			sb.Close();
			fs.Close();
			textBox1.Text = mystr;
        }
    }
}
