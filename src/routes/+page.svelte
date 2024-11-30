<script>
	import photo from '$lib/assets/me.webp';
	import Container from '../components/Container.svelte';
	import Entry from '../components/LinkEntry.svelte';
	import TimedExperience from '../components/TimedExperience.svelte';
</script>

<Container>
	<header class="flex items-center space-x-6">
		<div class="h-22 w-22">
			<img
				src={photo}
				alt="Jakub Bordáš"
				class="object-cover w-full h-auto rounded-lg aspect-square"
			/>
		</div>
		<div>
			<h1 class="mb-0 text-lg font-medium">Jakub Bordáš</h1>
			<p>Student & Full-stack Developer</p>
			<p class="muted">Bratislava, Slovakia</p>
		</div>
	</header>
	<section id="about">
		<h2 class="mb-3">About me</h2>
		<p>
			I'm a Computer Science student and full-stack developer based in Bratislava. I specialize in building web applications using modern technologies. Currently pursuing my degree while actively working on both professional and personal development projects.
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
	<section id="links">
		<h2 class="mb-3">Links</h2>
		<div class="flex flex-col gap-2">
			<Entry title="Github" text="@ignissak" link="https://github.com/ignissak" />
			<Entry
				title="LinkedIn"
				text="@jacobbordas"
				link="https://www.linkedin.com/in/jacobbordas/"
			/>
			<Entry title="E-mail" text="jakub@bordas.sk" link="mailto:jakub@bordas.sk" />
		</div>
	</section>
	<footer class="mt-16">
		<p>
			This web is <a href="https://github.com/ignissak/web-2024" target="_blank"
				>open-source</a
			>. Before forking read the
			<a href="https://github.com/ignissak/web-2024/blob/main/LICENSE" target="_blank"
				>license</a
			>. <br />© All rights reserved 2024.
		</p>
	</footer>
</Container>
