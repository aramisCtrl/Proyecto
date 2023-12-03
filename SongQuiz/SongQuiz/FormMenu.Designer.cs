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
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMenu));
			this.panel1 = new System.Windows.Forms.Panel();
			this.btn_cerrar = new System.Windows.Forms.Button();
			this.lbl_nombre = new System.Windows.Forms.Label();
			this.pic_avatar = new System.Windows.Forms.PictureBox();
			this.pic_logo = new System.Windows.Forms.PictureBox();
			this.pnl_botones = new System.Windows.Forms.Panel();
			this.lbl_copyright = new System.Windows.Forms.Label();
			this.btn_2 = new System.Windows.Forms.Button();
			this.btn_6 = new System.Windows.Forms.Button();
			this.btn_4 = new System.Windows.Forms.Button();
			this.btn_5 = new System.Windows.Forms.Button();
			this.btn_3 = new System.Windows.Forms.Button();
			this.btn_1 = new System.Windows.Forms.Button();
			this.btn_mix = new System.Windows.Forms.Button();
			this.btn_kpop = new System.Windows.Forms.Button();
			this.btn_latino = new System.Windows.Forms.Button();
			this.btn_rock = new System.Windows.Forms.Button();
			this.btn_rap = new System.Windows.Forms.Button();
			this.btn_pop = new System.Windows.Forms.Button();
			this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.pic_avatar)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).BeginInit();
			this.pnl_botones.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.Transparent;
			this.panel1.Controls.Add(this.btn_cerrar);
			this.panel1.Controls.Add(this.lbl_nombre);
			this.panel1.Controls.Add(this.pic_avatar);
			this.panel1.Controls.Add(this.pic_logo);
			this.panel1.Cursor = System.Windows.Forms.Cursors.Arrow;
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1122, 227);
			this.panel1.TabIndex = 1;
			// 
			// btn_cerrar
			// 
			this.btn_cerrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_cerrar.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_cerrar.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_cerrar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_cerrar.Location = new System.Drawing.Point(917, 12);
			this.btn_cerrar.Name = "btn_cerrar";
			this.btn_cerrar.Size = new System.Drawing.Size(193, 38);
			this.btn_cerrar.TabIndex = 4;
			this.btn_cerrar.Text = "Cerrar Sesión";
			this.btn_cerrar.UseVisualStyleBackColor = true;
			this.btn_cerrar.Click += new System.EventHandler(this.Btn_cerrarClick);
			// 
			// lbl_nombre
			// 
			this.lbl_nombre.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_nombre.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_nombre.Location = new System.Drawing.Point(3, 173);
			this.lbl_nombre.Name = "lbl_nombre";
			this.lbl_nombre.Size = new System.Drawing.Size(315, 51);
			this.lbl_nombre.TabIndex = 2;
			this.lbl_nombre.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// pic_avatar
			// 
			this.pic_avatar.Cursor = System.Windows.Forms.Cursors.Hand;
			this.pic_avatar.Location = new System.Drawing.Point(69, 3);
			this.pic_avatar.Name = "pic_avatar";
			this.pic_avatar.Size = new System.Drawing.Size(170, 170);
			this.pic_avatar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_avatar.TabIndex = 1;
			this.pic_avatar.TabStop = false;
			// 
			// pic_logo
			// 
			this.pic_logo.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.pic_logo.BackColor = System.Drawing.Color.Transparent;
			this.pic_logo.Cursor = System.Windows.Forms.Cursors.Default;
			this.pic_logo.Image = ((System.Drawing.Image)(resources.GetObject("pic_logo.Image")));
			this.pic_logo.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.pic_logo.Location = new System.Drawing.Point(0, 19);
			this.pic_logo.Margin = new System.Windows.Forms.Padding(3, 10, 3, 3);
			this.pic_logo.Name = "pic_logo";
			this.pic_logo.Size = new System.Drawing.Size(1120, 188);
			this.pic_logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_logo.TabIndex = 0;
			this.pic_logo.TabStop = false;
			// 
			// pnl_botones
			// 
			this.pnl_botones.BackColor = System.Drawing.Color.Transparent;
			this.pnl_botones.Controls.Add(this.lbl_copyright);
			this.pnl_botones.Controls.Add(this.btn_2);
			this.pnl_botones.Controls.Add(this.btn_6);
			this.pnl_botones.Controls.Add(this.btn_4);
			this.pnl_botones.Controls.Add(this.btn_5);
			this.pnl_botones.Controls.Add(this.btn_3);
			this.pnl_botones.Controls.Add(this.btn_1);
			this.pnl_botones.Controls.Add(this.btn_mix);
			this.pnl_botones.Controls.Add(this.btn_kpop);
			this.pnl_botones.Controls.Add(this.btn_latino);
			this.pnl_botones.Controls.Add(this.btn_rock);
			this.pnl_botones.Controls.Add(this.btn_rap);
			this.pnl_botones.Controls.Add(this.btn_pop);
			this.pnl_botones.Cursor = System.Windows.Forms.Cursors.Arrow;
			this.pnl_botones.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pnl_botones.Location = new System.Drawing.Point(0, 227);
			this.pnl_botones.Name = "pnl_botones";
			this.pnl_botones.Size = new System.Drawing.Size(1122, 828);
			this.pnl_botones.TabIndex = 3;
			// 
			// lbl_copyright
			// 
			this.lbl_copyright.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
			this.lbl_copyright.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_copyright.Location = new System.Drawing.Point(301, 798);
			this.lbl_copyright.Name = "lbl_copyright";
			this.lbl_copyright.Size = new System.Drawing.Size(547, 30);
			this.lbl_copyright.TabIndex = 12;
			this.lbl_copyright.Text = "© 2023 SongQuiz. Todos los derechos reservados. Desarrollado por Aramis Terza.";
			this.lbl_copyright.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// btn_2
			// 
			this.btn_2.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_2.AutoSize = true;
			this.btn_2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_2.BackgroundImage")));
			this.btn_2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_2.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_2.Location = new System.Drawing.Point(512, 334);
			this.btn_2.Name = "btn_2";
			this.btn_2.Size = new System.Drawing.Size(105, 48);
			this.btn_2.TabIndex = 3;
			this.btn_2.Tag = "2";
			this.toolTip1.SetToolTip(this.btn_2, "Puntajes");
			this.btn_2.UseVisualStyleBackColor = true;
			this.btn_2.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_6
			// 
			this.btn_6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_6.AutoSize = true;
			this.btn_6.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_6.BackgroundImage")));
			this.btn_6.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_6.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_6.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_6.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.btn_6.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_6.Location = new System.Drawing.Point(665, 724);
			this.btn_6.Name = "btn_6";
			this.btn_6.Size = new System.Drawing.Size(105, 48);
			this.btn_6.TabIndex = 5;
			this.btn_6.Tag = "6";
			this.toolTip1.SetToolTip(this.btn_6, "Puntajes");
			this.btn_6.UseVisualStyleBackColor = true;
			this.btn_6.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_4
			// 
			this.btn_4.AutoSize = true;
			this.btn_4.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_4.BackgroundImage")));
			this.btn_4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_4.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_4.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_4.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_4.Location = new System.Drawing.Point(367, 724);
			this.btn_4.Name = "btn_4";
			this.btn_4.Size = new System.Drawing.Size(105, 48);
			this.btn_4.TabIndex = 4;
			this.btn_4.Tag = "4";
			this.toolTip1.SetToolTip(this.btn_4, "Puntajes");
			this.btn_4.UseVisualStyleBackColor = true;
			this.btn_4.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_5
			// 
			this.btn_5.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_5.AutoSize = true;
			this.btn_5.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_5.BackgroundImage")));
			this.btn_5.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_5.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_5.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_5.Location = new System.Drawing.Point(512, 724);
			this.btn_5.Name = "btn_5";
			this.btn_5.Size = new System.Drawing.Size(105, 48);
			this.btn_5.TabIndex = 9;
			this.btn_5.Tag = "5";
			this.toolTip1.SetToolTip(this.btn_5, "Puntajes");
			this.btn_5.UseVisualStyleBackColor = true;
			this.btn_5.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_3
			// 
			this.btn_3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_3.AutoSize = true;
			this.btn_3.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_3.BackgroundImage")));
			this.btn_3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_3.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_3.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_3.Location = new System.Drawing.Point(665, 334);
			this.btn_3.Name = "btn_3";
			this.btn_3.Size = new System.Drawing.Size(105, 48);
			this.btn_3.TabIndex = 11;
			this.btn_3.Tag = "3";
			this.toolTip1.SetToolTip(this.btn_3, "Puntajes");
			this.btn_3.UseVisualStyleBackColor = true;
			this.btn_3.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_1
			// 
			this.btn_1.AutoSize = true;
			this.btn_1.BackColor = System.Drawing.SystemColors.ButtonFace;
			this.btn_1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_1.BackgroundImage")));
			this.btn_1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
			this.btn_1.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
			this.btn_1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_1.Location = new System.Drawing.Point(367, 334);
			this.btn_1.Name = "btn_1";
			this.btn_1.Size = new System.Drawing.Size(105, 48);
			this.btn_1.TabIndex = 1;
			this.btn_1.Tag = "1";
			this.toolTip1.SetToolTip(this.btn_1, "Puntajes");
			this.btn_1.UseVisualStyleBackColor = false;
			this.btn_1.Click += new System.EventHandler(this.btn_puntuacionesClick);
			// 
			// btn_mix
			// 
			this.btn_mix.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_mix.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_mix.BackgroundImage")));
			this.btn_mix.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_mix.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_mix.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_mix.Location = new System.Drawing.Point(563, 418);
			this.btn_mix.Name = "btn_mix";
			this.btn_mix.Size = new System.Drawing.Size(300, 300);
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
			this.btn_kpop.Location = new System.Drawing.Point(413, 418);
			this.btn_kpop.Name = "btn_kpop";
			this.btn_kpop.Size = new System.Drawing.Size(300, 300);
			this.btn_kpop.TabIndex = 8;
			this.btn_kpop.Tag = "5";
			this.btn_kpop.UseVisualStyleBackColor = true;
			this.btn_kpop.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_latino
			// 
			this.btn_latino.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_latino.AutoSize = true;
			this.btn_latino.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_latino.BackgroundImage")));
			this.btn_latino.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_latino.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_latino.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.btn_latino.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_latino.Location = new System.Drawing.Point(563, 28);
			this.btn_latino.Name = "btn_latino";
			this.btn_latino.Size = new System.Drawing.Size(300, 300);
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
			this.btn_rock.Location = new System.Drawing.Point(413, 28);
			this.btn_rock.Name = "btn_rock";
			this.btn_rock.Size = new System.Drawing.Size(300, 300);
			this.btn_rock.TabIndex = 2;
			this.btn_rock.Tag = "2";
			this.btn_rock.UseVisualStyleBackColor = true;
			this.btn_rock.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_rap
			// 
			this.btn_rap.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_rap.BackgroundImage")));
			this.btn_rap.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_rap.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_rap.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_rap.Location = new System.Drawing.Point(275, 418);
			this.btn_rap.Name = "btn_rap";
			this.btn_rap.Size = new System.Drawing.Size(300, 300);
			this.btn_rap.TabIndex = 6;
			this.btn_rap.Tag = "4";
			this.btn_rap.UseVisualStyleBackColor = true;
			this.btn_rap.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// btn_pop
			// 
			this.btn_pop.AutoSize = true;
			this.btn_pop.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_pop.BackgroundImage")));
			this.btn_pop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.btn_pop.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_pop.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
			this.btn_pop.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.btn_pop.Location = new System.Drawing.Point(266, 28);
			this.btn_pop.Name = "btn_pop";
			this.btn_pop.Size = new System.Drawing.Size(300, 300);
			this.btn_pop.TabIndex = 0;
			this.btn_pop.Tag = "1";
			this.btn_pop.UseVisualStyleBackColor = true;
			this.btn_pop.Click += new System.EventHandler(this.Btn_partidaClick);
			// 
			// FormMenu
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.CornflowerBlue;
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1122, 1055);
			this.Controls.Add(this.pnl_botones);
			this.Controls.Add(this.panel1);
			this.Cursor = System.Windows.Forms.Cursors.Hand;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.Name = "FormMenu";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "SongQuiz";
			this.Load += new System.EventHandler(this.FormMenuLoad);
			this.panel1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.pic_avatar)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).EndInit();
			this.pnl_botones.ResumeLayout(false);
			this.pnl_botones.PerformLayout();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.ToolTip toolTip1;
		private System.Windows.Forms.Label lbl_copyright;
		private System.Windows.Forms.Button btn_cerrar;
		private System.Windows.Forms.PictureBox pic_avatar;
		private System.Windows.Forms.Label lbl_nombre;
		private System.Windows.Forms.Button btn_pop;
		private System.Windows.Forms.Button btn_rap;
		private System.Windows.Forms.Button btn_rock;
		private System.Windows.Forms.Button btn_latino;
		private System.Windows.Forms.Button btn_kpop;
		private System.Windows.Forms.Button btn_mix;
		private System.Windows.Forms.Button btn_1;
		private System.Windows.Forms.Button btn_3;
		private System.Windows.Forms.Button btn_5;
		private System.Windows.Forms.Button btn_4;
		private System.Windows.Forms.Button btn_6;
		private System.Windows.Forms.Button btn_2;
		private System.Windows.Forms.Panel pnl_botones;
		private System.Windows.Forms.PictureBox pic_logo;
		private System.Windows.Forms.Panel panel1;

		

	}
}