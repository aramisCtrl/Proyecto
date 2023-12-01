create table puntajes(
	punt_id int identity(1,1) primary key not null,
	punt_usua_id int not null,
	punt_puntaje int not null,
	punt_tiempo varchar(255) not null,
	punt_cate_id int not null
)

create table categorias(
	cate_id int identity(1,1) primary key not null,
	cate_descripcion varchar(255) not null,
)

create table canciones(
	canc_id int identity(1,1) primary key not null,
	canc_direccion varchar(255) not null,
	canc_portada_direccion varchar(255) not null,
	canc_nombre varchar(255) not null,
	canc_artista varchar(255) not null,
	canc_cate_id int not null
)

create table usuarios(
	usua_id int identity(1,1) primary key not null,
	usua_nombre varchar(255) not null,
	usua_contraseña varchar(255) not null,
	usua_avat_id int not null
)

create table avatares(
	avat_id int identity(1,1) primary key not null,
	avat_direccion varchar(255) not null
)

create table canciones_opciones(
	caop_id int identity(1,1) primary key not null,
	caop_canc_id int not null,
	caop_opci_id int not null
)

create table opciones(
	opci_id int identity(1,1) primary key not null,
	opci_descripcion varchar(255) not null
)

----------------------------------------------------

insert into categorias(cate_descripcion) values ('Pop'),('Rock'),('Latino'),('Rap'),('Kpop')
insert into categorias(cate_descripcion) values ('Mix')

select * from canciones

insert into canciones(canc_nombre, canc_artista, canc_direccion, canc_cate_id, canc_portada_direccion) values
('7 rings', 'Ariana Grande', '\Canciones\Pop\7 rings.wav',1,'\Imagenes\Portadas\Pop\7 rings.jpg'),
('Animals', 'Maroon 5', '\Canciones\Pop\Animnals.wav',1,'\Imagenes\Portadas\Pop\Animals.jpg'),
('As It Was', 'Harry Styles', '\Canciones\Pop\As It Was.wav',1,'\Imagenes\Portadas\Pop\As It Was.jpg'),
('Attention', 'Charlie Puth', '\Canciones\Pop\Attention.wav',1,'\Imagenes\Portadas\Pop\Attention.jpg'),
('bad guy', 'Billie Eilish', '\Canciones\Pop\bad guy.wav',1,'\Imagenes\Portadas\Pop\bad guy.jpg'),
('Believer', 'Imagine Dragons', '\Canciones\Pop\Believer.wav',1,'\Imagenes\Portadas\Pop\Believer.jpg'),
('Blinding Lights', 'The Weeknd', '\Canciones\Pop\Blinding Lights.wav',1,'\Imagenes\Portadas\Pop\Blinding Lights.jpg'),
('Crazy In Love (feat. Jay-Z)', 'Beyoncé, JAY-Z', '\Canciones\Pop\Crazy In Love (feat. Jay-Z).wav',1,'\Imagenes\Portadas\Pop\Crazy In Love (feat. Jay-Z).jpg'),
('Dark Horse ', 'Katy Perry, Juicy J', '\Canciones\Pop\Dark Horse.wav',1,'\Imagenes\Portadas\Pop\Dark Horse.jpg'),
('Don''t Start Now', 'Dua Lipa', '\Canciones\Pop\Don''t Start Now.wav',1,'\Imagenes\Portadas\Pop\Don''t Start Now.jpg'),
('good 4 you', 'Olivia Rodrigo', '\Canciones\Pop\good 4 you.wav',1,'\Imagenes\Portadas\Pop\good 4 you.jpg'),
('Poker Face', 'Lady Gaga', '\Canciones\Pop\Poker Face.wav',1,'\Imagenes\Portadas\Pop\Poker Face.jpg'),
('Same Old Love', 'Selena Gomez', '\Canciones\Pop\Same Old Love.wav',1,'\Imagenes\Portadas\Pop\Same Old Love.jpg'),
('Say So', 'Doja Cat', '\Canciones\Pop\Say So.wav',1,'\Imagenes\Portadas\Pop\Say So.jpg'),
('Shake It Off', 'Taylor Swift', '\Canciones\Pop\Shake It Off.wav',1,'\Imagenes\Portadas\Pop\Shake It Off.jpg'),
('Starships', 'Nicki Minaj', '\Canciones\Pop\Starships.wav',1,'\Imagenes\Portadas\Pop\Starships.jpg'),
('Summertime Sadness', 'Lana Del Rey', '\Canciones\Pop\Summertime Sadness.wav',1,'\Imagenes\Portadas\Pop\Summertime Sadness.jpg'),
('This Is What You Came For', 'Calvin Harris, Rihanna', '\Canciones\Pop\This Is What You Came For.wav',1,'\Imagenes\Portadas\Pop\This Is What You Came For.jpg'),
('Toxic', 'Britney Spears', '\Canciones\Pop\Toxic.wav',1,'\Imagenes\Portadas\Pop\Toxic.jpg'),
('Uptown Funk (feat. Bruno Mars)', 'Mark Ronson, Bruno Mars', '\Canciones\Pop\Uptown Funk (feat. Bruno Mars).wav',1,'\Imagenes\Portadas\Pop\Uptown Funk (feat. Bruno Mars).jpg')

