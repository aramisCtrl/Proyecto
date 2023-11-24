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
		    dsDatos = miconexion.EjecutarSentencia("exec sp_ObtenerCanciones " + mipartida.categoria_id);
		
		    // Verificar si el DataSet tiene una tabla y al menos una fila
		    if (dsDatos != null && dsDatos.Tables.Count > 0 && dsDatos.Tables[0].Rows.Count > 0)
		    {
		        DataTable tabla = dsDatos.Tables[0];
		
		        // Inicializar las propiedades del objeto ClassPartida con los datos del DataSet
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
		        // Manejar el caso en el que no se devuelvan datos
		        MessageBox.Show("No se encontraron datos para la categoría especificada.");
		    }
		}
    }
}


