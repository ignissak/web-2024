<script>
	import photo from '$lib/assets/me.webp';
	import Container from '../components/Container.svelte';
	import Entry from '../components/LinkEntry.svelte';
	import TimedExperience from '../components/TimedExperience.svelte';
</script>

<Container>
	<header class="flex flex-row items-start space-x-6">
		<div class="h-24 w-24">
			<img
				src={photo}
				alt="Jakub Bordáš"
				class="object-cover w-full h-auto rounded-lg aspect-square"
			/>
		</div>
		<div class="flex flex-col items-start justify-between self-stretch">
			<div>
				<h1 class="mb-0 text-lg font-medium">Jakub Bordáš</h1>
				<p>Student & Full-stack Developer</p>
				<p class="muted">Bratislava, Slovakia</p>
			</div>
			<div class="flex gap-2 text-zinc-400">
				<a
					href="https://github.com/ignissak"
					target="_blank"
					class="hover:text-zinc-100 transition-opacity"
				>
					<svg
						xmlns="http://www.w3.org/2000/svg"
						width="20"
						height="20"
						viewBox="0 0 24 24"
						><path
							fill="none"
							stroke="currentColor"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							d="M9 19c-4.3 1.4-4.3-2.5-6-3m12 5v-3.5c0-1 .1-1.4-.5-2c2.8-.3 5.5-1.4 5.5-6a4.6 4.6 0 0 0-1.3-3.2a4.2 4.2 0 0 0-.1-3.2s-1.1-.3-3.5 1.3a12.3 12.3 0 0 0-6.2 0C6.5 2.8 5.4 3.1 5.4 3.1a4.2 4.2 0 0 0-.1 3.2A4.6 4.6 0 0 0 4 9.5c0 4.6 2.7 5.7 5.5 6c-.6.6-.6 1.2-.5 2V21"
						/></svg
					>
				</a>
				<a
					href="https://linkedin.com/in/jacobbordas"
					target="_blank"
					class="hover:text-zinc-100 transition-opacity"
				>
					<svg
						xmlns="http://www.w3.org/2000/svg"
						width="20"
						height="20"
						viewBox="0 0 24 24"
						><g
							fill="none"
							stroke="currentColor"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							><path d="M8 11v5m0-8v.01M12 16v-5m4 5v-3a2 2 0 1 0-4 0" /><path
								d="M3 7a4 4 0 0 1 4-4h10a4 4 0 0 1 4 4v10a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4z"
							/></g
						></svg
					>
				</a>
				<a
					href="mailto:jakub@bordas.sk"
					class="hover:text-zinc-100 transition-opacity"
				>
					<svg
						xmlns="http://www.w3.org/2000/svg"
						width="20"
						height="20"
						viewBox="0 0 24 24"
						><defs
							><path
								id="tablerBrandMailgun0"
								d="M11 12a1 1 0 1 0 2 0a1 1 0 1 0-2 0"
							/></defs
						><g
							fill="none"
							stroke="currentColor"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							><path d="M17 12a2 2 0 1 0 4 0a9 9 0 1 0-2.987 6.697" /><path
								d="M7 12a5 5 0 1 0 10 0a5 5 0 1 0-10 0"
							/><use href="#tablerBrandMailgun0" /><use
								href="#tablerBrandMailgun0"
							/></g
						></svg
					>
				</a>
			</div>
		</div>
	</header>
	<section id="about">
		<h2 class="mb-3">About me</h2>
		<p>
			I'm a Computer Science student and full-stack developer based in Bratislava. I
			specialize in building web applications using modern technologies. Currently pursuing my
			degree while actively working on both professional and personal development projects.
		</p>
		<!-- <span class="px-2 py-1 mt-2 text-xs font-medium rounded-sm bg-neutral-800 text-neutral-100"
			>Currently open to work</span
		> -->
	</section>
	<section id="work">
		<h2 class="mb-3">Work Experience</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from={2024}
				to={undefined}
				title="Trainee DevOps Engineer — Erste Digital"
				url="https://erstegroup.com"
				paragraph="In my current role, I am a trainee in the field of DevOps with a focus on monitoring."
				skills={['Prometheus', 'Grafana']}
			/>
			<TimedExperience
				from={2023}
				to={2024}
				title="Full-stack Developer — Neoloop"
				url="https://neoloop.cz"
				paragraph="As a full-stack developer, I worked on building and maintaining web applications using SvelteKit, implementing both frontend features and backend APIs."
				skills={['JavaScript', 'SvelteKit', 'Prisma']}
			/>
			<TimedExperience
				from={2022}
				to={2023}
				title="Python Developer — Slovanet"
				url="https://slovanet.net"
				paragraph="I specialized in developing custom Odoo modules for finance and HR departments, utilizing Python and REST APIs to extend the core functionality of the ERP system."
				skills={['Python', 'Odoo', 'REST', 'PostgreSQL']}
			/>
		</div>
	</section>
	<section id="voluntary-projects">
		<h2 class="mb-3">Side projects</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from={2024}
				to={2024}
				url={undefined}
				title="Travelling Mobile App"
				paragraph="I created a cross-platform mobile app for travelers to explore and share experiences, as part of my university mobile development course."
				skills={['React Native', 'Expo', 'Express.js']}
			/>
			<TimedExperience
				from={2024}
				to={2024}
				title="Steam Friends Library Compare"
				paragraph="A full-stack application that enables Steam users to compare their game libraries with friends, filling a feature gap in Steam's platform."
				url="https://steam.bordas.sk"
				skills={['Vue 3', 'TailwindCSS', 'Express.js']}
			/>
			<TimedExperience
				from={2023}
				to={2023}
				title="Chirpify - Twitter Clone"
				paragraph="A full-stack social media application built as a Twitter clone, featuring user authentication, real-time posts, and interactions. Implemented using modern web technologies and REST APIs."
				url="https://github.com/orgs/ChirpifyApp/repositories"
				skills={['SvelteKit', 'TailwindCSS', 'NestJS', 'Prisma']}
			/>
		</div>
	</section>
	<section id="skills">
		<h2 class="mb-3">Skills</h2>
		<div class="flex flex-col gap-2">
			<Entry
				title="Front-end"
				text="SvelteKit • Vue 3 • Next.js • TailwindCSS"
				link={undefined}
			/>
			<Entry
				title="Back-end"
				text="Express.js • NestJS • PostgreSQL • Prisma"
				link={undefined}
			/>
			<Entry title="DevOps" text="Docker • GitHub Actions • Traefik" link={undefined} />
		</div>
	</section>
	<footer class="mt-16">
		<p>
			This web is <a href="https://github.com/ignissak/web-2024" class="link" target="_blank"
				>open-source</a
			>. Before forking read the
			<a
				href="https://github.com/ignissak/web-2024/blob/main/LICENSE"
				class="link"
				target="_blank">license</a
			>. <br />© All rights reserved 2024.
		</p>
	</footer>
</Container>
