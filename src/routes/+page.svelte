<script>
	import photo from '$lib/assets/me.webp';
	import Container from '../components/Container.svelte';
	import Entry from '../components/Entry.svelte';
	import TimedExperience from '../components/TimedExperience.svelte';
</script>

<Container>
	<header class="flex gap-6 items-center">
		<div class="w-22 h-22">
			<img
				src={photo}
				alt="Jakub Bordáš"
				class="aspect-square object-cover w-full h-auto rounded-lg"
			/>
		</div>
		<div>
			<h1 class="text-lg font-medium mb-0">Jakub Bordáš</h1>
			<p>Student & Full-stack Developer</p>
			<p class="muted">Bratislava, Slovakia</p>
		</div>
	</header>
	<section id="about">
		<h2>About</h2>
		<p>
			Hello! I’m Jakub, currently on level 20. I enjoy building fullstack applications using
			various technologies. I currently study Computer Science in Bratislava.
		</p>
	</section>
	<section id="work">
		<h2 class="mb-8">Work Experience</h2>
		<div class="flex gap-6 flex-col">
			<TimedExperience
				from={2023}
				to={undefined}
				title="Full-stack Developer — Neoloop"
				url="https://neoloop.cz"
				paragraph="Currently I work with JavaScript and develop full-stack applications using meta framework SvelteKit."
				skills={['JavaScript', 'SvelteKit', 'Prisma']}
			/>
			<TimedExperience
				from={2023}
				to={2023}
				title="Software Developer — Artin Solutions"
				url="https://artinsolutions.com"
				paragraph="I utilized my experience in Java while developing software for MetLife. I have participated in developing front-end applications in Angular."
				skills={['TypeScript', 'Java', 'Spring Boot', 'Angular']}
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
		<div class="flex gap-6 flex-col">
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
		<div class="flex gap-2 flex-col">
			<Entry title="Front-end" text="SvelteKit • Vue 3 • TailwindCSS" link={undefined} />
			<Entry
				title="Back-end"
				text="NestJS • Express.js • PostgreSQL • Prisma"
				link={undefined}
			/>
		</div>
	</section>
	<section id="links">
		<h2 class="mb-8">Links</h2>
		<div class="flex gap-2 flex-col">
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
