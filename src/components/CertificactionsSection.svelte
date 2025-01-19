<script>
	import data from '../data/data.json';
	let certifications = data.certifications;

	let isModalOpen = false;
	let modalImage = '';

	// Función para abrir el modal
	function openModal(image) {
		isModalOpen = true;
		modalImage = image;
	}

	// Función para cerrar el modal
	function closeModal() {
		isModalOpen = false;
		modalImage = '';
	}
</script>

<section class="bg-[#1f1f1f] px-8 py-16 text-white">
	<h2 class="mb-8 text-center text-4xl font-semibold text-[#76c7c0]">Certificaciones</h2>

	<div class="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-2">
		{#each certifications as { certificate, institution, date, image }}
			<div
				class="certification-item rounded-xl bg-[#34495e] p-6 shadow-lg transition-all hover:bg-[#2c3e50]"
			>
				<div class="image-container relative">
					<img
						src={image}
						alt={certificate}
						class="max-h-96 w-full cursor-pointer rounded-md object-cover"
						on:click={() => openModal(image)}
					/>
					<!-- Botón para expandir imagen -->
					<button
						class="absolute right-2 top-2 rounded-full bg-[#76c7c0] p-2 text-black opacity-75 hover:opacity-100"
						on:click={() => openModal(image)}
					>
						Expandir
					</button>
				</div>
				<div class="mt-6 text-center">
					<h3 class="text-xl font-semibold text-[#ff8dd8]">{certificate}</h3>
					<p class="mt-2 text-[#b8d1b4]">{institution}</p>
					<p class="mt-2 text-sm text-[#d1ff8d]">{date}</p>
				</div>
			</div>
		{/each}
	</div>
</section>

{#if isModalOpen}
	<!-- Modal para expandir la imagen -->
	<div class="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-75">
		<div class="relative">
			<img src={modalImage} alt="" class="max-h-[80vh] max-w-4xl shadow-lg" />
			<button class="absolute right-2 top-2 bg-red-500 p-2 text-black" on:click={closeModal}>
				X
			</button>
		</div>
	</div>
{/if}

<style>
	.bg-opacity-75 {
		background-color: rgba(0, 0, 0, 0.75);
	}

	/* Animación del botón al expandir */
	.cursor-pointer {
		cursor: pointer;
	}
</style>
