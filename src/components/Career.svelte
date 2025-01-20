<script>
	import jsonFile from '../data/data.json';
	let biography = jsonFile.career;
</script>

<section id="career">
	<div class="bg-gray-100 py-12 text-gray-900 dark:bg-gray-700 dark:text-gray-100">
		<h2 class="mb-6 text-center text-3xl font-bold">Mi Carrera</h2>

		<div class="grid grid-cols-1 gap-8 sm:grid-cols-2">
			<div class=" p-6 transition-all">
				<h3 class="text-2xl font-semibold text-[#16a34a]">Estudios</h3>
				<p class="mt-4 font-light text-white">{biography.study}</p>
			</div>

			<div class=" p-6 transition-all">
				<h3 class="text-2xl font-semibold text-[#16a34a]">Certificaciones</h3>
				<p class="mt-4 font-light text-white">{biography.certification}</p>
			</div>

			<div class=" p-6 transition-all">
				<h3 class="text-2xl font-semibold text-[#16a34a]">Trabajo Actual</h3>
				<p class="mt-4 text-white">{biography.currentWork}</p>
			</div>

			<div class=" p-6 transition-all">
				<h3 class="text-2xl font-semibold text-[#16a34a]">Ubicación</h3>
				<p class="mt-4 text-white">{biography.location}</p>
			</div>
		</div>
	</div>
</section>

<style>
</style>
