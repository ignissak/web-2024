<script>
	import photo from '$lib/assets/me.webp';
	import Container from '../components/Container.svelte';
	import Entry from '../components/LinkEntry.svelte';
	import TimedExperience from '../components/TimedExperience.svelte';
</script>

<Container>
	<header
		class="flex flex-row items-start gap-6 print:block print:border-b print:border-zinc-400 print:pb-3"
	>
		<div class="w-24 h-24 print:hidden">
			<img
				src={photo}
				alt="Jakub Bordáš"
				class="object-cover w-full h-auto rounded-lg aspect-square"
			/>
		</div>
		<div class="flex flex-col items-start self-stretch justify-between print:block">
			<div>
				<h1 class="mb-0 text-lg font-medium print:text-2xl print:font-bold">
					Jakub Bordáš
				</h1>
				<p class="print:hidden">Student & Full-stack Developer</p>
				<p class="hidden print:block print:text-sm print:text-black">
					Full-stack Developer (TypeScript, Vue, Node.js)
				</p>
				<p class="muted print:text-sm">Bratislava, Slovakia</p>
			</div>
			<div class="hidden text-xs print:block print:mt-1 text-zinc-700">
				<span>jakub@bordas.sk</span>
				<span class="mx-1">|</span>
				<span>https://bordas.sk</span>
				<span class="mx-1">|</span>
				<span>https://github.com/ignissak</span>
				<span class="mx-1">|</span>
				<span>https://linkedin.com/in/jacobbordas</span>
			</div>
			<div class="flex gap-2 text-zinc-400 print:hidden">
				<a
					href="https://github.com/ignissak"
					target="_blank"
					class="transition-opacity hover:text-zinc-100"
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
					class="transition-opacity hover:text-zinc-100"
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
				<a href="mailto:jakub@bordas.sk" class="transition-opacity hover:text-zinc-100">
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
	<section id="about" class="print:mt-4">
		<h2 class="mb-3 print:mb-2">
			<span class="print:hidden">About me</span><span class="hidden print:inline"
				>Summary</span
			>
		</h2>
		<p class="print:hidden">
			I'm a Computer Science student and full-stack developer based in Bratislava. I
			specialize in building web applications using modern technologies. Currently pursuing my
			Masters degree while actively working on both professional and personal development
			projects.
		</p>
		<p class="hidden print:block">
			Full-stack developer building web applications since 2022, mainly in TypeScript with
			Vue, Nuxt, Next.js and Node.js/Bun back ends, with additional experience in Python
			(Odoo) and DevOps monitoring. Currently studying for a Master's degree in Intelligent
			Software Systems at FIIT STU. Looking for a full-time role in web application
			development (full-stack, front-end or back-end focused), hybrid in Bratislava or fully
			remote in CET/CEST.
		</p>
		<!-- <span class="px-2 py-1 mt-2 text-xs font-medium rounded-sm bg-neutral-800 text-neutral-100"
			>Currently open to work</span
		> -->
	</section>
	<section id="work">
		<h2 class="mb-3 print:mb-2">Experience</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from="03/2025"
				to={undefined}
				title="Medior Full-stack Developer — WEZEO"
				url="https://wezeo.com"
				paragraph="I develop full-stack applications using various modern technologies, focusing on delivering high-quality solutions that meet client needs."
				skills={[
					'TypeScript',
					'Vue 3',
					'Next.js',
					'Bun',
					'ElysiaJS',
					'Python',
					'WebSockets',
					'Docker',
					'GitLab CI'
				]}
				note="Full-time"
				bullets={[
					'Built a full-stack robot control application: Vue 3 dashboard, Bun (ElysiaJS) back end and a Python app running on the robot, communicating over REST and WebSockets.',
					'Designed the real-time communication between the user-facing dashboard and the robot.',
					'Containerized and deployed applications with Docker and GitLab CI.'
				]}
			/>
			<TimedExperience
				from="06/2024"
				to="02/2025"
				title="Trainee DevOps Engineer — Erste Digital"
				note="Part-time"
				url="https://erstegroup.com"
				paragraph="I worked on the platform's monitoring and alerting systems to ensure the platform's stability and performance."
				skills={['Prometheus', 'Grafana', 'Zabbix', 'Linux']}
				bullets={[
					'Monitored ~20 business-critical banking services using Prometheus and Zabbix.',
					'Built Grafana dashboards giving teams visibility into service health and performance.',
					'Set up alerting rules so teams are notified of outages and performance degradations.'
				]}
			/>
			<TimedExperience
				from="10/2022"
				to={undefined}
				title="Full-stack Developer — Ynet"
				note="Volunteer, association"
				url="https://ynet.sk"
				paragraph="Developing full-stack applications for association's internal purposes and user facing applications used by thousands of users."
				skills={['Nuxt', 'Vue', 'PHP', 'Docker', 'Traefik', 'GitLab CI']}
				bullets={[
					'Build and maintain the user-facing member portal (Nuxt, PHP) used by 3,000+ members annually: registration, payments, device (MAC address) management, account details and member requests.',
					"Improved internal admin tools used to manage the association's members.",
					'Automated deployment of the applications with GitLab CI, Docker and Traefik.'
				]}
			/>
			<TimedExperience
				from="07/2022"
				to="07/2023"
				title="Python Developer — Slovanet"
				note="Part-time"
				url="https://slovanet.net"
				paragraph="I specialized in developing custom Odoo modules for finance and billing systems, thus enhancing the company's internal processes and efficiency."
				skills={['Python', 'Odoo', 'REST', 'PostgreSQL']}
				bullets={[
					'Developed custom Odoo modules for finance and billing systems.',
					'Implemented import of Slovak receipts (eKasa) by scanning their QR code with a camera.',
					'Automated intake of bank transactions and reconciliation processes for accounting.',
					'Integrated the FinStat API into Odoo.'
				]}
			/>
		</div>
	</section>
	<section id="education" class="hidden print:block">
		<h2 class="mb-2">Education</h2>
		<div class="flex flex-col gap-2">
			<div class="break-inside-avoid">
				<div class="flex items-baseline justify-between gap-4">
					<p class="text-black">Ing. (MSc) in Intelligent Software Systems</p>
					<p class="text-black whitespace-nowrap">2025 – 2027 (expected)</p>
				</div>
				<div>
					<p>
						Faculty of Informatics and Information Technologies, Slovak University of
						Technology in Bratislava (FIIT STU)
					</p>
				</div>
			</div>
			<div class="break-inside-avoid">
				<div class="flex items-baseline justify-between gap-4">
					<p class="text-black">Bc. (BSc) in Computer Science</p>
					<p class="text-black whitespace-nowrap">2022 – 2025</p>
				</div>
				<div>
					<p>
						Faculty of Informatics and Information Technologies, Slovak University of
						Technology in Bratislava (FIIT STU)
					</p>
				</div>
			</div>
		</div>
	</section>
	<section id="voluntary-projects" class="print:hidden">
		<h2 class="mb-3">Side projects</h2>
		<div class="flex flex-col gap-6">
			<TimedExperience
				from={2024}
				to={2024}
				url={undefined}
				title="Mobile Travelling App"
				paragraph="A cross-platform mobile app using Expo and React Native to help travellers explore new places and share their experiences."
				skills={['React Native', 'Expo', 'Express.js']}
			/>
			<TimedExperience
				from={2024}
				to={2024}
				title="Steam Friends Library Compare"
				paragraph="A web application that enables Steam users to compare their game libraries with friends, filling a feature gap in Steam's platform."
				url="https://steam.bordas.sk"
				skills={['Vue 3', 'TailwindCSS', 'Express.js']}
			/>
			<TimedExperience
				from={2023}
				to={2023}
				title="Chirpify - Twitter Clone"
				paragraph="A web social media application built as a Twitter clone, featuring user authentication, real-time posts, and interactions."
				url="https://github.com/orgs/ChirpifyApp/repositories"
				skills={['SvelteKit', 'TailwindCSS', 'NestJS', 'Prisma']}
			/>
		</div>
	</section>
	<section id="skills">
		<h2 class="mb-3 print:mb-2">Skills</h2>
		<div class="flex flex-col gap-2">
			<Entry
				title="Languages"
				text="TypeScript, JavaScript, Python, PHP, SQL"
				link={undefined}
			/>
			<Entry
				title="Front-end"
				text="Vue 3, Nuxt, Next.js, React Native, TailwindCSS"
				link={undefined}
			/>
			<Entry
				title="Back-end"
				text="Node.js, Bun, ElysiaJS, REST, WebSockets, PostgreSQL, Odoo"
				link={undefined}
			/>
			<Entry
				title="DevOps"
				text="Docker, GitHub Actions, GitLab CI, Traefik, Linux, Prometheus, Grafana, Zabbix"
				link={undefined}
			/>
			<div class="hidden print:block">
				<Entry title="Spoken" text="Slovak (native), English (B2)" link={undefined} />
			</div>
		</div>
	</section>
	<p class="hidden text-xs print:block">View online at https://bordas.sk</p>
	<footer class="mt-16 print:hidden">
		<p>
			This web is <a href="https://github.com/ignissak/web-2024" class="link" target="_blank"
				>open-source</a
			>. Before forking read the
			<a
				href="https://github.com/ignissak/web-2024/blob/main/LICENSE"
				class="link"
				target="_blank">license</a
			>. <br />© All rights reserved 2026.
		</p>
	</footer>
</Container>
