<script>
	export let experience = null;
	export let closeExpandedCard;
</script>

<div class="expanded-card relative rounded-lg bg-gray-800 p-6 text-white shadow-lg">
	<button
		class="absolute right-4 top-4 text-xl text-gray-400 hover:text-gray-200 focus:outline-none"
		on:click={closeExpandedCard}
	>
		<i class="fas fa-times"></i>
	</button>
	{#if experience}
		<h3 class="text-2xl font-semibold">{experience.position}</h3>
		<p class="mt-4 text-sm">
			<span class="text-green-400">var</span> startDate =
			<span class="text-blue-400">new Date</span>({experience.startDate});<br />
			<span class="text-green-400">var</span> finishDate =
			<span class="text-blue-400">new Date</span>({experience.finishDate});<br />
			<span class="text-green-400">var</span> company =
			{experience.company};<br /><br />
			<span class="text-yellow-400">
				"{experience.description}"
			</span>
		</p>
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
		height: auto;
		max-height: 60%;
		aspect-ratio: 16 / 10;
		z-index: 50;
		border-radius: 1rem;
		overflow: hidden;
		animation: expandCard 300ms ease-out;
		box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
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
</style>
