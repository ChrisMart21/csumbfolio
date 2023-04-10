tag home-page
	def mount
		emit('output-mounted')
	css .content 
		d:vsc
		m:auto
		# p:2rem
		g: 1rem
		of:scroll

	css	img w:100% max-width:1080px
	
	css p max-width:720px

	css	a td:underline c:purple4 
	css	svg h:45px rd:50px p:.25rem bgc:white/25
	<self>
		<div .content>
			# <img src="/assets/img/te-montereybay.jpg">
			<p> "Hello my name is Christian Martinez and 
			I am proud to call myself a CSUMB Otter. 
			Looking forward to completing my degree while learning the 
			fundamentals of CS. This webpage is a porfolio of my 
				endeavors during my time with CS Online @ CSUMB."
			<p> 'Written as an homage to the terminal; one of the primary tools that sparked my interest in computers, and programming.'
