tag term-input
	prop text\string
	prop disabled\boolean
	username\string = 'chris'
	domain\string = 'termfolio'
	currentDirectory\string = '~/courses$ '

	
	def handle_command k\KeyboardEvent
		unless k.shiftKey
			k.preventDefault!
			disabled = true
			emit('command-entered', k.target.value)


	def resize_ta_height e\InputEvent
		# L e.target.offsetHeight, e.target.clientHeight
		let offset = e.target.offsetHeight - e.target.clientHeight;
		e.target.style.height = 'auto'
		e.target.style.height = "{e.target.scrollHeight + offset}px";
		
	def handle_resize
		$term-text-area.style.width = "{clientWidth - $term-domain.clientWidth}px"

	def mount
		emit('input-mounted', lastElementChild)	

	def render
		<self @resize=handle_resize>
			css d:htl w:100%

			<p$term-domain.domain> "{username}@{domain}:{currentDirectory}"
				css px:.5rem
			<textarea$term-text-area rows='1' wrap='hard' 
				disabled=disabled
				@input=resize_ta_height
				@keydown.enter=handle_command
				bind=text>
				css bgc:clear resize:none ol:none mx:0.5rem