insert into canciones(canc_nombre, canc_artista, canc_direccion, canc_cate_id, canc_portada_direccion) values 
('A Las Nueve', 'No Te Va Gustar', '\Canciones\Rock\A Las Nueve.wav',2,'\Imagenes\Portadas\Rock\A Las Nueve.jpg'),
('Back In Black', 'AC/DC', '\Canciones\Rock\Back In Black.wav',2,'\Imagenes\Portadas\Rock\Back In Black.jpg'),
('Beggin''', 'Måneskin', '\Canciones\Rock\Beggin''.wav',2,'\Imagenes\Portadas\Rock\Beggin''.jpg'),
('Bohemian Rhapsody', 'Queen', '\Canciones\Rock\Bohemian Rhapsody.wav',2,'\Imagenes\Portadas\Rock\Bohemian Rhapsody.jpg'),
('Creep','Radiohead', '\Canciones\Rock\Creep.wav',2,'\Imagenes\Portadas\Rock\Creep.jpg'),
('Crimen', 'Gustavo Cerati', '\Canciones\Rock\Crimen.wav',2,'\Imagenes\Portadas\Rock\Crimen.jpg'),
('De Música Ligera', 'Soda Stereo', '\Canciones\Rock\De Música Ligera.wav',2,'\Imagenes\Portadas\Rock\De Música Ligera.jpg'),
('Dreams', 'Fleetwood Mac', '\Canciones\Rock\Dreams.wav',2,'\Imagenes\Portadas\Rock\Dreams.jpg'),
('Flaca', 'Andrés Calamaro', '\Canciones\Rock\Flaca.wav',2,'\Imagenes\Portadas\Rock\Flaca.jpg'),
('Highway to Hell', 'AC/DC', '\Canciones\Rock\Highway to Hell.wav',2,'\Imagenes\Portadas\Rock\Highway to Hell.jpg'),
('Jumpsuit', 'Twenty One Pilots', '\Canciones\Rock\Jumpsuit.wav',2,'\Imagenes\Portadas\Rock\Jumpsuit.jpg'),
('Lamento Boliviano', 'Los Enanitos Verdes', '\Canciones\Rock\Lamento Boliviano.wav',2,'\Imagenes\Portadas\Rock\Lamento Boliviano.jpg'),
('Loco (Tu Forma De Ser)', 'Los Auténticos Decadentes', '\Canciones\Rock\Loco (Tu Forma De Ser).wav',2,'\Imagenes\Portadas\Rock\Loco (Tu Forma De Ser).jpg'),
('Numb', 'Linkin Park', '\Canciones\Rock\Numb.wav',2,'\Imagenes\Portadas\Rock\Numb.jpg'),
('Pupilas Lejanas', 'Los Pericos', '\Canciones\Rock\Pupilas Lejanas.wav',2,'\Imagenes\Portadas\Rock\Pupilas Lejanas.jpg'),
('Qué Ves?', 'Divididos', '\Canciones\Rock\Qué Ves?.wav',2,'\Imagenes\Portadas\Rock\Qué Ves?.jpg'),
('Smeels Like Teen Spirit', 'Nirvana', '\Canciones\Rock\Smeels Like Teen Spirit.wav',2,'\Imagenes\Portadas\Rock\Smeels Like Teen Spirit.jpg'),
('Sweet Child O'' Mine', 'Guns N'' Roses', '\Canciones\Rock\Sweet Child O'' Mine.wav',2,'\Imagenes\Portadas\Rock\Sweet Child O'' Mine.jpg'),
('Un Poco de Amor Francés', 'Patricio Rey y sus Redonditos de Ricota', '\Canciones\Rock\Un Poco de Amor Francés.wav',2,'\Imagenes\Portadas\Rock\Un Poco de Amor Francés.jpg'),
('Vasos Vacíos', 'Los Fabulosos Cadillacs', '\Canciones\Rock\Vasos Vacíos.wav',2,'\Imagenes\Portadas\Rock\Vasos Vacíos.jpg')

