<script lang="ts">
	import { goto } from '$app/navigation';
	import photo1 from '$lib/assets/mobileapp1.webp';
	import photo2 from '$lib/assets/mobileapp2.webp';
	import photo3 from '$lib/assets/mobileapp3.webp';
	import Container from '../../../components/Container.svelte';

	const photos = [photo1, photo2, photo3];
	let imageDialog: HTMLDialogElement | null = null;

	let selectedIndex: number | undefined;
	const zoom = (index: number) => {
		if (selectedIndex === index) {
			selectedIndex = undefined;
			return;
		}
		selectedIndex = index;
		imageDialog?.showModal();
	};
</script>

<svelte:window
	on:click={(e) => {
		if (e.target === imageDialog) {
			imageDialog?.close();
			selectedIndex = undefined;
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

		<div
			id="carousel"
			class="grid grid-row-3 items-center justify-center md:grid-cols-3 gap-4 md:mx-[-4rem] mb-3"
		>
			{#each photos as photo, i}
				<div
					class="w-48 h-48 aspect-square"
					style={`transform: rotate(${i % 2 === 0 ? -3 : 3}deg)`}
				>
					<!-- svelte-ignore a11y-click-events-have-key-events -->
					<!-- svelte-ignore a11y-no-noninteractive-element-interactions -->
					<img
						src={photo}
						alt="Mobile Travelling App"
						class="object-cover object-center w-full h-full transition border rounded-lg hover:scale-110 hover:cursor-pointer border-zinc-100"
						on:click={() => zoom(i)}
					/>
				</div>
			{/each}
		</div>
		<p class="text-center">Click the image to zoom in.</p>
	</header>

	<section id="technical">
		<h2 class="mb-3">Technical aspects</h2>
		<div class="grid grid-rows-2 gap-2 sm:grid-cols-2">
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
</Container>

<dialog
	bind:this={imageDialog}
	class="flex items-center justify-center py-4 bg-opacity-75 bg-zinc-900"
	on:close={() => console.log('closed')}
>
	{#if selectedIndex !== undefined}
		<img src={photos[selectedIndex]} alt="Enlarged photo" class="max-h-[75vh]" />
	{/if}
</dialog>

<style>
	.zoom {
		@apply fixed z-10 top-0 left-0 h-full w-full transition-all flex items-center justify-center bg-zinc-950 bg-opacity-50;
	}
	.zoom img {
		@apply object-scale-down;
	}
</style>
