<script>
</script>

<section class="marquee-container">
	<div class="marquee">
		<span class="marquee-item">Elemento 1</span>
		<span class="marquee-item">Elemento 2</span>
		<span class="marquee-item">Elemento 3</span>
		<span class="marquee-item">Elemento 4</span>
		<span class="marquee-item">Elemento 5</span>
		<span class="marquee-item">Elemento 6</span>
	</div>
</section>

<style>
	.marquee-container {
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: #2d3748;
		color: white;
		height: 5rem;
		overflow: hidden;
	}

	.marquee {
		white-space: nowrap;
		animation: marquee 30s linear infinite;
	}

	@keyframes marquee {
		0% {
			transform: translateX(100%);
		}
		100% {
			transform: translateX(-100%);
		}
	}

	.marquee-item {
		display: inline-block;
		padding: 0.5rem 1.5rem; /* Espaciado entre los elementos */
		font-size: 1.125rem; /* Font size para los items */
		font-weight: 600; /* Font weight */
	}
</style>
