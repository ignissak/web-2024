<script lang="ts">
	import { goto } from '$app/navigation';

	export let from: number,
		to: number | undefined,
		title: string,
		url: string | undefined,
		paragraph: string,
		skills: string[];
</script>

<div class="grid grid-flow-row grid-cols-12 gap-0 sm:gap-4">
	{#if to}
		<p class="col-span-3">{from} - {to}</p>
	{:else}
		<p class="col-span-3">{from} - present</p>
	{/if}
	<div class="flex flex-col col-span-9">
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
		<p class="my-1">{paragraph}</p>
		<p class="muted">{skills.join(' • ')}</p>
	</div>
</div>
