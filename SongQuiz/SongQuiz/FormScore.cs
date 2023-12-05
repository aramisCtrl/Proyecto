using System;
using System.Drawing;
using System.Windows.Forms;

namespace SongQuiz
{
	public partial class FormScore : Form
	{
		ClassUsuario miUsuario;
		int puntaje, tiempo;
		string path;
		public FormScore(ClassUsuario miusuario, int Puntaje, int Tiempo)
		{
			path = AppDomain.CurrentDomain.BaseDirectory.ToString();
			char caracterAEliminar = '\\';

			if (path.EndsWith(caracterAEliminar.ToString()))
			{
				path = path.Substring(0, path.Length - 1);
			}
			miUsuario = miusuario;
			puntaje = Puntaje;
			tiempo = Tiempo;
			InitializeComponent();
		}
		
		void FormScoreLoad(object sender, EventArgs e)
		{
			pic_avatar.Image = Image.FromFile(@""+path+miUsuario.avatar);
			lbl_nombre.Text = miUsuario.nombre;
			lbl_puntaje.Text = "Puntaje: "+puntaje;
			lbl_tiempo.Text = "Tiempo: "+tiempo+"s.";
		} 
		
		void Btn_aceptarClick(object sender, EventArgs e)
		{
			this.Close();
		}
	}
}
