<script>
	import jsonFile from '../data/experiences.json';
	import { writable } from 'svelte/store';
	import ExpandedExperienceCard from './ExpandedExperienceCard.svelte';

	const experiences = jsonFile.experiences;
	let expandedCardIndex = writable(null);

	function expandCard(index) {
		expandedCardIndex.set(index);
	}

	function closeExpandedCard() {
		expandedCardIndex.set(null);
	}
</script>

<section class="bg-teal-200 py-12 text-gray-900 dark:bg-teal-700 dark:text-gray-100">
	<div class="my-16 px-4 sm:px-6 lg:px-8">
		<h2 class="mb-6 text-center text-3xl font-bold">Mi Experiencia</h2>
		<div class="overflow-x-hidden">
			<div
				id="experience-cards"
				class="flex items-center justify-center space-x-4 overflow-visible px-6 pb-4 pt-6"
			>
				{#each experiences as content, index}
					<div
						class="experience-card relative max-h-64 w-full max-w-lg transform rounded-lg bg-gray-800 p-6 text-white shadow-sm transition-transform duration-300 hover:scale-105"
						on:click={() => expandCard(index)}
						on:keydown={(e) => e.key === 'Enter' && expandCard(index)}
						role="button"
						tabindex="0"
					>
						<!-- Botón flotante -->
						<div
							class="absolute inset-0 flex items-center justify-center rounded-lg bg-black bg-opacity-50 opacity-0 transition-opacity duration-300 hover:opacity-100"
						>
							<button
								class="rounded-lg bg-teal-500 px-4 py-2 text-sm font-semibold text-white hover:bg-teal-400 focus:outline-none active:bg-teal-600"
							>
								Ver más
							</button>
						</div>
						<!-- Contenido de la tarjeta -->
						<h3 class="text-xl font-semibold">{content.position}</h3>
						<br />
						<p class="mt-2 line-clamp-5 text-sm">
							<span class="text-green-400">var</span> startDate =
							<span class="text-blue-400">new Date</span>({content.startDate}); <br />
							<span class="text-green-400">var</span> finishDate =
							<span class="text-blue-400">new Date</span>({content.finishDate});<br />
							<span class="text-green-400">var</span> company = {content.company};<br /><br />
							<span class="text-yellow-400">"{content.description}"</span>
						</p>
					</div>
				{/each}
			</div>
		</div>
	</div>

	<!-- Renderizado de la tarjeta expandida -->
	{#if $expandedCardIndex !== null}
		<ExpandedExperienceCard experience={experiences[$expandedCardIndex]} {closeExpandedCard} />
	{/if}
</section>
