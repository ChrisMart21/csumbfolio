tag content-footer
	css d:hflex jc:space-between ai:center
		w:100% h:2% p:0 m:0 bw:thin bd:none bdt:solid pt:2rem
		bc:warm0/50
		img h:3rem 
		.imb h:2.5rem m:0  
		.vite h:2.5rem m:0
		.netlify h:2rem m:0
		# a bd:solid
	<self >
		<a href="https://csumb.edu/">
			<img #csulogo src="../assets/img/csumbLogoTransparent.png">
		<div  [d:vflex] >
			<h4> "Powered by"
			<hr>
			<div  [d:hflex jc:space-between ai:center]>
				<a href="https://imba.io/" target="_blank"> 
					<svg .imb src="../assets/imba.svg" >

				<a href="https://vitejs.dev/" target="_blank"> 
					<svg .netlify src="../assets/netlify.svg">

				<a href="https://vitejs.dev/" target="_blank"> 
					<svg .vite src="../assets/vite.svg">


		