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
	public partial class MainForm : Form
	{
		public ClassConexionSQL miconexion;
		public ClassUsuario miusuario;
		string path;
		
		public MainForm()
		{
			InitializeComponent();
		}
		
		void Btn_ingresarClick(object sender, EventArgs e)
		{
		    string nombreUsuario = txt_usuario.Text;
		    string contraseña = txt_contraseña.Text;
		
		    ClassConexionSQL conexionSQL = new ClassConexionSQL();
		    if (conexionSQL.CrearConexion() && conexionSQL.ValidarUsuario(nombreUsuario, contraseña))
		    {
		        miusuario = new ClassUsuario();
		
		        DataSet dsDatos;
		
		        dsDatos = conexionSQL.EjecutarSentencia("exec sp_ObtenerUsuario '" + nombreUsuario + "'");
		
		        if (dsDatos != null && dsDatos.Tables.Count > 0 && dsDatos.Tables[0].Rows.Count > 0)
		        {
		            DataTable tabla = dsDatos.Tables[0];
		
		            int rowCount = tabla.Rows.Count;
		
		            miusuario.id = tabla.Rows[0].Field<int>("usua_id");
		            miusuario.nombre = tabla.Rows[0].Field<string>("usua_nombre");
		            miusuario.avatar = tabla.Rows[0].Field<string>("avat_direccion");
		        }
		
		        FormMenu form = new FormMenu(miusuario);
		        form.Show();
		        this.Hide();
		    }
		    else
		    {
		        MessageBox.Show("Nombre de usuario o contraseña incorrectos.");
		    }
		}

		
		void txt_contraseñaClick(object sender, EventArgs e)
		{
		
		}
		
		
		void Txt_contraseñaTextChanged(object sender, EventArgs e)
		{
			txt_contraseña.PasswordChar = '●';
		}
		
		
		void Btn_nuevoClick(object sender, EventArgs e)
		{
			ClassConexionSQL conexionSQL = new ClassConexionSQL();
			if (conexionSQL.CrearConexion())
			{
				FormNuevoUser form = new FormNuevoUser(conexionSQL);
				this.Hide();
				form.ShowDialog();
				this.Show();
			}		
		}
	}
}

