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
	public partial class FormPartida : Form
	{
		int puntaje_inicial = 1000;
		int punt_tiempo=1;
		int puntaje = 0;
		int opcionSeleccionada;
		int opcionesCounter = 0;
		int segundos_countdown = 3;
		int ronda = 0;
		int tiempo = 1;
		int respuestaCorrecta;
		string path;
		
		ClassPartida miPartida;
		ClassUsuario miUsuario;
		ClassConexionSQL miConexion;
		Button[] btn_opcion;
		System.Media.SoundPlayer player;
		
		public FormPartida(ClassPartida mipartida, ClassUsuario miusuario, ClassConexionSQL miconexion)
		{
			miUsuario = miusuario;
			miPartida = mipartida;
			miConexion = miconexion;
			
			player = new System.Media.SoundPlayer();
			InitializeComponent();
			this.Load += new EventHandler(FormPartidaLoad);
			
			path = AppDomain.CurrentDomain.BaseDirectory.ToString();
			char caracterAEliminar = '\\';

			if (path.EndsWith(caracterAEliminar.ToString()))
			{
				path = path.Substring(0, path.Length - 1);
			}
			
			IniciarCuentaRegresiva();
		}
			
		void FormPartidaLoad(object sender, EventArgs e)
		{
			pic_categoria.Image = Image.FromFile(@""+path+"\\Imagenes\\Categorias\\"+miPartida.categoria_id+".png");
			pic_avatar.Image = Image.FromFile(@""+path+miUsuario.avatar);
			lbl_nombre.Text = miUsuario.nombre;
			
			this.FormBorderStyle = FormBorderStyle.None;
			this.WindowState = FormWindowState.Normal;

			int taskBarHeight = Screen.PrimaryScreen.Bounds.Height - Screen.PrimaryScreen.WorkingArea.Height;
			this.Bounds = new Rectangle(0, 0, Screen.PrimaryScreen.Bounds.Width, Screen.PrimaryScreen.Bounds.Height - taskBarHeight);
			this.WindowState = FormWindowState.Maximized;

			btn_opcion = new Button[] { btn_opcion1, btn_opcion2, btn_opcion3, btn_opcion4 };
			btn_opcion[0].Click += BtnOpcionClick;
			btn_opcion[1].Click += BtnOpcionClick;
			btn_opcion[2].Click += BtnOpcionClick;
			btn_opcion[3].Click += BtnOpcionClick;
			
			btn_opcion[0].Enabled=false;
			btn_opcion[1].Enabled=false;
			btn_opcion[2].Enabled=false;
			btn_opcion[3].Enabled=false;
			
			pic_portada.Image = Image.FromFile(@""+path+"\\Imagenes\\Logos\\Logo Transparente.png");
		}

		void IniciarCuentaRegresiva()
		{
			player.SoundLocation = path + "\\Canciones\\5 segundos.wav";
			player.Play();
			lbl_timer.Text = segundos_countdown.ToString();
			tmr_countdown.Start();
		}

		void Tmr_countdownTick(object sender, EventArgs e)
		{
			segundos_countdown--;

			if (segundos_countdown >= 1)
			{
				lbl_timer.Text = segundos_countdown.ToString();
			}
			else
			{
				lbl_timer.Text = "¡Ya!";
			}

			if (segundos_countdown == -2)
			{
				partida();
				tmr_countdown.Stop();
			}
		}

		void partida()
		{
			btn_opcion[0].Enabled=true;
			btn_opcion[1].Enabled=true;
			btn_opcion[2].Enabled=true;
			btn_opcion[3].Enabled=true;
			lbl_timer.Text = tiempo.ToString();
			
			if (ronda < 5)
			{
				lbl_score.Text = "";
				puntaje_inicial=1000;
				tmr_partida.Start();
				tmr_puntaje.Start();
				ReproducirCancion(miPartida.direccion[ronda]);
				MostrarPortadaYOpciones();
			}
			else
			{
				
				MessageBox.Show("Juego completado");
			}
		}

		void ReproducirCancion(string ruta)
		{
			string cancion = path + ruta;
			player.SoundLocation = @"" + (cancion);
			player.Play();
		}

		void MostrarPortadaYOpciones()
		{
			int[] rnd = new int[4];
			Random random = new Random();

			pic_portada.Image = Image.FromFile(@"" + path + miPartida.portada_blur_direccion[ronda]);

			string[] opciones = new string[4];

			opciones[0] = miPartida.cancion[ronda];
			opciones[1] = miPartida.opciones[opcionesCounter];
			opciones[2] = miPartida.opciones[opcionesCounter + 1];
			opciones[3] = miPartida.opciones[opcionesCounter + 2];

			int[] disponibles = { 0, 1, 2, 3 };

			for (int i = 0; i < 4; i++)
			{
				int index = random.Next(0, disponibles.Length);
				rnd[i] = disponibles[index];
				disponibles[index] = disponibles[disponibles.Length - 1];
				Array.Resize(ref disponibles, disponibles.Length - 1);
			}

			btn_opcion[rnd[0]].Text = opciones[0];
			btn_opcion[rnd[1]].Text = opciones[1];
			btn_opcion[rnd[2]].Text = opciones[2];
			btn_opcion[rnd[3]].Text = opciones[3];

			btn_opcion[0].Tag = 0;
			btn_opcion[1].Tag = 1;
			btn_opcion[2].Tag = 2;
			btn_opcion[3].Tag = 3;

			respuestaCorrecta = int.Parse(btn_opcion[rnd[0]].Tag.ToString());

			opcionesCounter += 3;
		}

		void BtnOpcionClick(object sender, EventArgs e)
		{
			btn_opcion[0].Enabled=false;
			btn_opcion[1].Enabled=false;
			btn_opcion[2].Enabled=false;
			btn_opcion[3].Enabled=false;
			
			Button btnClickeado = (Button)sender;
			opcionSeleccionada = int.Parse(btnClickeado.Tag.ToString());

			tmr_partida.Stop();
			tmr_puntaje.Stop();
			
			tmr_espera1.Start();
		}

		void VerificarRespuesta(int opcionSeleccionada)
		{
			if (opcionSeleccionada == respuestaCorrecta)
			{
				btn_opcion[respuestaCorrecta].BackColor = Color.Green;
				player.SoundLocation = (path + "\\Canciones\\Correcta.wav");
				lbl_score.ForeColor = Color.Green;
				lbl_score.Text = "+"+puntaje_inicial+" Puntos";
				puntaje += puntaje_inicial;
    			player.Play();
			}
			else
			{
				btn_opcion[opcionSeleccionada].BackColor = Color.Red;
				btn_opcion[respuestaCorrecta].BackColor = Color.Green;
				lbl_score.ForeColor = Color.Red;
				lbl_score.Text = "+0 Puntos";
				player.SoundLocation = (path + "\\Canciones\\Incorrecta.wav");
    			player.Play();
			}
			pic_portada.Image = Image.FromFile(@"" + path + miPartida.portada_direccion[ronda]);
			lbl_cancion.Text = miPartida.cancion[ronda];
			lbl_artista.Text = "de "+miPartida.artista[ronda];
			lbl_puntaje.Text = "Puntaje: " + puntaje;

			tmr_espera2.Start();
		}
		
		void SiguientePregunta()
		{
			ronda++;

			if (ronda < 5)
			{
				partida();
			}
			else
			{
				player.Stop();
				FormScore form = new FormScore(miUsuario, puntaje, punt_tiempo);
				form.ShowDialog();
				string comando = miUsuario.id + " ," + puntaje + " ," + punt_tiempo + " ," + miPartida.categoria_id;
				miConexion.EjecutarComandoSQL("exec sp_InsertOrUpdatePuntaje " + comando);
				this.Close();
			}
		}
		
		void Tmr_partidaTick(object sender, EventArgs e)
		{
			punt_tiempo++;
			tiempo++;
		
	        if (tiempo == 26)
	        {
	        	tmr_partida.Stop();
				btn_opcion[0].Enabled=false;
				btn_opcion[1].Enabled=false;
				btn_opcion[2].Enabled=false;
				btn_opcion[3].Enabled=false;
	            btn_opcion[respuestaCorrecta].BackColor = Color.Green;
	            
	            pic_portada.Image = Image.FromFile(@"" + path + miPartida.portada_direccion[ronda]);
	            lbl_cancion.Text = miPartida.cancion[ronda];
				lbl_artista.Text = "de "+miPartida.artista[ronda];
				lbl_score.ForeColor = Color.Red;
				lbl_score.Text = "+0 Puntos";
	
	            tmr_espera2.Start();
	        }
	        
	        else{
	        	lbl_timer.Text = tiempo.ToString();
	        }
		}
		
		void Tmr_espera2Tick(object sender, EventArgs e)
		{
			tmr_espera2.Stop();
            tmr_espera2.Dispose();

            foreach (Button btn in btn_opcion)
            {
                btn.BackColor = SystemColors.Control;
            }
            lbl_cancion.Text = "";
            lbl_artista.Text = "";
            tiempo=1;

            SiguientePregunta();
		}
		
		void Tmr_espera1Tick(object sender, EventArgs e)
		{
			tmr_espera1.Stop();
            tmr_espera1.Dispose();
			VerificarRespuesta(opcionSeleccionada);	
		}
		
		void Tmr_puntajeTick(object sender, EventArgs e)
		{
			puntaje_inicial -=20;
		}
	}
}












