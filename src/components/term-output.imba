tag term-output
	def mount
		emit('output-mounted')

	prop text\string
	<self> 
		css w:100% h:auto px: 0.5rem 
			d:htl g:.5rem
		<p> ">>"
		<p> text
			css w:100% h:auto ws:pre-line word-break:break-all
		