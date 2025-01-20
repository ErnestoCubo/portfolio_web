<script lang="ts">
	export let closeModal: () => void;

	let name = '';
	let email = '';
	let message = '';

	const submitForm = () => {
		console.log('Formulario enviado:', { name, email, message });
		closeModal();
	};
</script>

<div
	class="fixed inset-0 z-10 flex items-center justify-center bg-black bg-opacity-50"
	on:click={closeModal}
>
	<div class="w-96 rounded-lg bg-white p-6 shadow-lg" on:click|stopPropagation>
		<h2 class="mb-4 text-xl font-bold text-gray-800">Contáctame</h2>

		<form class="space-y-5" on:submit|preventDefault={submitForm}>
			<div>
				<label for="name" class="block text-sm font-medium text-gray-700">Nombre</label>
				<input
					id="name"
					type="text"
					class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500"
					bind:value={name}
					required
				/>
			</div>

			<div>
				<label for="email" class="block text-sm font-medium text-gray-700">Correo electrónico</label
				>
				<input
					id="email"
					type="email"
					class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500"
					bind:value={email}
					required
				/>
			</div>

			<div>
				<label for="message" class="block text-sm font-medium text-gray-700">Mensaje</label>
				<textarea
					id="message"
					rows="4"
					class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500"
					bind:value={message}
					required
				></textarea>
			</div>

			<div class="flex justify-end space-x-2">
				<button
					type="button"
					class="rounded bg-gray-300 px-4 py-2 text-gray-800 hover:bg-gray-400"
					on:click={closeModal}
				>
					Cancelar
				</button>
				<button type="submit" class="rounded bg-green-500 px-4 py-2 text-white hover:bg-green-600">
					Enviar
				</button>
			</div>
		</form>
	</div>
</div>
