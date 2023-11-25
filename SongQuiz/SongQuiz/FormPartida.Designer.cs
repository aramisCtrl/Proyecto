/*
 * Created by SharpDevelop.
 * User: Fiski
 * Date: 23/11/2023
 * Time: 22:14
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace SongQuiz
{
	partial class FormPartida
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
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPartida));
			this.tmr_countdown = new System.Windows.Forms.Timer(this.components);
			this.button1 = new System.Windows.Forms.Button();
			this.button2 = new System.Windows.Forms.Button();
			this.button3 = new System.Windows.Forms.Button();
			this.button4 = new System.Windows.Forms.Button();
			this.lbl_timer = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
			this.btn_opcion1 = new System.Windows.Forms.Button();
			this.btn_opcion3 = new System.Windows.Forms.Button();
			this.btn_opcion2 = new System.Windows.Forms.Button();
			this.btn_opcion4 = new System.Windows.Forms.Button();
			this.panel1 = new System.Windows.Forms.Panel();
			this.pictureBox2 = new System.Windows.Forms.PictureBox();
			this.pictureBox1 = new System.Windows.Forms.PictureBox();
			this.tmr_partida = new System.Windows.Forms.Timer(this.components);
			this.panel2.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
			this.SuspendLayout();
			// 
			// tmr_countdown
			// 
			this.tmr_countdown.Interval = 1100;
			this.tmr_countdown.Tick += new System.EventHandler(this.Tmr_countdownTick);
			// 
			// button1
			// 
			this.button1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.button1.Location = new System.Drawing.Point(3, 3);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(516, 69);
			this.button1.TabIndex = 0;
			this.button1.Text = "button1";
			this.button1.UseVisualStyleBackColor = true;
			// 
			// button2
			// 
			this.button2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.button2.Location = new System.Drawing.Point(525, 3);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(516, 69);
			this.button2.TabIndex = 1;
			this.button2.Text = "button2";
			this.button2.UseVisualStyleBackColor = true;
			// 
			// button3
			// 
			this.button3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.button3.Location = new System.Drawing.Point(3, 78);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(516, 70);
			this.button3.TabIndex = 2;
			this.button3.Text = "button3";
			this.button3.UseVisualStyleBackColor = true;
			// 
			// button4
			// 
			this.button4.Dock = System.Windows.Forms.DockStyle.Fill;
			this.button4.Location = new System.Drawing.Point(525, 78);
			this.button4.Name = "button4";
			this.button4.Size = new System.Drawing.Size(516, 70);
			this.button4.TabIndex = 3;
			this.button4.Text = "button4";
			this.button4.UseVisualStyleBackColor = true;
			// 
			// lbl_timer
			// 
			this.lbl_timer.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.lbl_timer.AutoEllipsis = true;
			this.lbl_timer.Font = new System.Drawing.Font("Arial", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_timer.ForeColor = System.Drawing.Color.White;
			this.lbl_timer.Location = new System.Drawing.Point(974, 9);
			this.lbl_timer.Name = "lbl_timer";
			this.lbl_timer.Size = new System.Drawing.Size(250, 93);
			this.lbl_timer.TabIndex = 0;
			this.lbl_timer.Text = "¡Ya!";
			this.lbl_timer.TextAlign = System.Drawing.ContentAlignment.TopRight;
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.tableLayoutPanel1);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.panel2.Location = new System.Drawing.Point(0, 747);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(1236, 187);
			this.panel2.TabIndex = 2;
			// 
			// tableLayoutPanel1
			// 
			this.tableLayoutPanel1.ColumnCount = 2;
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
			this.tableLayoutPanel1.Controls.Add(this.btn_opcion1, 0, 0);
			this.tableLayoutPanel1.Controls.Add(this.btn_opcion3, 0, 1);
			this.tableLayoutPanel1.Controls.Add(this.btn_opcion2, 1, 0);
			this.tableLayoutPanel1.Controls.Add(this.btn_opcion4, 1, 1);
			this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
			this.tableLayoutPanel1.Name = "tableLayoutPanel1";
			this.tableLayoutPanel1.RowCount = 2;
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
			this.tableLayoutPanel1.Size = new System.Drawing.Size(1236, 187);
			this.tableLayoutPanel1.TabIndex = 1;
			// 
			// btn_opcion1
			// 
			this.btn_opcion1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion1.Location = new System.Drawing.Point(3, 3);
			this.btn_opcion1.Name = "btn_opcion1";
			this.btn_opcion1.Size = new System.Drawing.Size(612, 87);
			this.btn_opcion1.TabIndex = 0;
			this.btn_opcion1.UseVisualStyleBackColor = true;
			// 
			// btn_opcion3
			// 
			this.btn_opcion3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion3.Location = new System.Drawing.Point(3, 96);
			this.btn_opcion3.Name = "btn_opcion3";
			this.btn_opcion3.Size = new System.Drawing.Size(612, 88);
			this.btn_opcion3.TabIndex = 1;
			this.btn_opcion3.UseVisualStyleBackColor = true;
			// 
			// btn_opcion2
			// 
			this.btn_opcion2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion2.Location = new System.Drawing.Point(621, 3);
			this.btn_opcion2.Name = "btn_opcion2";
			this.btn_opcion2.Size = new System.Drawing.Size(612, 87);
			this.btn_opcion2.TabIndex = 2;
			this.btn_opcion2.UseVisualStyleBackColor = true;
			// 
			// btn_opcion4
			// 
			this.btn_opcion4.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion4.Location = new System.Drawing.Point(621, 96);
			this.btn_opcion4.Name = "btn_opcion4";
			this.btn_opcion4.Size = new System.Drawing.Size(612, 88);
			this.btn_opcion4.TabIndex = 3;
			this.btn_opcion4.UseVisualStyleBackColor = true;
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.pictureBox2);
			this.panel1.Controls.Add(this.pictureBox1);
			this.panel1.Controls.Add(this.lbl_timer);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1236, 747);
			this.panel1.TabIndex = 3;
			this.panel1.TabStop = true;
			// 
			// pictureBox2
			// 
			this.pictureBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
			this.pictureBox2.Location = new System.Drawing.Point(3, 531);
			this.pictureBox2.Name = "pictureBox2";
			this.pictureBox2.Size = new System.Drawing.Size(216, 216);
			this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pictureBox2.TabIndex = 2;
			this.pictureBox2.TabStop = false;
			// 
			// pictureBox1
			// 
			this.pictureBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
			this.pictureBox1.Location = new System.Drawing.Point(268, 21);
			this.pictureBox1.Margin = new System.Windows.Forms.Padding(100);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new System.Drawing.Size(705, 705);
			this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pictureBox1.TabIndex = 1;
			this.pictureBox1.TabStop = false;
			// 
			// FormPartida
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.RoyalBlue;
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1236, 934);
			this.Controls.Add(this.panel1);
			this.Controls.Add(this.panel2);
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FormPartida";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "FormPartida";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			this.Load += new System.EventHandler(this.FormPartidaLoad);
			this.panel2.ResumeLayout(false);
			this.tableLayoutPanel1.ResumeLayout(false);
			this.panel1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.PictureBox pictureBox2;
		private System.Windows.Forms.Timer tmr_partida;
		private System.Windows.Forms.PictureBox pictureBox1;
		private System.Windows.Forms.Button btn_opcion4;
		private System.Windows.Forms.Button btn_opcion2;
		private System.Windows.Forms.Button btn_opcion3;
		private System.Windows.Forms.Button btn_opcion1;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Timer tmr_countdown;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label lbl_timer;
	}
}
