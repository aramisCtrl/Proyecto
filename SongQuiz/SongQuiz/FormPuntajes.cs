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
    public partial class FormPuntajes : Form
    {
        private ClassConexionSQL miConexion;
        int categoria;
        string path;
        
        public FormPuntajes(ClassConexionSQL miconexion, int cate)
        {
        	path = AppDomain.CurrentDomain.BaseDirectory.ToString();
			char caracterAEliminar = '\\';

			if (path.EndsWith(caracterAEliminar.ToString()))
			{
				path = path.Substring(0, path.Length - 1);
			}
            miConexion = miconexion;
            categoria = cate;
            InitializeComponent();
            LlenarGrilla();
        }

        private void LlenarGrilla()
        {
            string consulta = "EXEC sp_LlenarGrilla @categoria";

            var parametros = new Dictionary<string, object>();
            parametros.Add("@categoria", categoria);

            if (miConexion.LLenarGrid(ref dataGridView1, consulta, parametros))
            {
                List<string> direccionesAvatares = new List<string>();
                List<string> nombresUsuarios = new List<string>();

                foreach (DataGridViewRow row in dataGridView1.Rows)
                {
                    if (row.Cells["avat_direccion"].Value != null)
                        direccionesAvatares.Add(row.Cells["avat_direccion"].Value.ToString());

                    if (row.Cells["usua_nombre"].Value != null)
                        nombresUsuarios.Add(row.Cells["usua_nombre"].Value.ToString());
                }

                if (direccionesAvatares.Count >= 1) pic_1.Image = Image.FromFile(@""+path+direccionesAvatares[0]);
                if (direccionesAvatares.Count >= 2) pic_2.Image = Image.FromFile(@""+path+direccionesAvatares[1]);
                if (direccionesAvatares.Count >= 3) pic_3.Image = Image.FromFile(@""+path+direccionesAvatares[2]);

                if (nombresUsuarios.Count >= 1) lbl_1.Text = nombresUsuarios[0];
                if (nombresUsuarios.Count >= 2) lbl_2.Text = nombresUsuarios[1];
                if (nombresUsuarios.Count >= 3) lbl_3.Text = nombresUsuarios[2];
            }
            else
            {
                MessageBox.Show("Error al llenar la grilla");
            }
        }
    }
}




