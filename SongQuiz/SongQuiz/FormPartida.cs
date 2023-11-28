using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;

namespace SongQuiz
{
	public partial class FormPartida : Form
	{
		int opcionSeleccionada;
		int opcionesCounter = 0;
		int segundos = 0;
		int segundos_countdown = 3;
		int ronda = 0;
		ClassPartida miPartida;
		Button[] btn_opcion;
		string path;
		int tiempo = 1;
		int respuestaCorrecta;
		System.Media.SoundPlayer player;
		

		public FormPartida(ClassPartida mipartida)
		{
			miPartida = mipartida;
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
				tmr_partida.Start();
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

			pic_portada.Image = Image.FromFile(@"" + path + miPartida.portada_direccion[ronda]);

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
			
			tmr_espera1.Start();
		}

		
		void VerificarRespuesta(int opcionSeleccionada)
		{
			if (opcionSeleccionada == respuestaCorrecta)
			{
				btn_opcion[respuestaCorrecta].BackColor = Color.Green;
				player.SoundLocation = (path + "\\Canciones\\Correcta.wav");
    			player.Play();
			}
			else
			{
				btn_opcion[opcionSeleccionada].BackColor = Color.Red;
				btn_opcion[respuestaCorrecta].BackColor = Color.Green;
				player.SoundLocation = (path + "\\Canciones\\Incorrecta.wav");
    			player.Play();
			}
			
			lbl_cancion.Text = miPartida.cancion[ronda];
			lbl_artista.Text = "de "+miPartida.artista[ronda];

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
				MessageBox.Show("Juego completado");
				this.Close();
			}
		}
		
		
		void Tmr_partidaTick(object sender, EventArgs e)
		{
			tiempo++;
	
	        if (tiempo == 26)
	        {
				btn_opcion[0].Enabled=false;
				btn_opcion[1].Enabled=false;
				btn_opcion[2].Enabled=false;
				btn_opcion[3].Enabled=false;
	            btn_opcion[respuestaCorrecta].BackColor = Color.Green;
	            
	            lbl_cancion.Text = miPartida.cancion[ronda];
				lbl_artista.Text = "de "+miPartida.artista[ronda];
	
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
	}
}












