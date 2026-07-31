<script lang="ts">
	export let title: string, text: string, link: string | undefined;
</script>

<div class="grid grid-cols-12 gap-0 sm:gap-4 print:break-inside-avoid">
	<p class="col-span-3">{title}</p>
	{#if link}
		<a href={link} target="_blank" class="col-span-9 text-zinc-100 link print:text-black">{text}</a
		>
	{:else}
		<p class="col-span-9 text-zinc-100 print:text-black">{text}</p>
	{/if}
</div>
