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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void Form6_Load(object sender, EventArgs e)
        {
            treeView1.ImageList = imageList1;	//以下用于产生treeView1控件的数据
            treeView1.Indent = 30;
            treeView1.Nodes.Add("计算机系");
            treeView1.Nodes[0].ImageIndex = 0;
            treeView1.Nodes[0].SelectedImageIndex = 0;
            treeView1.Nodes[0].Nodes.Add("一年级");
            treeView1.Nodes[0].Nodes[0].ImageIndex = 1;
            treeView1.Nodes[0].Nodes[0].SelectedImageIndex = 1;
            treeView1.Nodes[0].Nodes[0].Nodes.Add("0701班");
            treeView1.Nodes[0].Nodes[0].Nodes[0].ImageIndex = 2;
            treeView1.Nodes[0].Nodes[0].Nodes[0].SelectedImageIndex = 2;
            treeView1.Nodes[0].Nodes[0].Nodes.Add("0702班");
            treeView1.Nodes[0].Nodes[0].Nodes[1].ImageIndex = 2;
            treeView1.Nodes[0].Nodes[0].Nodes[1].SelectedImageIndex = 2;
            treeView1.Nodes[0].Nodes.Add("二年级");
            treeView1.Nodes[0].Nodes[1].ImageIndex = 1;
            treeView1.Nodes[0].Nodes[1].SelectedImageIndex = 1;
            treeView1.Nodes[0].Nodes[1].Nodes.Add("0601班");
            treeView1.Nodes[0].Nodes[1].Nodes[0].ImageIndex = 2;
            treeView1.Nodes[0].Nodes[1].Nodes[0].SelectedImageIndex = 2;
            treeView1.Nodes[0].Nodes[1].Nodes.Add("0602班");
            treeView1.Nodes[0].Nodes[1].Nodes[1].ImageIndex = 2;
            treeView1.Nodes[0].Nodes[1].Nodes[1].SelectedImageIndex = 2;
            treeView1.Nodes.Add("电子工程系");
            treeView1.ExpandAll();		//展开所有节点
        }

        private void button1_Click(object sender, EventArgs e)
        {
            TreeNode node = treeView1.SelectedNode;
            listBox1.Items.Clear();
            if (node == null)
                MessageBox.Show("没有选中任何节点", "信息提示", MessageBoxButtons.OK);
            else
            {
                label1.Text = node.Text+"的所有子节点";
                if (node.Nodes.Count == 0)
                    MessageBox.Show("所选节点没有任何子节点", "信息提示",
                        MessageBoxButtons.OK);
                else
                    foreach (TreeNode node1 in node.Nodes)
                        listBox1.Items.Add(node1.Text);
            }
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            TreeNode node = e.Node;
            
            // listBox1.Items.Clear();
            listView1.Items.Clear();
            if (node == null)
                MessageBox.Show("没有选中任何节点", "信息提示", MessageBoxButtons.OK);
            else
            {
                label1.Text = node.Text + "的所有子节点";
                if (node.Nodes.Count == 0)
                    MessageBox.Show("所选节点没有任何子节点", "信息提示",
                        MessageBoxButtons.OK);
                else
                    foreach (TreeNode node1 in node.Nodes)
                        listView1.Items.Add(node1.Text, 0);
                        
                    
            }
        }
    }
}
