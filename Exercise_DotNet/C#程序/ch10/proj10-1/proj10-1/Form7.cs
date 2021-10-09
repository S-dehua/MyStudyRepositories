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
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void Form7_Load(object sender, EventArgs e)
        {
            ListViewItem itemx = new ListViewItem();
            listView1.View = View.LargeIcon;
            listView1.LargeImageList = imageList1;
            listView1.SmallImageList = imageList2;
            listView1.GridLines = true;
            listView1.Columns.Add("姓名", 70, HorizontalAlignment.Left); //添加第1个列
            listView1.Columns.Add("性别", 60, HorizontalAlignment.Left); //添加第2个列
            listView1.Columns.Add("班号", 60, HorizontalAlignment.Left); //添加第3个列
            itemx = listView1.Items.Add("李华", 0);		//添加第1个ListItem对象
            itemx.SubItems.Add("男");					//添加一个子项目
            itemx.SubItems.Add("06001");				//添加一个子项目
            itemx = listView1.Items.Add("陈斌", 0);		//添加第2个ListItem对象
            itemx.SubItems.Add("男");					//添加一个子项目
            itemx.SubItems.Add("06002");				//添加一个子项目
            itemx = listView1.Items.Add("王丽", 0);		//添加第3个ListItem对象
            itemx.SubItems.Add("女");					//添加一个子项目
            itemx.SubItems.Add("06003");				//添加一个子项目
            //radioButton1.Checked = true;
            itemx = listView1.Items.Add("Mary", 0);		//添加第4个ListItem对象
            itemx.SubItems.Add("女");					//添加一个子项目
            itemx.SubItems.Add("06003");				//添加一个子项目
            //radioButton1.Checked = true;
            itemx = listView1.Items.Add("Smith", 0);	//添加第5个ListItem对象
            itemx.SubItems.Add("男");					//添加一个子项目
            itemx.SubItems.Add("06003");				//添加一个子项目
            radioButton1.Checked = true;
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            listView1.View = View.LargeIcon;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            listView1.View = View.SmallIcon;
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            listView1.View = View.List;
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            listView1.View = View.Details;
        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            listView1.View = View.Tile;
        }
    }
}
