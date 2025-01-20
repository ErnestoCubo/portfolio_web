<script>
	import data from '../data/data.json';
	const projects = data.projects;

	let selectedIndex = null;

	function toggleProject(index) {
		selectedIndex = selectedIndex === index ? null : index;
	}
</script>

<section id="projects" class="relative bg-gray-900 px-8 py-16">
	<h2 class="mb-8 text-center text-3xl font-bold text-white">Proyectos</h2>
	<div class="relative mx-auto w-full max-w-6xl pb-64">
		<div class="relative flex items-center justify-between">
			<div class="absolute left-0 top-1/2 h-1 w-full -translate-y-1/2 bg-gray-600"></div>
			{#each projects as project, index}
				<div class="relative flex w-full flex-col items-center">
					<div
						class="absolute h-12 w-1 bg-gray-600"
						style="top: {project.branch === 'branch-1'
							? '-2rem'
							: project.branch === 'branch-2'
								? '0'
								: '0'}"
					></div>
					<button
						class="relative z-10 h-6 w-6 cursor-pointer rounded-full bg-teal-500 transition-transform duration-300 hover:scale-125"
						on:click={() => toggleProject(index)}
						on:keydown={(e) => (e.key === 'Enter' || e.key === ' ' ? toggleProject(index) : null)}
						aria-label="Toggle project details"
					></button>
					{#if selectedIndex === index}
						<div class="w-xl absolute top-12 z-20 rounded-lg bg-gray-800 p-4 shadow-lg">
							<h3 class="text-lg font-bold text-teal-400">{project.name}</h3>
							<p class="mt-2 text-sm text-gray-300">{project.description}</p>
							<p class="mt-2 text-xs text-gray-400">
								<strong>Tecnologías:</strong>
								{project.tech}
							</p>
							{#if project.link}
								<a
									href={project.link}
									target="_blank"
									rel="noopener noreferrer"
									class="mt-4 inline-block text-teal-300 hover:text-teal-500"
								>
									Ver más &rarr;
								</a>
							{/if}
						</div>
					{/if}
				</div>
			{/each}
		</div>
	</div>
</section>

<style>
</style>