insert into canciones(canc_nombre, canc_artista, canc_direccion, canc_cate_id, canc_portada_direccion) values 
('Adrenalina (feat. Jennifer Lopez & Ricky Martin)', 'Wisin, Jennifer Lopez, Ricky Martin', '\Canciones\Latino\Adrenalina (feat. Jennifer Lopez & Ricky Martin).wav',3,'\Imagenes\Portadas\Latino\Adrenalina (feat. Jennifer Lopez & Ricky Martin).jpg'),
('Amor A Primera Vista', 'Los Ángeles Azules, Belinda, Lalo Ebratt, Horacio Palencia', '\Canciones\Latino\Amor A Primera Vista.wav',3,'\Imagenes\Portadas\Latino\Amor A Primera Vista.jpg'),
('Baila Conmigo (with Rauw Alejandro)', 'Selena Gomez, Rauw Alejandro', '\Canciones\Latino\Baila Conmigo (with Rauw Alejandro).wav',3,'\Imagenes\Portadas\Latino\Baila Conmigo (with Rauw Alejandro).jpg'),
('Borro Cassette', 'Maluma', '\Canciones\Latino\Borro Cassette.wav',3,'\Imagenes\Portadas\Latino\Borro Cassette.jpg'),
('Calma - Remix', 'Pedro Capó, Farruko', '\Canciones\Latino\Calma - Remix.wav',3,'\Imagenes\Portadas\Latino\Calma - Remix.jpg'),
('Darte un Beso', 'Romeo Santos', '\Canciones\Latino\Darte un Beso.wav',3,'\Imagenes\Portadas\Latino\Darte un Beso.jpg'),
('Despacito', 'Luis Fonsi, Daddy Yankee', '\Canciones\Latino\Despacito.wav',3,'\Imagenes\Portadas\Latino\Despacito.jpg'),
('Don', 'Miranda!', '\Canciones\Latino\Don.wav',3,'\Imagenes\Portadas\Latino\Don.jpg'),
('Échame La Culpa', 'Luis Fonsi, Demi Lovato', '\Canciones\Latino\Échame La Culpa.wav',3,'\Imagenes\Portadas\Latino\Échame La Culpa.jpg'),
('Gasolina', 'Daddy Yankee', '\Canciones\Latino\Gasolina.wav',3,'\Imagenes\Portadas\Latino\Gasolina.jpg'),
('La Gozadera (feat. Marc Anthony)', 'Gente De Zona, Marc Anthony', '\Canciones\Latino\La Gozadera (feat. Marc Anthony).wav',3,'\Imagenes\Portadas\Latino\La Gozadera (feat. Marc Anthony).jpg'),
('La Mordidita (feat. Yotuel)', 'Ricky Martin, Yotuel', '\Canciones\Latino\La Mordidita (feat. Yotuel).wav',3,'\Imagenes\Portadas\Latino\La Mordidita (feat. Yotuel).jpg'),
('Limón y Sal', 'Julieta Venegas', '\Canciones\Latino\Limón y Sal.wav',3,'\Imagenes\Portadas\Latino\Limón y Sal.jpg'),
('Loba', 'Shakira', '\Canciones\Latino\Loba.wav',3,'\Imagenes\Portadas\Latino\Loba.jpg'),
('Los Del Espacio', 'LIT killah, Tiago PZK, Maria Becerra, Duki, Emilia, Rusherking, Big One, FMK', '\Canciones\Latino\Los Del Espacio.wav',3,'\Imagenes\Portadas\Latino\Los Del Espacio.jpg'),
('Reggaetón Lento (Bailemos)', 'CNCO', '\Canciones\Latino\Reggaetón Lento (Bailemos).wav',3,'\Imagenes\Portadas\Latino\Reggaetón Lento (Bailemos).jpg'),
('Sin Pijama', 'Becky G, NATTI NATASHA', '\Canciones\Latino\Sin Pijama.wav',3,'\Imagenes\Portadas\Latino\Sin Pijama.jpg'),
('Taki Taki (with Selena Gomez, Ozuna & Cardi B)', 'DJ Snake, Selena Gomez, Ozuna, Cardi B', '\Canciones\Latino\Taki Taki (with Selena Gomez, Ozuna & Cardi B).wav',3,'\Imagenes\Portadas\Latino\Taki Taki (with Selena Gomez, Ozuna & Cardi B).jpg'),
('Tusa', 'KAROL G, Nicki Minaj', '\Canciones\Latino\Tusa.wav',3,'\Imagenes\Portadas\Latino\Tusa.jpg'),
('Vive Tus Sueños', 'Raini Rodriguez', '\Canciones\Latino\Vive Tus Sueños.wav',3,'\Imagenes\Portadas\Latino\Vive Tus Sueños.jpg')

