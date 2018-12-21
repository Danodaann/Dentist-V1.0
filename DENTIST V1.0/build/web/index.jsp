<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<!-- El meta viewport permite que sea adaptable la pagina -->
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
	<!-- Esta es para la letra en este caso es el estilo de open sans, por lo cual se necesita una conexion a intenet para poder acceder a la fuente  -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,700" rel="stylesheet">
	<!-- Para conectar estilos css -->
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
	<title>ETS</title>
</head>
<body>
	<header>
			<div class="contenedor">
				<nav class="menu">
					<a href="#" id="btn-acerca-de">QUIENES SOMOS</a>
					<a href="registro.jsp" id="btn-acerca-de">REGISTRARSE</a>
					<a href="login.jsp" id="btn-acerca-de">LOG IN</a>
					<a href="#" id="btn-menu">TRATAMIENTOS</a>
					<a href="logindoctor.jsp" id="btn-galeria">DOCTOR</a>
					<a href="#" id="btn-ubicacion">UBICACION</a>
				</nav>

				<div class="textos">
					<!-- Con el span se logra el efecto de diferente -->
					<h1 class="nombre">SMILE  <span>ETS</span></h1>
					<h3>Tu Sonrisa es nuestra prioridad...</h3>
				</div>
				
			</div>
	</header>
	<!-- En el section main va air todo-->
	<section class="main">
				<!-- SECTION ACERCA DE -->
				<section class="acerca-de" id="acerca-de">
					<div class="contenedor">
						<div class="foto">
							<img src="img/fondo3.jpeg">
						</div>
						<article>
							<h3>�QUIENES SOMOS?</h3>
							<p>Nuestra misi�n
							Inspirar y nutrir el esp�ritu humano: <br>Una persona, una sonrisa y una comunidad a la vez.</p>
							<p>M�s que una sonrisa...</p>
							<p>Te damos un diagn�stico integral, hecho por los mejores especialistas en M�xico.<br>Historia... <br>Iniciamos operaciones en 2006 con una cl�nica en la Ciudad de M�xico con equipados consultorios dentales.10 a�os despu�s, hemos realizado m�s de un mill�n de tratamientos dentales, nos hemos convertido orgullosamente en el mayor grupo de cl�nicas dentales en M�xico.</p>
							
						</article>
					</div>
				</section>

				<!-- SECTION MENU -->
				<section class="menu">
					<div class="contenedor">
						<h3  class="titulo" id="platillos">Tratamientos</h3>
						<div class="contenedor-menu">
							<div class="contenedor-menu2">
								<article>
									<p class="categoria">...</p>

									<div class="platillo">
										<p class="nombre">Limpieza</p>
										<p class="precio">$100</p>
										<p class="descripcion">Eliminar sarro y la placa dento-bacteriana para mantener la salud de las enc�as.</p>
									</div>

									<div class="platillo">
										<p class="nombre">Resinas</p>
										<p class="precio">$200</p>
										<p class="descripcion">Generalmente se utiliza anestesia y una protecci�n de hule para garantizar el �xito del tratamiento.</p>
									</div>

									<div class="platillo">
										<p class="nombre">Brackets</p>
										<p class="precio">$5,000</p>
										<p class="descripcion">Los brackets pueden ser est�ticos y estructurales.</p>
									</div>

									<div class="platillo">
										<p class="nombre">Blanqueamiento</p>
										<p class="precio">$500</p>
										<p class="descripcion">Resultados instant�neos. <br>
										Requiere un menor n�mero de sesiones.<br>
										No da�an el esmalte dental.</p>
									</div>
								</article>



								<article>
									<p class="categoria">...</p>

									<div class="platillo">
										<p class="nombre">Endodoncia</p>
										<p class="precio">$500</p>
										<p class="descripcion">Limpieza de caries, retiro del nervio del diente y obturaci�n de conductos radiculares</p>
									</div>

									<div class="platillo">
										<p class="nombre">Coronas</p>
										<p class="precio">$200</p>
										<p class="descripcion">Restauraci�n que devuelve la forma y funci�n a un diente.</p>
									</div>

									<div class="platillo">
										<p class="nombre">Puentes</p>
										<p class="precio">$300</p>
										<p class="descripcion">Diente artificial sin ra�z, existen dos tipos: fijos y removibles.</p>
									</div>

									<div class="platillo">
										<p class="nombre">Implantes</p>
										<p class="precio">1,000</p>
										<p class="descripcion">Devuelven la funci�n dental y est�tica.</p>
									</div>
								</article>


							</div>
						</div>
					</div>
				</section>

				<!-- SECTION GALERIA -->
				<section class="galeria" id="galeria">
					<div class="foto">
						<img src="img/1.jpeg">
					</div>
					<div class="foto">
						<img src="img/2.jpeg">
					</div>
					<div class="foto">
						<img src="img/3.jpeg">
					</div>
					<div class="foto">
						<img src="img/4.jpg">
					</div>
					<div class="foto">
						<img src="img/5.jpg">
					</div>
					<div class="foto">
						<img src="img/6.jpg">
					</div>
					<div class="foto">
						<img src="img/7.jpg">
					</div>
					<div class="foto">
						<img src="img/8.jpeg">
					</div>
					
					
				</section>

				<!-- SECTION UBICACION -->
				<section class="ubicacion" id="ubicacion">
					<div class="contenedor">
						<h3 class="titulo">Ubicacion</h3>
						<div class="direccion">
							<p class="calle">Mar Mediterr�neo 227, Popotla,<br/>11400 Ciudad de M�xico, CDMX</p>
							<p class="telefono">(55)4649 3772</p> 
							<p class="correo">danodaannn@gmail.com</p>
						</div>

						<div class="horarios">
							 <h4>Horarios</h4>
							 <p class="entre-semana">Lunes a Viernes <br> 8:00 am - 10:00 pm </p>
							 <p class="fin-semana">Sabados y Domingos <br> 11:00 am - 6:00 pm </p>
						</div>
					</div> 
					
				</section>

				<!-- SECTION MAPA -->
				<section class="mapa">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3762.0476765149538!2d-99.17748638546998!3d19.453511145053433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f8bd9777a765%3A0x57501a5479751d18!2sCentro+de+Estudios+Cient%C3%ADficos+y+Tecnol%C3%B3gicos+No.+9+del+instituto+politecnico+nacional!5e0!3m2!1ses-419!2smx!4v1543998414402" width="1600" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
				</section>

			
	</section>

	<footer>
		 <div class="contenedor">
		 	<div class="copyright">
		 		<p>Copyright DanoDaann @ 2018 </p>
		 	</div>
		 </div>
	</footer>

<script src="js/jquery-3.3.1.min.js" ></script>
<script src="js/efectos.js"></script>

</body>
</html>
