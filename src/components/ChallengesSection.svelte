<script>
	import data from '../data/data.json';
	let challeges = data.challenges;
</script>

<section>
	<div class="bg-gray-100 py-12 text-gray-900 dark:bg-gray-700 dark:text-gray-100">
		<h2 class="mb-6 grid text-center text-3xl font-bold">Investigación</h2>
		<div class="grid grid-cols-1 gap-8 sm:grid-cols-3">
			{#each challeges as challenge}
				<div class=" p-6 transition-all">
					<h3 class="text-2xl font-semibold text-[#16a34a]">
						{challenge.name}
					</h3>
					<p class="mt-4 font-light text-white">
						{challenge.description}
					</p>
					{#if challenge.reference}
						<a href={challenge.reference} class="text-[#16a34a]">Ver más</a>
					{/if}
				</div>
			{/each}
		</div>
	</div>
</section>

<style></style>
