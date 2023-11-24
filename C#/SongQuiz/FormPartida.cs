using System;
using System.Drawing;
using System.Windows.Forms;

namespace SongQuiz
{
    public partial class FormPartida : Form
    {
        int segundos = 5;
        int ronda = 0;
        ClassPartida Partida;

        public FormPartida()
        {
        	System.Media.SoundPlayer player = new System.Media.SoundPlayer(@"C:\Users\Fiski\Documents\GitHub\Proyecto\Canciones\5 segundos.wav");
			player.Play();
            InitializeComponent();
			IniciarCuentaRegresiva();
        }

        void IniciarCuentaRegresiva()
        {
            lbl_timer.Text = segundos.ToString();
            tmr_tiempo.Start();
        }

        void Tmr_tiempoTick(object sender, EventArgs e)
        {
            segundos--;

            // Verificar si la cuenta regresiva ha terminado
            if (segundos >= 1)
            {
                // Actualizar el label con el tiempo restante
                lbl_timer.Text = segundos.ToString();
            }
            else
            {
            	lbl_timer.Text = "¡Adivina!";
                // Detener el temporizador
                tmr_tiempo.Stop();

                // Realizar otras acciones después de la cuenta regresiva, si es necesario
                // Puedes llamar a comienzo() u otras funciones aquí
            }
        }

        // Resto del código...
    }
}