insert into canciones(canc_nombre, canc_artista, canc_direccion, canc_cate_id, canc_portada_direccion) values 
('212', 'Azealia Banks, Lazy Jay', '\Canciones\Rap\212.wav',4,'\Imagenes\Portadas\Rap\212.jpg'),
('Anaconda', 'Nicki Minaj', '\Canciones\Rap\Anaconda.wav',4,'\Imagenes\Portadas\Rap\Anaconda.jpg'),
('Big Energy', 'Latto', '\Canciones\Rap\Big Energy.wav',4,'\Imagenes\Portadas\Rap\Big Energy.jpg'),
('Black Widow', 'Iggy Azalea, Rita Ora', '\Canciones\Rap\Black Widow.wav',4,'\Imagenes\Portadas\Rap\Black Widow.jpg'),
('Bodak Yellow', 'Cardi B', '\Canciones\Rap\Bodak Yellow.wav',4,'\Imagenes\Portadas\Rap\Bodak Yellow.jpg'),
('Boss Bitch', 'Doja Cat', '\Canciones\Rap\Boss Bitch.wav',4,'\Imagenes\Portadas\Rap\Boss Bitch.jpg'),
('California Love', '2Pac, Roger, Dr. Dre', '\Canciones\Rap\California Love.wav',4,'\Imagenes\Portadas\Rap\California Girl.jpg'),
('Diablo', 'Mac Miller', '\Canciones\Rap\Diablo.wav',4,'\Imagenes\Portadas\Rap\Diablo.jpg'),
('Dip (feat. Nicki Minaj)', 'Tyga, Nicki Minaj', '\Canciones\Rap\Dip (feat. Nicki Minaj).wav',4,'\Imagenes\Portadas\Rap\Dip (feat. Nicki Minaj).jpg'),
('Fancy', 'Iggy Azalea, Charli XCX', '\Canciones\Rap\Fancy.wav',4,'\Imagenes\Portadas\Rap\Fancy.jpg'),
('Gucci Flip Flops (feat. Lil Yachty)', 'Bhad Bhabie, Lil Yachty', '\Canciones\Rap\Gucci Flip Flops (feat. Lil Yachty).wav',4,'\Imagenes\Portadas\Rap\Gucci Flip Flops (feat. Lil Yachty).jpg'),
('HUMBLE.', 'Kendrick Lamar', '\Canciones\Rap\HUMBLE..wav',4,'\Imagenes\Portadas\Rap\HUMBLE..jpg'),
('INDUSTRY BABY', 'Lil Nas X, Jack Harlow', '\Canciones\Rap\INDUSTRY BABY.wav',4,'\Imagenes\Portadas\Rap\INDUSTRY BABY.jpg'),
('Juicy', 'Doja Cat, Tyga', '\Canciones\Rap\Juicy.wav',4,'\Imagenes\Portadas\Rap\Juicy.jpg'),
('Munch (Feeling'' U)', 'Ice Spice', '\Canciones\Rap\Munch (Feeling'' U).wav',4,'\Imagenes\Portadas\Rap\Munch (Feeling'' U).jpg'),
('No Role Modelz', 'J. Cole', '\Canciones\Rap\No Role Modelz.wav',4,'\Imagenes\Portadas\Rap\No Role Modelz.jpg'),
('Best Friend (feat. Doja Cat)', 'Saweetie, Doja Cat', '\Canciones\Rap\Best Friend (feat. Doja Cat).wav',4,'\Imagenes\Portadas\Rap\Best Friend (feat. Doja Cat).jpg'),
('Thot Shit', 'Megan Thee Stallion', '\Canciones\Rap\Thot Shit.wav',4,'\Imagenes\Portadas\Rap\Thot Shit.jpg'),
('WAP (feat. Megan Thee Stallion)', 'Cardi B, Megan Thee Stallion', '\Canciones\Rap\WAP (feat. Megan Thee Stallion).wav',4,'\Imagenes\Portadas\Rap\WAP (feat. Megan Thee Stallion).jpg'),
('Without Me', 'Eminem', '\Canciones\Rap\Without Me.wav',4,'\Imagenes\Portadas\Rap\Without Me.jpg')

