<script>
	import jsonFile from '../data/data.json';
	import { writable } from 'svelte/store';
	import ExpandedExperienceCard from './ExpandedExperienceCard.svelte';

	const experiences = jsonFile.experiences;
	const expandedCardIndex = writable(null);

	let currentIndex = writable(0);
	const maxVisible = 3; // Número máximo de tarjetas visibles

	function expandCard(index) {
		expandedCardIndex.set(index);
	}

	function closeExpandedCard() {
		expandedCardIndex.set(null);
	}

	function scrollLeft() {
		currentIndex.update((n) => {
			if (n < experiences.length - maxVisible) {
				return n + 1;
			}
			return n;
		});
	}

	function scrollRight() {
		currentIndex.update((n) => {
			if (n > 0) {
				return n - 1;
			}
			return n;
		});
	}

	function getCardClasses(index) {
		const offset = $currentIndex;
		if (index === offset + 1) {
			return 'scale-100 z-20';
		}
		return 'scale-95 z-10';
	}
</script>

<section
	id="experience"
	class="bg-teal-200 py-12 text-gray-900 dark:bg-teal-700 dark:text-gray-100"
>
	<div class="my-16 px-4 sm:px-6 lg:px-8">
		<h2 class="mb-6 text-center text-3xl font-bold">Mi Experiencia</h2>

		<div class="relative">
			<!-- Contenedor para el slider -->
			<div
				class="flex justify-center space-x-4 overflow-hidden pb-4 pt-6 transition-all duration-500 ease-in-out"
				style="margin-left: calc((100% - (100% / {maxVisible} * {Math.min(
					maxVisible,
					experiences.length
				)})) / 2);"
			>
				{#each experiences.slice($currentIndex, $currentIndex + maxVisible) as content, index}
					<div
						class="experience-card relative max-h-64 w-full max-w-lg transform rounded-lg bg-gray-800 p-6 text-white shadow-sm transition-transform duration-300 hover:scale-105 {getCardClasses(
							$currentIndex + index
						)}"
						on:click={() => expandCard($currentIndex + index)}
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
						<h3 class="text-xl font-semibold text-green-300">{content.position}</h3>
						<h2 class="text-l font-semibold text-orange-300">{content.company}</h2>
						<br />
						<p class="mt-2 line-clamp-5 text-sm">
							<span class="text-green-400">var</span> Duration = {content.duration};<br />
							<span class="text-green-400">var</span> startDate =
							<span class="text-blue-400">new Date</span>({content.startDate}); <br />
							<span class="text-green-400">var</span> finishDate =
							<span class="text-blue-400">new Date</span>({content.finishDate});<br />
							<span class="text-green-400">var</span> location = {content.geoLocation};<br /><br />
							<span class="text-yellow-400">"{content.description}"</span>
						</p>
					</div>
				{/each}
			</div>

			<!-- Botones de scroll -->
			<div class="absolute inset-y-0 left-0 z-30 flex items-center px-4">
				<button
					class="rounded-full bg-black bg-opacity-50 p-2 text-white hover:bg-opacity-75 focus:outline-none"
					on:click={scrollRight}
					disabled={$currentIndex === 0}
				>
					&#10094;
				</button>
			</div>
			<div class="absolute inset-y-0 right-0 z-30 flex items-center px-4">
				<button
					class="rounded-full bg-black bg-opacity-50 p-2 text-white hover:bg-opacity-75 focus:outline-none"
					on:click={scrollLeft}
					disabled={$currentIndex + maxVisible >= experiences.length}
				>
					&#10095;
				</button>
			</div>
		</div>
	</div>

	<!-- Renderizado de la tarjeta expandida -->
	{#if $expandedCardIndex !== null}
		<ExpandedExperienceCard experience={experiences[$expandedCardIndex]} {closeExpandedCard} />
	{/if}
</section>
