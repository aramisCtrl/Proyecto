/*
 * Created by SharpDevelop.
 * User: Fiski
 * Date: 03/12/2023
 * Time: 12:31
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace SongQuiz
{
	partial class FormScore
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormScore));
			this.pic_avatar = new System.Windows.Forms.PictureBox();
			this.lbl_nombre = new System.Windows.Forms.Label();
			this.lbl_puntaje = new System.Windows.Forms.Label();
			this.lbl_tiempo = new System.Windows.Forms.Label();
			this.btn_aceptar = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.pic_avatar)).BeginInit();
			this.SuspendLayout();
			// 
			// pic_avatar
			// 
			this.pic_avatar.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.pic_avatar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
			this.pic_avatar.Location = new System.Drawing.Point(71, 39);
			this.pic_avatar.Name = "pic_avatar";
			this.pic_avatar.Size = new System.Drawing.Size(140, 140);
			this.pic_avatar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_avatar.TabIndex = 0;
			this.pic_avatar.TabStop = false;
			// 
			// lbl_nombre
			// 
			this.lbl_nombre.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.lbl_nombre.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_nombre.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_nombre.Location = new System.Drawing.Point(12, 193);
			this.lbl_nombre.Name = "lbl_nombre";
			this.lbl_nombre.Size = new System.Drawing.Size(258, 32);
			this.lbl_nombre.TabIndex = 1;
			this.lbl_nombre.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// lbl_puntaje
			// 
			this.lbl_puntaje.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.lbl_puntaje.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_puntaje.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_puntaje.Location = new System.Drawing.Point(12, 241);
			this.lbl_puntaje.Name = "lbl_puntaje";
			this.lbl_puntaje.Size = new System.Drawing.Size(258, 23);
			this.lbl_puntaje.TabIndex = 2;
			this.lbl_puntaje.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// lbl_tiempo
			// 
			this.lbl_tiempo.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.lbl_tiempo.Font = new System.Drawing.Font("Gill Sans Ultra Bold Condensed", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_tiempo.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.lbl_tiempo.Location = new System.Drawing.Point(12, 281);
			this.lbl_tiempo.Name = "lbl_tiempo";
			this.lbl_tiempo.Size = new System.Drawing.Size(258, 23);
			this.lbl_tiempo.TabIndex = 3;
			this.lbl_tiempo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// btn_aceptar
			// 
			this.btn_aceptar.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_aceptar.Location = new System.Drawing.Point(84, 329);
			this.btn_aceptar.Name = "btn_aceptar";
			this.btn_aceptar.Size = new System.Drawing.Size(116, 33);
			this.btn_aceptar.TabIndex = 4;
			this.btn_aceptar.Text = "Aceptar";
			this.btn_aceptar.UseVisualStyleBackColor = true;
			this.btn_aceptar.Click += new System.EventHandler(this.Btn_aceptarClick);
			// 
			// FormScore
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.CornflowerBlue;
			this.ClientSize = new System.Drawing.Size(282, 374);
			this.Controls.Add(this.btn_aceptar);
			this.Controls.Add(this.lbl_tiempo);
			this.Controls.Add(this.lbl_puntaje);
			this.Controls.Add(this.lbl_nombre);
			this.Controls.Add(this.pic_avatar);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "FormScore";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Puntaje";
			this.Load += new System.EventHandler(this.FormScoreLoad);
			((System.ComponentModel.ISupportInitialize)(this.pic_avatar)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Button btn_aceptar;
		private System.Windows.Forms.Label lbl_tiempo;
		private System.Windows.Forms.Label lbl_puntaje;
		private System.Windows.Forms.Label lbl_nombre;
		private System.Windows.Forms.PictureBox pic_avatar;
	}
}