insert into canciones(canc_nombre, canc_artista, canc_direccion, canc_cate_id, canc_portada_direccion) values 
('BANG BANG BANG', 'BIGBANG', '\Canciones\Kpop\BANG BANG BANG.wav',5,'\Imagenes\Portadas\Kpop\BANG BANG BANG.jpg'),
('Black Mamba', 'aespa', '\Canciones\Kpop\Black Mamba.wav',5,'\Imagenes\Portadas\Kpop\Black Mamba.jpg'),
('BOOMBAYAH', 'BLACKPINK', '\Canciones\Kpop\BOOMBAYAH.wav',5,'\Imagenes\Portadas\Kpop\BOOMBAYAH.jpg'),
('Burning Up (Fire)', 'BTS', '\Canciones\Kpop\Burning Up (Fire).wav',5,'\Imagenes\Portadas\Kpop\Burning Up (Fire).jpg'),
('CASE 143', 'Stray Kids', '\Canciones\Kpop\CASE 143.wav',5,'\Imagenes\Portadas\Kpop\CASE 143.jpg'),
('DICE', 'NMIXX', '\Canciones\Kpop\DICE.wav',5,'\Imagenes\Portadas\Kpop\DICE.jpg'),
('Drunk-Dazed', 'ENHYPEN', '\Canciones\Kpop\Drunk-Dazed.wav',5,'\Imagenes\Portadas\Kpop\Drunk-Dazed.jpg'),
('FANCY', 'TWICE', '\Canciones\Kpop\FANCY.wav',5,'\Imagenes\Portadas\Kpop\FANCY.jpg'),
('Gangnam Style', 'PSY', '\Canciones\Kpop\Gangnam Style.wav',5,'\Imagenes\Portadas\Kpop\Gangnam Style.jpg'),
('God''s Menu', 'Stray Kids', '\Canciones\Kpop\God''s Menu.wav',5,'\Imagenes\Portadas\Kpop\God''s Menu.jpg'),
('I Am The Best', '2NE1', '\Canciones\Kpop\I Am The Best.wav',5,'\Imagenes\Portadas\Kpop\I Am The Best.jpg'),
('LOVE DIVE', 'IVE', '\Canciones\Kpop\LOVE DIVE.wav',5,'\Imagenes\Portadas\Kpop\LOVE DIVE.jpg'),
('Love Shot', 'EXO', '\Canciones\Kpop\Love Shot.wav',5,'\Imagenes\Portadas\Kpop\Love Shot.jpg'),
('MIC Drop (feat. Desiigner) [Steve Aoki Remix]', 'BTS, Steve Aoki', '\Canciones\Kpop\MIC Drop (feat. Desiigner) [Steve Aoki Remix].wav',5,'\Imagenes\Portadas\Kpop\MIC Drop (feat. Desiigner) [Steve Aoki Remix].jpg'),
('MORE', 'K/DA, Madison Beer, (G)I-DLE, Lexie Liu, Jaira Burns, Seraphine, League of Legends', '\Canciones\Kpop\MORE.wav',5,'\Imagenes\Portadas\Kpop\MORE.jpg'),
('Queencard', '(G)I-DLE', '\Canciones\Kpop\Queencard.wav',5,'\Imagenes\Portadas\Kpop\Queencard.jpg'),
('Sugar Rush Ride', 'TOMORROW X TOGETHER', '\Canciones\Kpop\Sugar Rush Ride.wav',5,'\Imagenes\Portadas\Kpop\Sugar Rush Ride.jpg'),
('Super', 'SEVENTEEN', '\Canciones\Kpop\Super.wav',5,'\Imagenes\Portadas\Kpop\Super.jpg'),
('WA DA DA', 'Kep1er', '\Canciones\Kpop\WA DA DA.wav',5,'\Imagenes\Portadas\Kpop\WA DA DA.jpg'),
('WANNABE', 'ITZY', '\Canciones\Kpop\WANNABE.wav',5,'\Imagenes\Portadas\Kpop\WANNABE.jpg')

select * from opciones

