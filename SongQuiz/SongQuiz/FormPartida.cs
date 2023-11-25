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
        Button[] btn_opcion;	

        public FormPartida()
        {
        	System.Media.SoundPlayer player = new System.Media.SoundPlayer(@"C:\Users\Fiski\Documents\GitHub\Proyecto\SongQuiz\Canciones\5 segundos.wav");
			player.Play();
			InitializeComponent();
			this.Load += new EventHandler(FormPartidaLoad);
			IniciarCuentaRegresiva();
        }

        void IniciarCuentaRegresiva()
        {
            lbl_timer.Text = segundos.ToString();
            tmr_countdown.Start();
        }

        void Tmr_countdownTick(object sender, EventArgs e)
        {
            segundos--;
            
            if (segundos >= 1)
            {
                lbl_timer.Text = segundos.ToString();
            }
            else
            {
            	lbl_timer.Text = "¡Ya!";
                tmr_countdown.Stop();
            }
        }
		
		void FormPartidaLoad(object sender, EventArgs e)
		{
            this.FormBorderStyle = FormBorderStyle.None;
            this.WindowState = FormWindowState.Normal; // Cambiado a Normal para ajustar correctamente el tamaño

            int taskBarHeight = Screen.PrimaryScreen.Bounds.Height - Screen.PrimaryScreen.WorkingArea.Height;
            this.Bounds = new Rectangle(0, 0, Screen.PrimaryScreen.Bounds.Width, Screen.PrimaryScreen.Bounds.Height - taskBarHeight);
            this.WindowState = FormWindowState.Maximized;
            
            btn_opcion = new Button[] { btn_opcion1, btn_opcion2, btn_opcion3, btn_opcion4};
		}
		
		void Timer_partidaTick(object sender, EventArgs e)
		{
			
		}
    }
}









