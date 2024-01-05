/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],
	theme: {
		extend: {
			width: {
				'22': '5.5rem',
				'25': '6.25rem',
			},
			height: {
				'22': '5.5rem',
			},
		}
	},
	plugins: [
		require('tailwindcss-font-inter')
	]
};
