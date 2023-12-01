using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Xml;

namespace SongQuiz
{
	public partial class FormNuevoUser : Form
	{
		ClassConexionSQL miConexion;
		PictureBox[] pic_avatares;
		string path;
		
		public FormNuevoUser(ClassConexionSQL conexion)
		{
			miConexion = conexion;
			InitializeComponent();
			path = AppDomain.CurrentDomain.BaseDirectory.ToString();
			char caracterAEliminar = '\\';

			if (path.EndsWith(caracterAEliminar.ToString()))
			{
				path = path.Substring(0, path.Length - 1);
			}
		}
		
		
		void FormNuevoUserLoad(object sender, EventArgs e)
		{
			pic_avatares = new PictureBox[] { pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9, pic10, pic11, pic12 };
			for(int i = 0; i<12; i++){
				pic_avatares[i].Click += PicClick;
			}
			
			DataSet dsDatos;
                
			dsDatos = miConexion.EjecutarSentencia("exec sp_ObtenerAvatares");
            
			if (dsDatos != null && dsDatos.Tables.Count > 0 && dsDatos.Tables[0].Rows.Count > 0)
            {
                DataTable tabla = dsDatos.Tables[0];

                int rowCount = tabla.Rows.Count;

                for (int i = 0; i < rowCount; i++)
                {
                    DataRow row = tabla.Rows[i];
                    pic_avatares[i].Image = Image.FromFile(@""+path+row.Field<string>("avat_direccion"));
                }
            }
		}
		
		void PicClick(object sender, EventArgs e)
		{
			PictureBox pic_aux;
            pic_aux = (PictureBox)sender;
            pic_central.Image = pic_aux.Image;
            pic_central.Tag = pic_aux.Tag;
		}
		
		
		void Btn_cancelarClick(object sender, EventArgs e)
		{
			this.Close();
		}
		
		
		void Btn_confirmarClick(object sender, EventArgs e)
		{
			if(pic_central.Image != null && txt_usuario.Text != "" && txt_contraseña.Text != "" && txt_confirmar_contraseña.Text == txt_contraseña.Text){
				
				int avatar = int.Parse(pic_central.Tag.ToString());
				string nombre = txt_usuario.Text;
				string contraseña = txt_contraseña.Text;
				
				if(miConexion.CheckearUsuario(nombre)==false){
					try
					{
						miConexion.EjecutarComandoSQL("insert into usuarios (usua_nombre, usua_contraseña, usua_avat_id) values ('"+nombre+"', '"+contraseña+"', "+avatar+")");
						MessageBox.Show("Usuario creado con éxito", "Usuario Creado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
						this.Close();
					}
					
					catch
					{
						MessageBox.Show("Error", "Error al crear usuario", MessageBoxButtons.OK, MessageBoxIcon.Error);
					}
				}
				
				else{
					MessageBox.Show("Este nombre de usuario no se encuentra disponible", "Nombre No Disponible", MessageBoxButtons.OK, MessageBoxIcon.Error);
				}
			}
			else{
				MessageBox.Show("Compruebe los datos ingresados", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
				
		}
				
		
		void Txt_contraseñaTextChanged(object sender, EventArgs e)
		{
			txt_contraseña.PasswordChar = '●';
		}
				
		
		void Txt_confirmar_contraseñaTextChanged(object sender, EventArgs e)
		{
			txt_confirmar_contraseña.PasswordChar = '●';
		}
	}
}
