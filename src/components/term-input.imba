tag term-input
	prop text\string
	prop disabled\boolean
	prop indx\number
	username\string = 'chris'
	domain\string = 'termfolio'
	currentDirectory\string = '~/courses$ '

	
	def handle_command k\KeyboardEvent
		unless k.shiftKey
			k.preventDefault!
			disabled = true
			emit('command-entered', k.target.value)

	def focus_input
		unless disabled then $term-text-area.focus!

	def resize_ta_height e\InputEvent
		# L e.target.offsetHeight, e.target.clientHeight
		let offset = e.target.offsetHeight - e.target.clientHeight;
		e.target.style.height = 'auto'
		e.target.style.height = "{e.target.scrollHeight + offset}px";
		
	def handle_resize
		$term-text-area.style.width = "{clientWidth - $term-domain.clientWidth}px"

	def render
		focus_input!
		<self @resize=handle_resize>
			css d:htl w:100%

			<p$term-domain.domain> "{username}@{domain}:{currentDirectory}"
				css px:.5rem
			<textarea$term-text-area rows='1' wrap='hard' 
				disabled=disabled
				@input=resize_ta_height
				@keydown.enter.prevent=handle_command
				bind=text>
				css bgc:clear resize:none ol:none mx:0.5rem