insert into opciones (opci_descripcion) values
('thank u, next'),('imagine'),('bloodline'),
('Maps'),('Sugar'),('Feelings'),
('Music For a Sushi Restaurant'),('Cinema'),('Late Night Talking'),
('LA Girls'),('How Long'),('The Way I Am'),
('xanny'),('you should see me in a crown'),('bury a friend'),
('Thunder'),('Whatever It Takes'),('Next To Me'),
('Save Yours Tears'),('After Hours'),('In Your Eyes'),
('Bad Boy (feat. Sean Paul)'),('Naughty Girl'),('Me, Myself and I'),
('Roar'),('Birthday'),('Unconditionally'),
('Levitating'),('Love Again'),('Physical'),
('drivers license'),('deja vu'),('traitor'),
('LoveGame'),('Paparazzi'),('Just Dance'),
('Kill Em With Kindness'),('Hands To Myself'),('Good For You'),
('Rules'),('Streets'),('Like That (feat. Gucci Mane)'),
('Style'),('Blank Space'),('Out Of The Woods'),
('Pound The Alarm'),('High School'),('Va Va Voom'),
('Born To Die'),('Off To The Races'),('Video Games'),
('We Found Love'),('One Kiss (with Dua Lipa)'),('Summer'),
('Everytime'),('Breathe on Me'),('Me Against the Music (feat. Madonna)'),
('Nothing Breaks Like a Heart (feat. Miley Cyrus)'),('Valerie (feat. Amy Winehouse)'),('Electricity (with Madonna)'),
('Ese Maldito Momento'),('El Error'),('Sin Pena Ni Gloria'),
('You Shook Me All Night Long'),('Hells Bells'),('Shoot to Thrill'),
('Chosen'),('Let''s Gei It Started'),('Somebody Told Me'),
('We Will Rock You'),('Another One Bites The Dust'),('Under Pressure'),
('You'),('Thinking About You'),('Anyone Can Play Guitar'),
('Adiós'),('Lago en el Cielo'),('Me Quedo Aquí'),
('Nada Personal'),('Entre Caníbales'),('Zoom'),
('The Chain'),('Go Your Own Way'),('Don''t Stop'),
('Crímenes perfectos'),('Loco'),('Alta suciedad'),
('If You Want Blood (You''ve Got It)'),('Touch Too Much'),('Girls Got Rhythm'),
('Chlorine'),('My Blood'),('Nico and the Niners'),
('Mi Primer Dia Sin Ti'),('Mejor No Hablemos De Amor'),('Celdas'),
('Vení Raquel'),('Cuando Nació Este Amor Prohibido'),('No Sé Lo Que Hacer'),
('Faint'),('Breaking the Habit'),('Somewhere I Belong'),
('Sin Cadenas'),('La Hiena'),('Monkey Man'),
('Huelga De Amores'),('El Arriero'),('Dame Un Limón'),
('Come As You Are'),('Lithium'),('Something In The Way'),
('Welcome To The Jungle'),('Paradise City'),('Nightrain'),
('El Pibe de los Astilleros'),('Tarea Fina'),('Mi Perro Dinamita'),
('El Matador'),('Mal Bicho'),('Siguiendo La Luna'),
('Que Viva la Vida (feat. Michel Teló)'),('Control (feat. Chris Brown &	Pitbull)'),('Heavy Heavy (feat. Tempo)'),
('Nunca Es Suficiente'),('Otra Noche'),('Cómo Te Voy A Olvidar'),
('Selfish Love (with Selena Gomez)'),('Damelo To'' (feat. Myke Towers)'),('De Una Vez'),
('El Perdedor'),('Sin Contrato'),('Carnaval'),
('Tutu'),('Perdiendo la Cabeza'),('Casualidad'),
('Soy el Mismo'),('Te Robaré'),('Me Encanta'),
('Imposible'),('Sola'),('Dime Que No Te Iras'),
('Perfecta'),('Yo Te Diré'),('Traición'),
('Calypso'),('Apaga La Luz'),('Poco A Poco'),
('Lo Que Pasó, Pasó'),('Tu Príncipe'),('No Me Dejes Solo'),
('Traidora (feat. Marc Anthony)'),('Algo Contigo'),('Piensas (Dile la Verdad) (feat. Gente de Zona)'),
('Adiós'),('Disparo al Corazón'),('Perdóname'),
('Me Voy'),('Eres para Mí (with Anita Tijoux)'),('Sin Documentos'),
('Lo Hecho Está Hecho'),('Did It Again'),('Gypsy'),
('Entre Nosotros (Remix) [con Nicki Nicole]'),('YO SE QUE TU (feat. Rusherking)'),('rápido lento'),
('Tan Fácil'),('Quisiera'),('Para Enamorarte'),
('Mayores'),('Cuando Te Besé'),('MALA SANTA'),
('Loco Contigo (feat. J. Balvin & Tyga)'),('Fuego (with Sean Paul & Anitta, feat. Tainy)'),('Paris (feat. GASHI)'),
('BICHOTA'),('Ay, DiOs Mío!'),('EL MAKINON'),
('Soñar es Desear'),('Lograremos ser humanos'),('Desde hoy'),
('Luxury'),('Miss Camaraderie'),('Ice Princess'),
('Only'),('Feeling Myself'),('The Night Is Still Young'),
('Wheelie (feat. 21 Savage)'),('Sunshine (feat. Lil Wayne & Childish Gambino)'),('It''s Givin'),
('Work'),('Goddess'),('Don''t Need Y''all'),
('I Like It'),('Bartier Cardi (feat. 21 Savage)'),('Be Careful'),
('Get Into It (Yuh)'),('Demons'),('Candy'),
('Changes'),('I Get Around'),('Dear Mama'),
('Rain (feat. Vince Staples)'),('Angel Dust'),('Colors and Shapes'),
('SWISH'),('Taste (feat. Offset)'),('Haute (feat. J. Balvin & Chris Brown)'),
('Fuck Love'),('Bounce'),('Rolex'),
('Geek''d (feat. Lil Baby)'),('Hi Bich'),('Trust Me (feat. Ty Dolla $ign)'),
('DNA.'),('LOVE. FEAT. ZACARI.'),('LOYALTY. FEAT. RIHANNA'),
('MONTERO (Call Me By Your Name)'),('THATS WHAT I WANT'),('SUN GOES DOWN'),
('Won´´t Bite (feat. Smino)'),('Bottom Bitch'),('Talk Dirty'),
('Deli'),('In Ha Mood'),('Princess Diana (with Nicki Minaj)'),
('Wet Dreamz'),('G.O.M.D'),('Love Yourz'),
('My Type'),('Tap In'),('ICY GRL'),
('Megan''s Piano'),('Tuned In Freestyle'),('Kitty Kat'),
('Bongos (feat. Megan Thee Stallion)'),('Please Me'),('Up'),
('Till I Collapse'),('Superman'),('Sing For The Moment'),
('FXXK IT'),('LOSER'),('IF YOU'),
('Illusion'),('Dreams Come True'),('Girls'),
('WHISTLE'),('PLAYING WITH FIRE'),('STAY'),
('I Need U'),('Dope'),('Save Me'),
('CHILL'),('Give Me Your TMI'),('SUPER BOARD'),
('Love Me Like This'),('O.O'),('Roller Coaster'),
('FEVER'),('Not For Sale'),('Mixed Up'),
('STUCK IN MY HEAD'),('GIRLS LIKE US'),('HOT'),
('Gentleman'),('DADDY'),('That That (prod.&feat. SUGA of BTS)'),
('Easy'),('Another Day'),('Phobia'),
('FIRE'),('COME BACK HOME'),('Lonely'),
('I AM'),('After LIKE'),('Baddie'),
('Tempo'),('Oh La La La'),('24/7'),	
('FAKE LOVE'),('Euphoria'),('DNA'),
('THE BADDEST'),('VILLAIN'),('DRUM GO DUM'),
('Allergy'),('Lucid'),('All Night'),
('Tinnitus (Wanna be a rock)'),('Devil by the Window'),('Farewell, Neverland'),
('F*ck My Life'),('I Don''t Understand But I Luv U'),('Fire'),
('MVSK'),('See The Light'),('Up!'),
('TING TING TING (with Oliver Heldens)'),('THAT''S A NO NO'),('NOBODY LIKE YOU')

