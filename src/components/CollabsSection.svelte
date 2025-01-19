<script>
	import data from '../data/data.json';
	let collaborations = data.collaborations;
</script>

<section>
	<div class="collaborations-section bg-gray-500 px-8 py-16 text-gray-900">
		<h2 class="mb-8 text-center text-3xl font-semibold text-teal-500">
			Colaboraciones importantes
		</h2>

		<div class="grid grid-cols-1 justify-items-center gap-10 sm:grid-cols-2 lg:grid-cols-3">
			{#each collaborations as { company, role, image }}
				<div
					class="collaboration-item rounded-xl bg-gray-100 p-6 shadow-lg transition-transform duration-300 hover:scale-105 hover:shadow-2xl"
				>
					<div class="image-container relative">
						<img src={image} alt={company} class="h-48 w-full rounded-xl object-cover" />
					</div>
					<div class="mt-6 text-center">
						<h3 class="text-xl font-semibold text-teal-500">{company}</h3>
						<p class="mt-2 text-gray-600">{role}</p>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>

<style>
</style>
