tag about
	def mount
		emit('output-mounted')
	css w:100% h:auto m:auto px: 0.5rem pt:1rem
		d:hcs g:.5rem
	<self>
		<div [d:vsc w:100% g:1rem]>

			<div [d:hcc w:100%]>
				<p><u> "Stack used for this website"
			<div [d:hcs maw:260px g:1rem w:100%]>
				<a href="https://imba.io" target="_blank">
						<img.wing [h: 50px ] src="https://raw.githubusercontent.com/imba/branding-imba/master/yellow-wing-logo/imba.svg">
				<p> "Written in {<a href="https://imba.io" target="_blank"> 'Imba'}"
			<div [d:hcs maw:260px g:1rem w:100%]>
				<a href="https://vitejs.dev" target="_blank">
					<img [h:35px] src="https://raw.githubusercontent.com/imba/branding-imba/master/misc/vite.svg">
						css filter@hover:drop-shadow(0 0 4em white7) 
				<p> "Bundled with vite {<a href="https://vitejs.dev/" target="_blank"> 'Vite'}"
			<div [d:hcs maw:260px g:1rem w:100% ]>
				<a href="https://www.vercel.com/" target="_blank">
					<img [h:30px filter:blur(0.5px)] src="/assets/vercelicon.svg">
				<p> "Hosted on vercel {<a href="https://imba.io" target="_blank"> 'Vercel'}"