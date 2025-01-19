<script>
	import jsonFile from '../data/data.json';
	let biography = jsonFile.career;
</script>

<section id="career">
	<div class="biography-section bg-[#2c3e50] px-8 py-16 text-white">
		<h2 class="mb-6 text-center text-3xl font-bold text-[#d1ff8d]">Mi Carrera</h2>

		<div class="grid grid-cols-1 gap-8 sm:grid-cols-2">
			<div
				class="biography-item rounded-lg bg-[#34495e] p-6 shadow-lg transition-all hover:bg-[#2c3e50]"
			>
				<h3 class="text-2xl font-semibold text-[#ff8dd8]">Estudios</h3>
				<p class="mt-4 text-[#b8d1b4]">{biography.study}</p>
			</div>

			<div
				class="biography-item rounded-lg bg-[#34495e] p-6 shadow-lg transition-all hover:bg-[#2c3e50]"
			>
				<h3 class="text-2xl font-semibold text-[#ff8dd8]">Certificaciones</h3>
				<p class="mt-4 text-[#b8d1b4]">{biography.certification}</p>
			</div>

			<div
				class="biography-item rounded-lg bg-[#34495e] p-6 shadow-lg transition-all hover:bg-[#2c3e50]"
			>
				<h3 class="text-2xl font-semibold text-[#ff8dd8]">Trabajo Actual</h3>
				<p class="mt-4 text-[#b8d1b4]">{biography.currentWork}</p>
			</div>

			<div
				class="biography-item rounded-lg bg-[#34495e] p-6 shadow-lg transition-all hover:bg-[#2c3e50]"
			>
				<h3 class="text-2xl font-semibold text-[#ff8dd8]">Ubicación</h3>
				<p class="mt-4 text-[#b8d1b4]">{biography.location}</p>
			</div>
		</div>
	</div>
</section>

<style>
	.biography-section {
		background-color: #2c3e50; /* Fondo oscuro */
	}

	.biography-item {
		background-color: #34495e; /* Fondo de cada ítem */
	}

	.biography-item:hover {
		background-color: #2c3e50; /* Fondo de hover */
	}

	.biography-section h2 {
		color: #d1ff8d; /* Título en verde */
	}

	.biography-item h3 {
		color: #ff8dd8; /* Títulos en rosa brillante */
	}

	.biography-item p {
		color: #b8d1b4; /* Descripción en verde suave */
	}

	.biography-item .text-sm {
		color: #d1ff8d; /* Información adicional en verde */
	}
</style>
