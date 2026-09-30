<script lang="ts">
	import { goto } from '$app/navigation';

	export let from: number | string,
		to: number | string | undefined,
		title: string,
		url: string | undefined,
		paragraph: string,
		skills: string[],
		note: string | undefined = undefined,
		bullets: string[] = [];

	let toDisplay = to ? to : 'present';
</script>

<div class="grid grid-flow-row grid-cols-12 gap-0 sm:gap-4 print:block print:break-inside-avoid">
	<div class="hidden md:col-span-4 whitespace-nowrap md:block print:hidden">
		<p>{from} – {toDisplay}</p>
	</div>
	<div class="flex flex-col col-span-12 md:col-span-8">
		<div class="flex items-baseline justify-between gap-4">
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
			<p class="hidden whitespace-nowrap print:block print:text-black">
				{from} – {toDisplay}{#if note}<span class="muted">{` | ${note}`}</span>{/if}
			</p>
		</div>
		<div class="md:hidden print:hidden">
			<p>{from} – {toDisplay}</p>
		</div>
		<p class="my-1 {bullets.length > 0 ? 'print:hidden' : ''}">{paragraph}</p>
		{#if bullets.length > 0}
			<ul class="hidden my-1 print:block">
				{#each bullets as bullet}
					<li>{bullet}</li>
				{/each}
			</ul>
		{/if}
		<p class="muted print:hidden">{skills.join(' • ')}</p>
		<p class="hidden muted print:block">Tech: {skills.join(', ')}</p>
	</div>
</div>
