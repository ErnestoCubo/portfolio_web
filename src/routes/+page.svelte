<script>
	import HeaderSection from '../components/HeaderSection.svelte';
	import DescriptionSection from '../components/DescriptionSection.svelte';
	import BackgroundSection from '../components/BackgroundSection.svelte';
	import MarqueeSection from '../components/MarqueeSection.svelte';
	import ExperienceSection from '../components/ExperienceSection.svelte';
	import Career from '../components/Career.svelte';
	import CollabsSection from '../components/CollabsSection.svelte';
	import CoursesSection from '../components/CoursesSection.svelte';
	import ProjectsSection from '../components/ProjectsSection.svelte';
	import ChallengesSection from '../components/ChallengesSection.svelte';
	import CertificactionsSection from '../components/CertificactionsSection.svelte';
	import ContactForm from '../components/forms/ContactForm.svelte';

	let isModalOpen = false;

	function openModal() {
		console.log('openModal');
		isModalOpen = true;
	}
	function closeModal() {
		isModalOpen = false;
	}
</script>

<div class="min-h-screen bg-gray-200 text-gray-900 dark:bg-gray-800 dark:text-gray-100">
	<!-- Header -->
	<HeaderSection onOpenModal={openModal} />
	<!-- Formulario de contacto -->
	{#if isModalOpen}
		<ContactForm {closeModal} />
	{/if}
	<!-- Descripción -->
	<DescriptionSection />
	<!-- Sección de Fondo -->
	<BackgroundSection />
	<!-- Marquee -->
	<MarqueeSection />
	<!-- Sección Experiencia -->
	<ExperienceSection />
	<!-- Sección Carrera -->
	<Career />
	<!-- Sección Colaboraciones -->
	<CollabsSection />
	<!-- Sección Certificaciones -->
	<CertificactionsSection />
	<!-- Sección Cursos -->
	<CoursesSection />
	<!-- Sección Proyectos -->
	<ChallengesSection />
	<!-- Sección Investigación -->
	<ProjectsSection />
	<footer class="bg-gray-300 py-6 text-center text-gray-900 dark:bg-gray-900 dark:text-gray-100">
		<p>&copy; 2025 Ernesto Cubo - Todos los derechos reservados.</p>
	</footer>
</div>

<style>
</style>
