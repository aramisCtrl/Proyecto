using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SongQuiz
{
	public partial class MainForm : Form
	{
		public ClassConexionSQL miconexion;
		
		public MainForm()
		{
			InitializeComponent();
		}
		
		void Btn_ingresarClick(object sender, EventArgs e)
		{
//			string nombreUsuario = txt_usuario.Text;
//			string contraseña = txt_contraseña.Text;
//			
//			// Validar el usuario en la base de datos
			ClassConexionSQL conexionSQL = new ClassConexionSQL();
//			if (conexionSQL.CrearConexion() && conexionSQL.ValidarUsuario(nombreUsuario, contraseña))
//			{
				FormMenu form = new FormMenu();
				form.Show();
				this.Hide();
//			}
//			else
//			{
//				MessageBox.Show("Nombre de usuario o contraseña incorrectos.");
//			}
		}
		
	}
}

