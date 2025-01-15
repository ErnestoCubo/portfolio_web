<script>
	import HeaderSection from '../components/HeaderSection.svelte';
	import DescriptionSection from '../components/DescriptionSection.svelte';
	import BackgroundSection from '../components/BackgroundSection.svelte';
	import MarqueeSection from '../components/MarqueeSection.svelte';
	import ExperienceSection from '../components/ExperienceSection.svelte';
</script>

<div class="min-h-screen bg-gray-200 text-gray-900 dark:bg-gray-800 dark:text-gray-100">
	<!-- Header -->
	<HeaderSection />
	<!-- Descripción -->
	<DescriptionSection />
	<BackgroundSection />
	<!-- Marquee -->
	<MarqueeSection />
	<!-- Sección Experiencia -->
	<ExperienceSection />

	<!-- Footer -->
	<footer class="bg-gray-300 py-6 text-center text-gray-900 dark:bg-gray-900 dark:text-gray-100">
		<p>&copy; 2025 Ernesto Cubo - Todos los derechos reservados.</p>
	</footer>
</div>

<style>
	/* Si deseas agregar estilos personalizados, puedes hacerlo aquí */
</style>
