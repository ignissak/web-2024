<script lang="ts">
	import { goto } from '$app/navigation';

	export let from: number,
		to: number | undefined,
		title: string,
		url: string | undefined,
		paragraph: string,
		skills: string[];

	let toDisplay = to ? to : 'present';
</script>

<div class="grid grid-flow-row grid-cols-12 gap-0 sm:gap-4 print:break-inside-avoid">
	<div class="hidden col-span-3 md:block">
		{#if to}
			<p>{from} - {to}</p>
		{:else}
			<p>{from} - present</p>
		{/if}
	</div>
	<div class="flex flex-col col-span-12 md:col-span-9">
		{#if url}
			{#if url.startsWith('/')}
				<!-- svelte-ignore a11y-click-events-have-key-events -->
				<!-- svelte-ignore a11y-no-noninteractive-element-interactions -->
				<p class="link" on:click={() => goto(url)}>{title}</p>
			{:else}
				<a href={url} target="_blank" class="link">{title}</a>
			{/if}
		{:else}
			<p class="entry-title">{title}</p>
		{/if}
		<div class="md:hidden">
			<p>{from} - {toDisplay}</p>
		</div>
		<p class="my-1">{paragraph}</p>
		<p class="muted">{skills.join(' • ')}</p>
	</div>
</div>
