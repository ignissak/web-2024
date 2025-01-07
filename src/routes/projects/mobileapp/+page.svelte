<script lang="ts">
	import { goto } from '$app/navigation';
	import photo1 from '$lib/assets/mobileapp1.webp';
	import photo2 from '$lib/assets/mobileapp2.webp';
	import photo3 from '$lib/assets/mobileapp3.webp';
	import Container from '../../../components/Container.svelte';

	const photos = [photo1, photo2, photo3];
	let selectedIndex = 0;
	let dialog: HTMLDialogElement;
</script>

<svelte:window
	on:click={(e) => {
		if (e.target === dialog) {
			dialog.close();
		}
	}}
/>

<Container>
	<header>
		<button
			type="button"
			on:click={() => goto('/')}
			class="mb-2 text-sm hover:text-zinc-100 hover:cursor-pointer text-zinc-400"
			>← Go back home</button
		>
		<h2 class="mb-3">Mobile Travelling App</h2>
		<p class="mb-2">
			Finding monuments and attractions in Slovakia can be challenging. In our app you will
			find monuments, churches and attractions all over Slovakia. When you visit a Slovak
			region, you can view nearby monuments or attractions. In or near each place there are QR
			codes, which when scanned by our application, you get the opportunity to mark the place
			as "visited" and get points and compare with other users.
		</p>

		<p class="mb-8">
			This project was part of my university course - Mobile technologies and applications.
		</p>
	</header>

	<section id="technical">
		<h2 class="mb-3">Technical aspects</h2>
		<div class="flex flex-col gap-2 sm:grid sm:grid-cols-2">
			<div>
				<h3>Front-end</h3>
				<ul>
					<li>TypeScript</li>
					<li>React Native</li>
					<li>Expo, SDK 50</li>
					<li>Socket.io</li>
					<li>react-i18next</li>
					<li>NativeWind</li>
				</ul>
			</div>
			<div>
				<h3>Back-end</h3>
				<ul>
					<li>Express.js</li>
					<li>PostgreSQL</li>
					<li>Prisma</li>
					<li>Socket.io</li>
				</ul>
			</div>
		</div>
	</section>
	<section id="gallery">
		<h2 class="mb-3">Gallery</h2>
		<div class="relative w-full overflow-hidden min-h-64">
			<div class="flex aspect-auto max-h-[40rem]">
				<!-- svelte-ignore a11y-click-events-have-key-events -->
				{#each photos as photo, index}
					<!-- svelte-ignore a11y-click-events-have-key-events -->
					<!-- svelte-ignore a11y-no-noninteractive-element-interactions -->
					<img
						src={photo}
						alt="Mobile Travelling App"
						class="object-scale-down cursor-pointer px-8 {index === selectedIndex
							? 'fade-in'
							: ''}"
						class:hidden={index !== selectedIndex}
						on:click={() => {
							selectedIndex = index;
							dialog.showModal();
						}}
					/>
				{/each}
				<div
					class="absolute flex justify-between w-full transform -translate-y-1/2 top-1/2"
				>
					<button
						class="p-1 rounded-full bg-zinc-900 hover:bg-zinc-800 text-zinc-100"
						on:click={() => {
							selectedIndex =
								selectedIndex === 0 ? photos.length - 1 : selectedIndex - 1;
						}}
					>
						<svg
							xmlns="http://www.w3.org/2000/svg"
							width="24"
							height="24"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
							stroke-linecap="round"
							stroke-linejoin="round"
							class="lucide lucide-chevron-left"><path d="m15 18-6-6 6-6" /></svg
						>
					</button>
					<button
						class="p-1 rounded-full bg-zinc-900 hover:bg-zinc-800 text-zinc-100"
						on:click={() => {
							selectedIndex =
								selectedIndex === photos.length - 1 ? 0 : selectedIndex + 1;
						}}
					>
						<svg
							xmlns="http://www.w3.org/2000/svg"
							width="24"
							height="24"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
							stroke-linecap="round"
							stroke-linejoin="round"
							class="lucide lucide-chevron-right"><path d="m9 18 6-6-6-6" /></svg
						>
					</button>
				</div>
			</div>
		</div>
	</section>
</Container>

<!-- svelte-ignore a11y-no-noninteractive-element-interactions -->
<dialog bind:this={dialog} on:close>
	<img
		src={photos[selectedIndex]}
		alt="Mobile Travelling App"
		class="object-scale-down max-h-[85vh] w-auto"
	/>
</dialog>