-- Crear una variable para el bucle
DECLARE @CancionID INT = 1;
DECLARE @OpcionID INT = 1;

-- Iniciar el bucle
WHILE @CancionID <= 100
BEGIN
    -- Insertar valores en la tabla
    INSERT INTO canciones_opciones(caop_canc_id, caop_opci_id) 
    VALUES (@CancionID, @OpcionID),
           (@CancionID, @OpcionID + 1),
           (@CancionID, @OpcionID + 2);

    -- Actualizar las variables para la siguiente iteración
    SET @CancionID = @CancionID + 1;
    SET @OpcionID = @OpcionID + 3;
END;

select canc_nombre, opci_descripcion from canciones
inner join canciones_opciones on caop_canc_id = canc_id
inner join opciones on opci_id = caop_opci_id

create procedure sp_ObtenerCanciones(
    @categoria int
)
as
begin
    select top 5 canc_id, canc_nombre, canc_artista, canc_direccion, canc_portada_direccion, canc_portada_blur_direccion
    from canciones
    where canc_cate_id = @categoria
    order by NEWID();
end

create procedure sp_ObtenerCancionesMix
as
begin
    select top 5 canc_id, canc_nombre, canc_artista, canc_direccion, canc_portada_direccion, canc_portada_blur_direccion
    from canciones
    order by NEWID();
end

create procedure sp_ObtenerOpciones(
	@id int
)
as
begin
select opci_descripcion from opciones
left join canciones_opciones on caop_opci_id = opci_id
left join canciones on canc_id = caop_canc_id
where caop_canc_id = @id
end

exec sp_ObtenerOpciones 7

ALTER TABLE canciones
ADD canc_portada_blur_direccion VARCHAR(255)

UPDATE canciones
SET canc_portada_blur_direccion = '\Imagenes\Portadas\Pop\Dark Horse (feat. Juicy J)_blur.jpg' 
Where canc_id = 9

select * from canciones

