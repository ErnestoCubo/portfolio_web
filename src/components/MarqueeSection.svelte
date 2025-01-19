<script>
	import '@fortawesome/fontawesome-free/css/all.css'; // Para usar Font Awesome icons
</script>

<section class="marquee-container">
	<div class="marquee">
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-code"></i> Desarrollo de Software
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-cogs"></i> Integración
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-user-secret"></i> Ciberinteligencia
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-server"></i> DevOps
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-shield-alt"></i> Ciberseguridad
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-lock"></i> Desarrollo seguro
		</span>
		<span class="marquee-item text-yellow-400">
			<i class="fas fa-drafting-compass"></i> Diseño de Software
		</span>
	</div>
</section>

<style>
	/* Importar la fuente "Press Start 2P" desde Google Fonts */
	@import url('https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap');

	.marquee-container {
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: #2d3748; /* Color de fondo */
		color: white;
		height: 5rem;
		overflow: hidden;
	}

	.marquee {
		white-space: nowrap;
		animation: marquee 30s linear infinite;
	}

	@keyframes marquee {
		0% {
			transform: translateX(100%);
		}
		100% {
			transform: translateX(-100%);
		}
	}

	.marquee-item {
		display: inline-flex;
		align-items: center;
		gap: 0.5rem; /* Espaciado entre el texto y el icono */
		padding: 0.5rem 1.5rem; /* Espaciado entre los elementos */
		font-size: 1rem;
		font-family: 'Press Start 2P', monospace; /* Fuente retro */
		font-weight: bold;
	}

	.marquee-item i {
		font-size: 1.25rem; /* Tamaño de los iconos */
		color: #00ffc8; /* Color de los iconos */
	}
</style>
