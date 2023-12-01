
namespace SongQuiz
{
	partial class FormPuntajes
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
				if (components != null){
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPuntajes));
			this.pic_2 = new System.Windows.Forms.PictureBox();
			this.pic_3 = new System.Windows.Forms.PictureBox();
			this.pic_1 = new System.Windows.Forms.PictureBox();
			this.pic_podio = new System.Windows.Forms.PictureBox();
			this.panel1 = new System.Windows.Forms.Panel();
			this.lbl_3 = new System.Windows.Forms.Label();
			this.lbl_1 = new System.Windows.Forms.Label();
			this.lbl_2 = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.dataGridView1 = new System.Windows.Forms.DataGridView();
			this.usua_nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Punt_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.usua_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Puntaje = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Tiempo = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.avat_direccion = new System.Windows.Forms.DataGridViewTextBoxColumn();
			((System.ComponentModel.ISupportInitialize)(this.pic_2)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_3)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_1)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_podio)).BeginInit();
			this.panel1.SuspendLayout();
			this.panel2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
			this.SuspendLayout();
			// 
			// pic_2
			// 
			this.pic_2.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.pic_2.BackColor = System.Drawing.Color.Transparent;
			this.pic_2.Location = new System.Drawing.Point(69, 34);
			this.pic_2.Name = "pic_2";
			this.pic_2.Size = new System.Drawing.Size(100, 112);
			this.pic_2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_2.TabIndex = 1;
			this.pic_2.TabStop = false;
			// 
			// pic_3
			// 
			this.pic_3.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.pic_3.BackColor = System.Drawing.Color.Transparent;
			this.pic_3.Location = new System.Drawing.Point(281, 56);
			this.pic_3.Name = "pic_3";
			this.pic_3.Size = new System.Drawing.Size(100, 112);
			this.pic_3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_3.TabIndex = 2;
			this.pic_3.TabStop = false;
			// 
			// pic_1
			// 
			this.pic_1.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.pic_1.BackColor = System.Drawing.Color.Transparent;
			this.pic_1.Location = new System.Drawing.Point(175, 12);
			this.pic_1.Name = "pic_1";
			this.pic_1.Size = new System.Drawing.Size(100, 112);
			this.pic_1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_1.TabIndex = 3;
			this.pic_1.TabStop = false;
			// 
			// pic_podio
			// 
			this.pic_podio.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.pic_podio.Image = ((System.Drawing.Image)(resources.GetObject("pic_podio.Image")));
			this.pic_podio.Location = new System.Drawing.Point(3, 31);
			this.pic_podio.Name = "pic_podio";
			this.pic_podio.Size = new System.Drawing.Size(444, 269);
			this.pic_podio.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_podio.TabIndex = 4;
			this.pic_podio.TabStop = false;
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.lbl_3);
			this.panel1.Controls.Add(this.lbl_1);
			this.panel1.Controls.Add(this.lbl_2);
			this.panel1.Controls.Add(this.pic_3);
			this.panel1.Controls.Add(this.pic_1);
			this.panel1.Controls.Add(this.pic_2);
			this.panel1.Controls.Add(this.pic_podio);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(450, 275);
			this.panel1.TabIndex = 5;
			// 
			// lbl_3
			// 
			this.lbl_3.BackColor = System.Drawing.Color.Transparent;
			this.lbl_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_3.Location = new System.Drawing.Point(284, 154);
			this.lbl_3.Name = "lbl_3";
			this.lbl_3.Size = new System.Drawing.Size(166, 23);
			this.lbl_3.TabIndex = 7;
			this.lbl_3.Text = "lbl3";
			// 
			// lbl_1
			// 
			this.lbl_1.BackColor = System.Drawing.Color.Transparent;
			this.lbl_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_1.Location = new System.Drawing.Point(175, 112);
			this.lbl_1.Name = "lbl_1";
			this.lbl_1.Size = new System.Drawing.Size(100, 23);
			this.lbl_1.TabIndex = 6;
			this.lbl_1.Text = "lbl1";
			this.lbl_1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
			// 
			// lbl_2
			// 
			this.lbl_2.BackColor = System.Drawing.Color.Transparent;
			this.lbl_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_2.Location = new System.Drawing.Point(0, 132);
			this.lbl_2.Name = "lbl_2";
			this.lbl_2.Size = new System.Drawing.Size(166, 23);
			this.lbl_2.TabIndex = 5;
			this.lbl_2.Text = "lbl2";
			this.lbl_2.TextAlign = System.Drawing.ContentAlignment.TopRight;
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.dataGridView1);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel2.Location = new System.Drawing.Point(0, 275);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(450, 372);
			this.panel2.TabIndex = 6;
			// 
			// dataGridView1
			// 
			this.dataGridView1.AllowUserToResizeRows = false;
			this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
			this.dataGridView1.BackgroundColor = System.Drawing.Color.CornflowerBlue;
			this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
									this.usua_nombre,
									this.Punt_id,
									this.usua_id,
									this.Puntaje,
									this.Tiempo,
									this.avat_direccion});
			this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dataGridView1.GridColor = System.Drawing.Color.CornflowerBlue;
			this.dataGridView1.Location = new System.Drawing.Point(0, 0);
			this.dataGridView1.Name = "dataGridView1";
			this.dataGridView1.RowHeadersVisible = false;
			this.dataGridView1.RowTemplate.Height = 24;
			this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.dataGridView1.Size = new System.Drawing.Size(450, 372);
			this.dataGridView1.TabIndex = 0;
			// 
			// usua_nombre
			// 
			this.usua_nombre.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
			this.usua_nombre.DataPropertyName = "usua_nombre";
			this.usua_nombre.HeaderText = "Jugador";
			this.usua_nombre.Name = "usua_nombre";
			this.usua_nombre.Resizable = System.Windows.Forms.DataGridViewTriState.False;
			// 
			// Punt_id
			// 
			this.Punt_id.DataPropertyName = "punt_id";
			this.Punt_id.HeaderText = "Punt";
			this.Punt_id.Name = "Punt_id";
			this.Punt_id.Visible = false;
			this.Punt_id.Width = 62;
			// 
			// usua_id
			// 
			this.usua_id.DataPropertyName = "usua_id";
			this.usua_id.HeaderText = "usua_id";
			this.usua_id.Name = "usua_id";
			this.usua_id.Visible = false;
			this.usua_id.Width = 83;
			// 
			// Puntaje
			// 
			this.Puntaje.DataPropertyName = "punt_puntaje";
			this.Puntaje.HeaderText = "Puntaje";
			this.Puntaje.Name = "Puntaje";
			this.Puntaje.Width = 81;
			// 
			// Tiempo
			// 
			this.Tiempo.DataPropertyName = "punt_tiempo";
			this.Tiempo.HeaderText = "Tiempo";
			this.Tiempo.Name = "Tiempo";
			this.Tiempo.Width = 80;
			// 
			// avat_direccion
			// 
			this.avat_direccion.DataPropertyName = "avat_direccion";
			this.avat_direccion.HeaderText = "Avatar";
			this.avat_direccion.Name = "avat_direccion";
			this.avat_direccion.Visible = false;
			this.avat_direccion.Width = 74;
			// 
			// FormPuntajes
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.CornflowerBlue;
			this.ClientSize = new System.Drawing.Size(450, 647);
			this.Controls.Add(this.panel2);
			this.Controls.Add(this.panel1);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FormPuntajes";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Puntajes";
			((System.ComponentModel.ISupportInitialize)(this.pic_2)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_3)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_1)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.pic_podio)).EndInit();
			this.panel1.ResumeLayout(false);
			this.panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Label lbl_2;
		private System.Windows.Forms.Label lbl_1;
		private System.Windows.Forms.Label lbl_3;
		private System.Windows.Forms.DataGridViewTextBoxColumn avat_direccion;
		private System.Windows.Forms.DataGridViewTextBoxColumn Punt_id;
		private System.Windows.Forms.DataGridViewTextBoxColumn Avatar;
		private System.Windows.Forms.DataGridViewTextBoxColumn Tiempo;
		private System.Windows.Forms.DataGridViewTextBoxColumn Puntaje;
		private System.Windows.Forms.DataGridViewTextBoxColumn usua_id;
		private System.Windows.Forms.DataGridViewTextBoxColumn usua_nombre;
		private System.Windows.Forms.DataGridView dataGridView1;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.PictureBox pic_podio;
		private System.Windows.Forms.PictureBox pic_1;
		private System.Windows.Forms.PictureBox pic_3;
		private System.Windows.Forms.PictureBox pic_2;
	}
}
