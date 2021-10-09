namespace proj10_1
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.aAAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aAA1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aAA11ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aAA12ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.aAA2ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bBBToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aAAToolStripMenuItem,
            this.bBBToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(358, 25);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // aAAToolStripMenuItem
            // 
            this.aAAToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aAA1ToolStripMenuItem,
            this.toolStripSeparator1,
            this.aAA2ToolStripMenuItem});
            this.aAAToolStripMenuItem.Name = "aAAToolStripMenuItem";
            this.aAAToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+A";
            this.aAAToolStripMenuItem.Size = new System.Drawing.Size(44, 21);
            this.aAAToolStripMenuItem.Text = "AAA";
            // 
            // aAA1ToolStripMenuItem
            // 
            this.aAA1ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aAA11ToolStripMenuItem,
            this.aAA12ToolStripMenuItem});
            this.aAA1ToolStripMenuItem.Name = "aAA1ToolStripMenuItem";
            this.aAA1ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.aAA1ToolStripMenuItem.Text = "AAA1(&A)";
            this.aAA1ToolStripMenuItem.Click += new System.EventHandler(this.aAA1ToolStripMenuItem_Click);
            // 
            // aAA11ToolStripMenuItem
            // 
            this.aAA11ToolStripMenuItem.Name = "aAA11ToolStripMenuItem";
            this.aAA11ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.aAA11ToolStripMenuItem.Text = "AAA11";
            // 
            // aAA12ToolStripMenuItem
            // 
            this.aAA12ToolStripMenuItem.Name = "aAA12ToolStripMenuItem";
            this.aAA12ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.aAA12ToolStripMenuItem.Text = "AAA12";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(149, 6);
            // 
            // aAA2ToolStripMenuItem
            // 
            this.aAA2ToolStripMenuItem.Name = "aAA2ToolStripMenuItem";
            this.aAA2ToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.A)));
            this.aAA2ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.aAA2ToolStripMenuItem.Text = "AAA2";
            this.aAA2ToolStripMenuItem.Click += new System.EventHandler(this.aAA2ToolStripMenuItem_Click);
            // 
            // bBBToolStripMenuItem
            // 
            this.bBBToolStripMenuItem.Name = "bBBToolStripMenuItem";
            this.bBBToolStripMenuItem.Size = new System.Drawing.Size(44, 21);
            this.bBBToolStripMenuItem.Text = "BBB";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(358, 199);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem aAAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aAA1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aAA11ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aAA12ToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem aAA2ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bBBToolStripMenuItem;
    }
}

