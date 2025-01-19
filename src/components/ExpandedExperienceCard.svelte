<script>
	/** @type {{ geoLocation: string, position: string, company: string, startDate: string, finishDate: string, description: string, technologiesUsed: Array<string>, keyAchievements: Array<string> } | null} */
	export let experience = null;
	export let closeExpandedCard;

	let isClosing = false;
	let showMoreImages = false;
	function handleClose() {
		isClosing = true;
	}
	function toggleShowMoreImages() {
		showMoreImages = !showMoreImages;
	}
</script>

<div
	class="expanded-card relative rounded-lg bg-gray-800 p-6 text-white shadow-lg {isClosing
		? 'closing'
		: ''}"
	on:animationend={() => {
		if (isClosing) closeExpandedCard();
	}}
>
	<button
		class="absolute right-4 top-4 text-xl text-gray-400 hover:text-gray-200 focus:outline-none"
		on:click={handleClose}
		aria-label="Close"
	>
		<i class="fas fa-times"></i>
	</button>

	{#if experience}
		<h3 class="text-2xl font-semibold text-green-300">
			{experience.position} ({experience.geoLocation})
		</h3>
		<h2 class="text-xl font-semibold text-orange-300">{experience.company}</h2>
		<p class="mt-4 text-sm">
			<span class="text-green-400">var</span> startDate =
			<span class="text-blue-400">new Date</span>({experience.startDate});<br />
			<span class="text-green-400">var</span> finishDate =
			<span class="text-blue-400">new Date</span>({experience.finishDate});<br />
			<span class="text-green-400">var</span> company =
			{experience.company};<br /><br />
		</p>
		<h2 class="text-l font-semibold text-blue-300">Tareas</h2>
		<p class="mt-4 text-sm">
			<span class="text-yellow-400">
				"{experience.description}"<br /><br />
			</span>
		</p>
		<h2 class="text-l mt-6 font-semibold text-blue-300">Logros</h2>
		<ul class="mt-4 list-inside space-y-2 text-sm">
			{#each experience.keyAchievements as achievement}
				<li class="flex items-center space-x-2">
					<i class="fas fa-check-circle text-green-400"></i>
					<span class="text-yellow-400">{achievement}</span>
				</li>
			{/each}
			<br /><br />
		</ul>
		<h2 class="text-l mt-6 font-semibold text-blue-300">Tecnologías</h2>
		<div class="mt-4 flex flex-wrap gap-6">
			{#each experience.technologiesUsed as technology}
				<div
					class="flex items-center space-x-2 rounded-full bg-gray-700 px-4 py-2 hover:bg-opacity-75"
				>
					<i class="fas fa-check text-green-400"></i>
					<span class="text-yellow-400">{technology}</span>
				</div>
			{/each}
		</div>
		<!-- Contenedor de las imágenes de tecnologías -->
		<div class="mt-6 grid grid-cols-3 gap-6 sm:grid-cols-4 lg:grid-cols-5">
			{#each experience.technologiesUsed.slice(0, 5) as technology}
				<div class="flex items-center justify-center">
					<img
						src={`/assets/${technology}.png`}
						alt={technology}
						width="64"
						height="64"
						class="rounded-md shadow-md transition-transform duration-200 ease-in-out hover:scale-110"
					/>
				</div>
			{/each}
		</div>
	{/if}
</div>

<style>
	.expanded-card {
		position: fixed;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 60%;
		max-width: 80vw;
		height: 80%;
		max-height: 90%;
		aspect-ratio: 16 / 10;
		z-index: 50;
		border-radius: 1rem;
		overflow: hidden;
		animation: expandCard 300ms ease-out;
		box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
	}

	.expanded-card.closing {
		animation: collapseCard 300ms ease-in forwards;
	}

	@keyframes expandCard {
		from {
			transform: translate(-50%, -50%) scale(0.5);
			opacity: 0.5;
		}
		to {
			transform: translate(-50%, -50%) scale(1);
			opacity: 1;
		}
	}

	@keyframes collapseCard {
		from {
			transform: translate(-50%, -50%) scale(1);
			opacity: 1;
		}
		to {
			transform: translate(-50%, -50%) scale(0.5);
			opacity: 0.5;
		}
	}
</style>
