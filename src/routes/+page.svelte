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
		<h2>About</h2>
		<p>
			Hello! I am Jakub, currently on level 21. I enjoy building fullstack applications using
			various technologies. I currently study Computer Science in Bratislava.
		</p>
		<!-- <span class="px-2 py-1 mt-2 text-xs font-medium rounded-sm bg-neutral-800 text-neutral-100"
			>Currently open to work</span
		> -->
	</section>
	<section id="work">
		<h2 class="mb-8">Work Experience</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from={2023}
				to={undefined}
				title="Full-stack Developer — Neoloop"
				url="https://neoloop.cz"
				paragraph="Currently I work with JavaScript and develop full-stack applications using meta framework SvelteKit."
				skills={['JavaScript', 'SvelteKit', 'Prisma']}
			/>
			<TimedExperience
				from={2022}
				to={2023}
				title="Python Developer — Slovanet"
				url="https://slovanet.net"
				paragraph="Using my knowledge of Python, I dug deep into the Odoo framework and worked on developing custom modules for the finance and HR departments."
				skills={['Python', 'Odoo', 'REST', 'PostgreSQL']}
			/>
		</div>
	</section>
	<section id="voluntary-projects">
		<h2 class="mb-8">Side projects</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from={2024}
				to={2024}
				url={undefined}
				title="Travelling Mobile App"
				paragraph="During my mobile apps course on my university I created a cross-platform mobile app using Expo and React Native to help travellers explore new places and share their experiences."
				skills={['React Native', 'Expo', 'Express.js']}
			/>
			<TimedExperience
				from={2024}
				to={2024}
				title="Steam Friends Library Compare"
				paragraph="In my free time, I created a full-stack application that allows users to compare their Steam libraries which is not possible on Steam itself."
				url="https://steam.bordas.sk"
				skills={['Vue 3', 'TailwindCSS', 'Express.js']}
			/>
			<TimedExperience
				from={2022}
				to={undefined}
				title="Graphic Designer & Developer — Ynet"
				paragraph="While studying at university, I volunteer at a local non-profit where I develop core applications and create graphic materials."
				url="https://ynet.sk"
				skills={['PHP', 'Yii', 'Figma', 'Photoshop']}
			/>
		</div>
	</section>
	<section id="skills">
		<h2 class="mb-8">Skills</h2>
		<div class="flex flex-col gap-2">
			<Entry
				title="Front-end"
				text="SvelteKit • Vue 3 • React Native • TailwindCSS"
				link={undefined}
			/>
			<Entry
				title="Back-end"
				text="Express.js • NestJS • PostgreSQL • Prisma"
				link={undefined}
			/>
		</div>
	</section>
	<section id="links">
		<h2 class="mb-8">Links</h2>
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
