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
			this.lbl_artista = new System.Windows.Forms.Label();
			this.lbl_cancion = new System.Windows.Forms.Label();
			this.pic_portada = new System.Windows.Forms.PictureBox();
			this.tmr_partida = new System.Windows.Forms.Timer(this.components);
			this.tmr_espera2 = new System.Windows.Forms.Timer(this.components);
			this.tmr_espera1 = new System.Windows.Forms.Timer(this.components);
			this.panel2.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.pic_portada)).BeginInit();
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
			this.lbl_timer.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 48F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_timer.ForeColor = System.Drawing.Color.White;
			this.lbl_timer.Location = new System.Drawing.Point(1021, 9);
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
			this.panel2.Location = new System.Drawing.Point(0, 813);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(1283, 187);
			this.panel2.TabIndex = 2;
			// 
			// tableLayoutPanel1
			// 
			this.tableLayoutPanel1.BackColor = System.Drawing.Color.MediumOrchid;
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
			this.tableLayoutPanel1.Size = new System.Drawing.Size(1283, 187);
			this.tableLayoutPanel1.TabIndex = 1;
			// 
			// btn_opcion1
			// 
			this.btn_opcion1.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_opcion1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion1.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_opcion1.Location = new System.Drawing.Point(3, 3);
			this.btn_opcion1.Name = "btn_opcion1";
			this.btn_opcion1.Size = new System.Drawing.Size(635, 87);
			this.btn_opcion1.TabIndex = 0;
			this.btn_opcion1.UseMnemonic = false;
			this.btn_opcion1.UseVisualStyleBackColor = true;
			// 
			// btn_opcion3
			// 
			this.btn_opcion3.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_opcion3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion3.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_opcion3.Location = new System.Drawing.Point(3, 96);
			this.btn_opcion3.Name = "btn_opcion3";
			this.btn_opcion3.Size = new System.Drawing.Size(635, 88);
			this.btn_opcion3.TabIndex = 1;
			this.btn_opcion3.UseMnemonic = false;
			this.btn_opcion3.UseVisualStyleBackColor = true;
			// 
			// btn_opcion2
			// 
			this.btn_opcion2.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_opcion2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion2.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_opcion2.Location = new System.Drawing.Point(644, 3);
			this.btn_opcion2.Name = "btn_opcion2";
			this.btn_opcion2.Size = new System.Drawing.Size(636, 87);
			this.btn_opcion2.TabIndex = 2;
			this.btn_opcion2.UseMnemonic = false;
			this.btn_opcion2.UseVisualStyleBackColor = true;
			// 
			// btn_opcion4
			// 
			this.btn_opcion4.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_opcion4.Dock = System.Windows.Forms.DockStyle.Fill;
			this.btn_opcion4.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_opcion4.Location = new System.Drawing.Point(644, 96);
			this.btn_opcion4.Name = "btn_opcion4";
			this.btn_opcion4.Size = new System.Drawing.Size(636, 88);
			this.btn_opcion4.TabIndex = 3;
			this.btn_opcion4.UseMnemonic = false;
			this.btn_opcion4.UseVisualStyleBackColor = true;
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.MediumOrchid;
			this.panel1.Controls.Add(this.lbl_artista);
			this.panel1.Controls.Add(this.lbl_cancion);
			this.panel1.Controls.Add(this.pic_portada);
			this.panel1.Controls.Add(this.lbl_timer);
			this.panel1.Cursor = System.Windows.Forms.Cursors.Arrow;
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1283, 813);
			this.panel1.TabIndex = 3;
			this.panel1.TabStop = true;
			// 
			// lbl_artista
			// 
			this.lbl_artista.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.lbl_artista.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 28.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_artista.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_artista.Location = new System.Drawing.Point(-23, 751);
			this.lbl_artista.Name = "lbl_artista";
			this.lbl_artista.Size = new System.Drawing.Size(1330, 59);
			this.lbl_artista.TabIndex = 3;
			this.lbl_artista.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			this.lbl_artista.UseMnemonic = false;
			// 
			// lbl_cancion
			// 
			this.lbl_cancion.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.lbl_cancion.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_cancion.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_cancion.Location = new System.Drawing.Point(-33, 673);
			this.lbl_cancion.Name = "lbl_cancion";
			this.lbl_cancion.Size = new System.Drawing.Size(1340, 66);
			this.lbl_cancion.TabIndex = 2;
			this.lbl_cancion.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			this.lbl_cancion.UseMnemonic = false;
			// 
			// pic_portada
			// 
			this.pic_portada.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.pic_portada.Location = new System.Drawing.Point(316, 42);
			this.pic_portada.Margin = new System.Windows.Forms.Padding(100);
			this.pic_portada.Name = "pic_portada";
			this.pic_portada.Size = new System.Drawing.Size(642, 623);
			this.pic_portada.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_portada.TabIndex = 1;
			this.pic_portada.TabStop = false;
			// 
			// tmr_partida
			// 
			this.tmr_partida.Interval = 1000;
			this.tmr_partida.Tick += new System.EventHandler(this.Tmr_partidaTick);
			// 
			// tmr_espera2
			// 
			this.tmr_espera2.Interval = 3500;
			this.tmr_espera2.Tick += new System.EventHandler(this.Tmr_espera2Tick);
			// 
			// tmr_espera1
			// 
			this.tmr_espera1.Interval = 1500;
			this.tmr_espera1.Tick += new System.EventHandler(this.Tmr_espera1Tick);
			// 
			// FormPartida
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.RoyalBlue;
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1283, 1000);
			this.Controls.Add(this.panel1);
			this.Controls.Add(this.panel2);
			this.Cursor = System.Windows.Forms.Cursors.Default;
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
			((System.ComponentModel.ISupportInitialize)(this.pic_portada)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Timer tmr_espera1;
		private System.Windows.Forms.Label lbl_cancion;
		private System.Windows.Forms.Label lbl_artista;
		private System.Windows.Forms.Timer tmr_espera2;
		private System.Windows.Forms.Timer tmr_partida;
		private System.Windows.Forms.PictureBox pic_portada;
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
