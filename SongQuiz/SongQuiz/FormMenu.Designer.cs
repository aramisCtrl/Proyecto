/*
 * Created by SharpDevelop.
 * User: Fiski
 * Date: 07/11/2023
 * Time: 8:55
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace SongQuiz
{
	partial class FormMenu
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		
		/// <summary>
		/// Disposes resources used by the form.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing) {
				if (components != null) {
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		/// <summary>
		/// This method is required for Windows Forms designer support.
		/// Do not change the method contents inside the source code editor. The Forms designer might
		/// not be able to load this method if it was changed manually.
		/// </summary>
		private void InitializeComponent()
		{
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMenu));
			this.panel1 = new System.Windows.Forms.Panel();
			this.pic_logo = new System.Windows.Forms.PictureBox();
			this.pnl_botones = new System.Windows.Forms.Panel();
			this.button11 = new System.Windows.Forms.Button();
			this.button10 = new System.Windows.Forms.Button();
			this.button9 = new System.Windows.Forms.Button();
			this.button8 = new System.Windows.Forms.Button();
			this.button7 = new System.Windows.Forms.Button();
			this.button1 = new System.Windows.Forms.Button();
			this.btn_mix = new System.Windows.Forms.Button();
			this.btn_kpop = new System.Windows.Forms.Button();
			this.btn_latino = new System.Windows.Forms.Button();
			this.btn_rock = new System.Windows.Forms.Button();
			this.btn_rap = new System.Windows.Forms.Button();
			this.btn_pop = new System.Windows.Forms.Button();
			this.button2 = new System.Windows.Forms.Button();
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).BeginInit();
			this.pnl_botones.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.Transparent;
			this.panel1.Controls.Add(this.button2);
			this.panel1.Controls.Add(this.pic_logo);
			this.panel1.Cursor = System.Windows.Forms.Cursors.Arrow;
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1122, 191);
			this.panel1.TabIndex = 1;
			// 
			// pic_logo
			// 
			this.pic_logo.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.pic_logo.BackColor = System.Drawing.Color.Transparent;
			this.pic_logo.Cursor = System.Windows.Forms.Cursors.Default;
			this.pic_logo.Image = ((System.Drawing.Image)(resources.GetObject("pic_logo.Image")));
			this.pic_logo.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.pic_logo.Location = new System.Drawing.Point(0, 0);
			this.pic_logo.Margin = new System.Windows.Forms.Padding(3, 10, 3, 3);
			this.pic_logo.Name = "pic_logo";
			this.pic_logo.Size = new System.Drawing.Size(1120, 191);
			this.pic_logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_logo.TabIndex = 0;
			this.pic_logo.TabStop = false;
			// 
			// pnl_botones
			// 
			this.pnl_botones.BackColor = System.Drawing.Color.Transparent;
			this.pnl_botones.Controls.Add(this.button11);
			this.pnl_botones.Controls.Add(this.button10);
			this.pnl_botones.Controls.Add(this.button9);
			this.pnl_botones.Controls.Add(this.button8);
			this.pnl_botones.Controls.Add(this.button7);
			this.pnl_botones.Controls.Add(this.button1);
			this.pnl_botones.Controls.Add(this.btn_mix);
			this.pnl_botones.Controls.Add(this.btn_kpop);
			this.pnl_botones.Controls.Add(this.btn_latino);
			this.pnl_botones.Controls.Add(this.btn_rock);
			this.pnl_botones.Controls.Add(this.btn_rap);
			this.pnl_botones.Controls.Add(this.btn_pop);
			this.pnl_botones.Cursor = System.Windows.Forms.Cursors.Arrow;
			this.pnl_botones.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pnl_botones.Location = new System.Drawing.Point(0, 191);
			this.pnl_botones.Name = "pnl_botones";
			this.pnl_botones.Size = new System.Drawing.Size(1122, 766);
			this.pnl_botones.TabIndex = 3;
			// 
			// button11
			// 
			this.button11.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button11.AutoSize = true;
			this.button11.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button11.ForeColor = System.Drawing.Color.YellowGreen;
			this.button11.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button11.Location = new System.Drawing.Point(462, 276);
			this.button11.Name = "button11";
			this.button11.Size = new System.Drawing.Size(200, 42);
			this.button11.TabIndex = 3;
			this.button11.Text = "Puntuaciones";
			this.button11.UseVisualStyleBackColor = true;
			// 
			// button10
			// 
			this.button10.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button10.AutoSize = true;
			this.button10.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button10.ForeColor = System.Drawing.Color.Gold;
			this.button10.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.button10.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button10.Location = new System.Drawing.Point(819, 275);
			this.button10.Name = "button10";
			this.button10.Size = new System.Drawing.Size(200, 42);
			this.button10.TabIndex = 5;
			this.button10.Text = "Puntuaciones";
			this.button10.UseVisualStyleBackColor = true;
			// 
			// button9
			// 
			this.button9.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button9.AutoSize = true;
			this.button9.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button9.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
			this.button9.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button9.Location = new System.Drawing.Point(107, 604);
			this.button9.Name = "button9";
			this.button9.Size = new System.Drawing.Size(200, 42);
			this.button9.TabIndex = 7;
			this.button9.Text = "Puntuaciones";
			this.button9.UseVisualStyleBackColor = true;
			// 
			// button8
			// 
			this.button8.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button8.AutoSize = true;
			this.button8.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button8.ForeColor = System.Drawing.Color.Chartreuse;
			this.button8.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button8.Location = new System.Drawing.Point(462, 604);
			this.button8.Name = "button8";
			this.button8.Size = new System.Drawing.Size(200, 42);
			this.button8.TabIndex = 9;
			this.button8.Text = "Puntuaciones";
			this.button8.UseVisualStyleBackColor = true;
			// 
			// button7
			// 
			this.button7.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button7.AutoSize = true;
			this.button7.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button7.ForeColor = System.Drawing.Color.LightBlue;
			this.button7.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button7.Location = new System.Drawing.Point(819, 604);
			this.button7.Name = "button7";
			this.button7.Size = new System.Drawing.Size(200, 42);
			this.button7.TabIndex = 11;
			this.button7.Text = "Puntuaciones";
			this.button7.UseVisualStyleBackColor = true;
			// 
			// button1
			// 
			this.button1.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.button1.AutoSize = true;
			this.button1.BackColor = System.Drawing.Color.Transparent;
			this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
			this.button1.Cursor = System.Windows.Forms.Cursors.Hand;
			this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button1.ForeColor = System.Drawing.Color.Plum;
			this.button1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.button1.Location = new System.Drawing.Point(107, 275);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(200, 42);
			this.button1.TabIndex = 1;
			this.button1.Text = "Puntuaciones";
			this.button1.UseVisualStyleBackColor = false;
			// 
			// btn_mix
			// 
			this.btn_mix.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_mix.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_mix.BackgroundImage")));
			this.btn_mix.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_mix.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_mix.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_mix.Location = new System.Drawing.Point(792, 348);
			this.btn_mix.Name = "btn_mix";
			this.btn_mix.Size = new System.Drawing.Size(250, 250);
			this.btn_mix.TabIndex = 10;
			this.btn_mix.Tag = "6";
			this.btn_mix.UseVisualStyleBackColor = true;
			this.btn_mix.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_kpop
			// 
			this.btn_kpop.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_kpop.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_kpop.BackgroundImage")));
			this.btn_kpop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_kpop.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_kpop.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_kpop.ForeColor = System.Drawing.Color.Snow;
			this.btn_kpop.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_kpop.Location = new System.Drawing.Point(435, 348);
			this.btn_kpop.Name = "btn_kpop";
			this.btn_kpop.Size = new System.Drawing.Size(250, 250);
			this.btn_kpop.TabIndex = 8;
			this.btn_kpop.Tag = "5";
			this.btn_kpop.UseVisualStyleBackColor = true;
			this.btn_kpop.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_latino
			// 
			this.btn_latino.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_latino.AutoSize = true;
			this.btn_latino.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_latino.BackgroundImage")));
			this.btn_latino.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_latino.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_latino.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.btn_latino.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_latino.Location = new System.Drawing.Point(792, 19);
			this.btn_latino.Name = "btn_latino";
			this.btn_latino.Size = new System.Drawing.Size(250, 250);
			this.btn_latino.TabIndex = 4;
			this.btn_latino.Tag = "3";
			this.btn_latino.UseVisualStyleBackColor = true;
			this.btn_latino.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_rock
			// 
			this.btn_rock.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_rock.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_rock.BackgroundImage")));
			this.btn_rock.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_rock.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_rock.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_rock.Location = new System.Drawing.Point(435, 19);
			this.btn_rock.Name = "btn_rock";
			this.btn_rock.Size = new System.Drawing.Size(250, 250);
			this.btn_rock.TabIndex = 2;
			this.btn_rock.Tag = "2";
			this.btn_rock.UseVisualStyleBackColor = true;
			this.btn_rock.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_rap
			// 
			this.btn_rap.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_rap.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_rap.BackgroundImage")));
			this.btn_rap.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_rap.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_rap.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_rap.Location = new System.Drawing.Point(80, 348);
			this.btn_rap.Name = "btn_rap";
			this.btn_rap.Size = new System.Drawing.Size(250, 250);
			this.btn_rap.TabIndex = 6;
			this.btn_rap.Tag = "4";
			this.btn_rap.UseVisualStyleBackColor = true;
			this.btn_rap.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_pop
			// 
			this.btn_pop.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_pop.AutoSize = true;
			this.btn_pop.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_pop.BackgroundImage")));
			this.btn_pop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_pop.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_pop.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.btn_pop.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_pop.Location = new System.Drawing.Point(80, 19);
			this.btn_pop.Name = "btn_pop";
			this.btn_pop.Size = new System.Drawing.Size(250, 250);
			this.btn_pop.TabIndex = 0;
			this.btn_pop.Tag = "1";
			this.btn_pop.UseVisualStyleBackColor = true;
			this.btn_pop.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(13, 23);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(75, 23);
			this.button2.TabIndex = 1;
			this.button2.Text = "button2";
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new System.EventHandler(this.Button2Click);
			// 
			// FormMenu
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.RoyalBlue;
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1122, 957);
			this.Controls.Add(this.pnl_botones);
			this.Controls.Add(this.panel1);
			this.Cursor = System.Windows.Forms.Cursors.Hand;
			this.MaximizeBox = false;
			this.Name = "FormMenu";
			this.ShowIcon = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "SongQuiz";
			this.TransparencyKey = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
			this.panel1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).EndInit();
			this.pnl_botones.ResumeLayout(false);
			this.pnl_botones.PerformLayout();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.Button btn_pop;
		private System.Windows.Forms.Button btn_rap;
		private System.Windows.Forms.Button btn_rock;
		private System.Windows.Forms.Button btn_latino;
		private System.Windows.Forms.Button btn_kpop;
		private System.Windows.Forms.Button btn_mix;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button7;
		private System.Windows.Forms.Button button8;
		private System.Windows.Forms.Button button9;
		private System.Windows.Forms.Button button10;
		private System.Windows.Forms.Button button11;
		private System.Windows.Forms.Panel pnl_botones;
		private System.Windows.Forms.PictureBox pic_logo;
		private System.Windows.Forms.Panel panel1;

		

	}
}