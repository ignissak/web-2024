<script lang="ts">
	export let from: number,
		to: number | undefined,
		title: string,
		url: string,
		paragraph: string,
		skills: string[];
</script>

<div class="flex flex-col sm:flex-row gap-0 sm:gap-4">
	{#if to}
		<p class="flex-none w-25">{from}{from === to ? '' : ' - ' + to}</p>
	{:else}
		<p class="flex-none w-25">{from} - present</p>
	{/if}
	<div class="flex flex-col">
		<a href={url} target="_blank">{title}</a>
		<p class="my-1">{paragraph}</p>
		<p class="muted">{skills.join(' • ')}</p>
	</div>
</div>