CREATE PROCEDURE sp_ValidarUsuario(
    @NombreUsuario NVARCHAR(100),
    @Contraseña NVARCHAR(100)
)
AS
BEGIN
    -- Declarar una variable para almacenar el ID de rol del usuario
    DECLARE @usua_id INT;

    -- Intentar encontrar un usuario con el nombre y contraseña proporcionados
    SELECT @usua_id = usua_id
    FROM usuarios
    WHERE usua_nombre = @NombreUsuario
      AND usua_contraseña = @Contraseña;

    -- Comprobar si se encontró un usuario válido
    IF @usua_id IS NOT NULL
    BEGIN
        -- Retornar el ID de rol del usuario
        SELECT @usua_id AS usua_id;
    END
    ELSE
    BEGIN
        -- No se encontró un usuario válido, retornar 0
        SELECT 0 AS usua_id;
    END
END;

insert into usuarios(usua_nombre, usua_contraseña, usua_avat_id) values ('cachiflop', 'AramisYCiro123_', 10)

create procedure sp_ObtenerAvatares
as
begin
select avat_direccion from avatares
end

exec sp_ObtenerAvatares

INSERT INTO avatares (avat_direccion) VALUES 
('\Imagenes\Avatares\avatar1.jpg'),
('\Imagenes\Avatares\avatar2.jpg'),
('\Imagenes\Avatares\avatar3.jpg'),
('\Imagenes\Avatares\avatar4.jpg'),
('\Imagenes\Avatares\avatar5.jpg'),
('\Imagenes\Avatares\avatar6.jpg'),
('\Imagenes\Avatares\avatar7.jpg'),
('\Imagenes\Avatares\avatar8.jpg'),
('\Imagenes\Avatares\avatar9.jpg'),
('\Imagenes\Avatares\avatar10.jpg'),
('\Imagenes\Avatares\avatar11.jpg'),
('\Imagenes\Avatares\avatar12.jpg');

CREATE PROCEDURE sp_CheckUsuarios
    @nombre NVARCHAR(255)
AS
BEGIN
    -- Variable para almacenar el resultado (true o false)
    DECLARE @usuarioExistente BIT;

    -- Verificar si existe un usuario con el nombre proporcionado
    IF EXISTS (SELECT 1 FROM usuarios WHERE usua_nombre = @nombre)
        SET @usuarioExistente = 1; -- Usuario encontrado
    ELSE
        SET @usuarioExistente = 0; -- Usuario no encontrado

    -- Devolver el resultado
    SELECT @usuarioExistente AS 'UsuarioExistente';
END;

select * from usuarios

create procedure sp_ObtenerUsuario(
	@nombre NVARCHAR(255)
)
as
begin
select usua_id, usua_nombre, avat_direccion from usuarios
left join avatares on avat_id = usua_avat_id
where usua_nombre = @nombre
end

create procedure sp_ObtenerPuntajes(
	@id_categoria int 
)
as
begin
select usua_nombre, usua_avat_id, punt_puntaje, punt_tiempo from usuarios
left join puntajes on punt_usua_id = punt_usua_id
left join categorias on cate_id = punt_cate_id
where punt_cate_id = @id_categoria
order by punt_puntaje, punt_tiempo
end

CREATE PROCEDURE sp_LlenarGrilla
(
	@categoria INT
)
AS
BEGIN
	SELECT punt_id, punt_puntaje, punt_tiempo, usua_nombre, avat_direccion
	FROM puntajes
	LEFT JOIN usuarios ON usua_id = punt_usua_id
	LEFT JOIN avatares ON avat_id = usua_avat_id
	WHERE punt_cate_id = @categoria
	ORDER BY punt_puntaje DESC, punt_tiempo DESC;
END


CREATE PROCEDURE sp_InsertOrUpdatePuntaje
	@usua_id INT,
	@punt_puntaje INT,
	@punt_tiempo VARCHAR(255),
	@punt_cate_id INT
AS
BEGIN
	IF EXISTS (SELECT 1 FROM puntajes WHERE punt_usua_id = @usua_id AND punt_cate_id = @punt_cate_id)
	BEGIN
		UPDATE puntajes
		SET punt_puntaje = CASE WHEN @punt_puntaje > punt_puntaje THEN @punt_puntaje ELSE punt_puntaje END,
			punt_tiempo = CASE WHEN @punt_tiempo > punt_tiempo THEN @punt_tiempo ELSE punt_tiempo END
		WHERE punt_usua_id = @usua_id AND punt_cate_id = @punt_cate_id;
	END
	ELSE
	BEGIN
		INSERT INTO puntajes (punt_usua_id, punt_puntaje, punt_tiempo, punt_cate_id)
		VALUES (@usua_id, @punt_puntaje, @punt_tiempo, @punt_cate_id);
	END
END
