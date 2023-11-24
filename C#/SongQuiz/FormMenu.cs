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
    public partial class FormMenu : Form
    {
    	public ClassConexionSQL miconexion;
    	public ClassPartida mipartida;
    	
        public FormMenu(ClassConexionSQL Miconexion)
        {
        	miconexion = Miconexion;
            InitializeComponent();
        }
		
		void Btn_partidaClick(object sender, EventArgs e)
		{
		    mipartida = new ClassPartida();
		
		    Button btn_aux;
		    btn_aux = (Button)sender;
		    mipartida.categoria_id = int.Parse(btn_aux.Tag.ToString());
		
		    DataSet dsDatos = new DataSet();
		    
		    if(mipartida.categoria_id == 6)
		    {
		    	dsDatos = miconexion.EjecutarSentencia("exec sp_ObtenerCancionesMix");
		    }
		    else
		    {
		    	dsDatos = miconexion.EjecutarSentencia("exec sp_ObtenerCanciones " + mipartida.categoria_id);
		    }
		    
		    if (dsDatos != null && dsDatos.Tables.Count > 0 && dsDatos.Tables[0].Rows.Count > 0)
		    {
		        DataTable tabla = dsDatos.Tables[0];
		
		        int rowCount = tabla.Rows.Count;
		
		        mipartida.cancion_id = new int[rowCount];
		        mipartida.cancion = new string[rowCount];
		        mipartida.artista = new string[rowCount];
		        mipartida.direccion = new string[rowCount];
		        mipartida.portada_direccion = new string[rowCount];
		
		        for (int i = 0; i < rowCount; i++)
		        {
		            DataRow row = tabla.Rows[i];
		            mipartida.cancion_id[i] = row.Field<int>("canc_id");
		            mipartida.cancion[i] = row.Field<string>("canc_nombre");
		            mipartida.artista[i] = row.Field<string>("canc_artista");
		            mipartida.direccion[i] = row.Field<string>("canc_direccion");
		            mipartida.portada_direccion[i] = row.Field<string>("canc_portada_direccion");
		        }
		    }
		    else
		    {
		        MessageBox.Show("No se encontraron datos para la categoría especificada.");
		    }
		    ////////////
		    
		    for(int i=0; i<5; i++){
		    	dsDatos = miconexion.EjecutarSentencia("exec sp_ObtenerOpciones");
		    	if (dsDatos != null && dsDatos.Tables.Count > 0 && dsDatos.Tables[0].Rows.Count > 0)
		    	{
			        DataTable tabla = dsDatos.Tables[0];
			
			        int rowCount = tabla.Rows.Count;
			
			        mipartida.cancion_id = new int[rowCount];
			        mipartida.cancion = new string[rowCount];
			        mipartida.artista = new string[rowCount];
			        mipartida.direccion = new string[rowCount];
			        mipartida.portada_direccion = new string[rowCount];
			
			        for (int j = 0; j < rowCount; j++)
			        {
			            DataRow row = tabla.Rows[j];
			            mipartida.opciones[j] = row.Field<string>("opci_descripcion");
			        }
			    }
			    else
			    {
		        	MessageBox.Show("No se encontraron datos para la categoría especificada.");
		    	}
		    }
		    
		}
		
		void Button2Click(object sender, EventArgs e)
		{
			FormPartida form = new FormPartida();
			form.ShowDialog();
			this.Hide();
		}
    }
}


