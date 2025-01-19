<script>
	import data from '../data/data.json';
	let courses = data.courses;

	const formatCategoryName = (name) => name.replace('_', ' ');
</script>

<section class="bg-teal-700 px-8 py-16 text-white">
	<h2 class="mb-8 text-center text-4xl font-semibold text-white">Cursos</h2>

	<div class="grid grid-cols-1 gap-12 sm:grid-cols-3">
		{#each Object.entries(courses) as [category, items], index}
			<div class="max-h-fit rounded-md bg-[#1e1e1e] p-4 shadow-md">
				<!-- Botones estilo Ubuntu -->
				<div class="flex items-center justify-end space-x-2 p-2">
					<div class="h-3 w-3 rounded-full bg-[#e06c75]"></div>
					<div class="h-3 w-3 rounded-full bg-[#e5c07b]"></div>
					<div class="h-3 w-3 rounded-full bg-[#98c379]"></div>
				</div>
				<!-- Título de la categoría -->
				<h3 class="mb-4 text-left font-mono text-lg text-[#d4d4d4]">
					<span class="text-[#569cd6]">def</span>
					<span class="text-[#dcdcaa]">{formatCategoryName(category)}</span>
					<span class="text-white">():</span>
				</h3>
				<!-- Lista de cursos -->
				<ul class="list-none text-left font-mono text-sm text-[#d4d4d4]">
					{#each items as { course, institution }, itemIndex}
						<li class="mb-2">
							<span class="text-[#6a9955]">{itemIndex + 1}:</span>
							<span class="text-[#c586c0]"> courses.append</span>(
							<span class="text-[#ce9178]">"{course}"</span>,
							<span class="text-[#569cd6]">"{institution}"</span>)
						</li>
					{/each}
				</ul>
			</div>
			<!-- Línea separadora -->
			{#if index < Object.entries(courses).length - 1}
				<hr class="mb-12 border-[#34495e] sm:hidden" />
			{/if}
		{/each}
	</div>
</section>

<style>
</style>
