/*
 * Created by SharpDevelop.
 * User: Fiski
 * Date: 23/11/2023
 * Time: 19:08
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace SongQuiz
{
	partial class MainForm
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
			this.btn_ingresar = new System.Windows.Forms.Button();
			this.pic_logo = new System.Windows.Forms.PictureBox();
			this.btn_nuevo = new System.Windows.Forms.Button();
			this.lbl_usuario = new System.Windows.Forms.Label();
			this.lbl_contraseña = new System.Windows.Forms.Label();
			this.txt_usuario = new System.Windows.Forms.TextBox();
			this.txt_contraseña = new System.Windows.Forms.TextBox();
			this.label3 = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).BeginInit();
			this.SuspendLayout();
			// 
			// btn_ingresar
			// 
			this.btn_ingresar.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.btn_ingresar.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_ingresar.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_ingresar.Location = new System.Drawing.Point(255, 472);
			this.btn_ingresar.Name = "btn_ingresar";
			this.btn_ingresar.Size = new System.Drawing.Size(158, 47);
			this.btn_ingresar.TabIndex = 2;
			this.btn_ingresar.Text = "Ingresar";
			this.btn_ingresar.UseVisualStyleBackColor = true;
			this.btn_ingresar.Click += new System.EventHandler(this.Btn_ingresarClick);
			// 
			// pic_logo
			// 
			this.pic_logo.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.pic_logo.Image = ((System.Drawing.Image)(resources.GetObject("pic_logo.Image")));
			this.pic_logo.Location = new System.Drawing.Point(195, 3);
			this.pic_logo.Name = "pic_logo";
			this.pic_logo.Size = new System.Drawing.Size(300, 300);
			this.pic_logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.pic_logo.TabIndex = 1;
			this.pic_logo.TabStop = false;
			// 
			// btn_nuevo
			// 
			this.btn_nuevo.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btn_nuevo.Cursor = System.Windows.Forms.Cursors.Hand;
			this.btn_nuevo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btn_nuevo.Location = new System.Drawing.Point(512, 595);
			this.btn_nuevo.Name = "btn_nuevo";
			this.btn_nuevo.Size = new System.Drawing.Size(158, 46);
			this.btn_nuevo.TabIndex = 3;
			this.btn_nuevo.Text = "Registrarse";
			this.btn_nuevo.UseVisualStyleBackColor = true;
			this.btn_nuevo.Click += new System.EventHandler(this.Btn_nuevoClick);
			// 
			// lbl_usuario
			// 
			this.lbl_usuario.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.lbl_usuario.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_usuario.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.lbl_usuario.Location = new System.Drawing.Point(132, 329);
			this.lbl_usuario.Name = "lbl_usuario";
			this.lbl_usuario.Size = new System.Drawing.Size(194, 48);
			this.lbl_usuario.TabIndex = 3;
			this.lbl_usuario.Text = "Usuario:";
			this.lbl_usuario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// lbl_contraseña
			// 
			this.lbl_contraseña.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.lbl_contraseña.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lbl_contraseña.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.lbl_contraseña.Location = new System.Drawing.Point(132, 394);
			this.lbl_contraseña.Name = "lbl_contraseña";
			this.lbl_contraseña.Size = new System.Drawing.Size(194, 48);
			this.lbl_contraseña.TabIndex = 4;
			this.lbl_contraseña.Text = "Contraseña:";
			this.lbl_contraseña.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// txt_usuario
			// 
			this.txt_usuario.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.txt_usuario.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.txt_usuario.Location = new System.Drawing.Point(332, 338);
			this.txt_usuario.Name = "txt_usuario";
			this.txt_usuario.Size = new System.Drawing.Size(213, 30);
			this.txt_usuario.TabIndex = 0;
			// 
			// txt_contraseña
			// 
			this.txt_contraseña.Anchor = System.Windows.Forms.AnchorStyles.Top;
			this.txt_contraseña.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.txt_contraseña.Location = new System.Drawing.Point(332, 403);
			this.txt_contraseña.Name = "txt_contraseña";
			this.txt_contraseña.Size = new System.Drawing.Size(213, 30);
			this.txt_contraseña.TabIndex = 1;
			this.txt_contraseña.TextChanged += new System.EventHandler(this.Txt_contraseñaTextChanged);
			// 
			// label3
			// 
			this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
			this.label3.Location = new System.Drawing.Point(322, 592);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(184, 49);
			this.label3.TabIndex = 7;
			this.label3.Text = "¿Nuevo Usuario?";
			this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.CornflowerBlue;
			this.ClientSize = new System.Drawing.Size(682, 653);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.txt_contraseña);
			this.Controls.Add(this.txt_usuario);
			this.Controls.Add(this.lbl_contraseña);
			this.Controls.Add(this.lbl_usuario);
			this.Controls.Add(this.btn_nuevo);
			this.Controls.Add(this.pic_logo);
			this.Controls.Add(this.btn_ingresar);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.Name = "MainForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "SongQuiz";
			((System.ComponentModel.ISupportInitialize)(this.pic_logo)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox txt_contraseña;
		private System.Windows.Forms.TextBox txt_usuario;
		private System.Windows.Forms.Label lbl_contraseña;
		private System.Windows.Forms.Label lbl_usuario;
		private System.Windows.Forms.Button btn_nuevo;
		private System.Windows.Forms.PictureBox pic_logo;
		private System.Windows.Forms.Button btn_ingresar;
		
		void Btn_mostrar(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			
		}
	}
}
