using System;

namespace SongQuiz
{
	public class ClassPartida
	{
		public int categoria_id;
		public int[] cancion_id;
		public string[] cancion;
		public string[] artista;
		public string[] direccion;
		public string[] portada_direccion;
		public string[] opciones;
		
		public ClassPartida()
		{
			cancion_id = new int[5];
			cancion = new string[5];
			artista = new string[5];
			direccion = new string[5];
			portada_direccion = new string[5];
			opciones = new string[15];
		}
	}
}
