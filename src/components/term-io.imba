import './term-input.imba'
import './term-output.imba'
import "./courses/home.imba"
import "./courses/cst300.imba"
import "./courses/cst338.imba"
import "./courses/cst334.imba"
import "./courses/cst311.imba"
import "./courses/cst363.imba"
import "./courses/cst336.imba"
import "./courses/cst462.imba"
import "./courses/cst328.imba"
import "./courses/cst370.imba"
import "./courses/cst383.imba"
import "./courses/cst438.imba"
import "./courses/cst329.imba"
import "./courses/cst498.imba"
import "./courses/cst499.imba"
import "./courses/footer.imba"
tag term-io
	output_state\object = [{type\string: 'input', text\string: '', disabled\boolean: false}]
	commands\object = {
				echo: do(flags\Array, args\Array)
					output_state.push({
						type\string: 'text-output'
						text\string: args.join(' ')
						disabled\boolean: false})
					feed_new_line!
					
				reset: do(flags\Array, args\Array)
					while output_state.length > 0 
						output_state.pop!
					feed_new_line!

				clear: do(flags\Array, args\Array)
					nyi!
					feed_new_line!

				run: do(flags\Array, args\Array)
					output_state.push({
						type\string: 'course-tag'
						course-num\string: "{args[0]}"
					})
					feed_new_line!
			}
	clear-buffer-height\number = 0
	cleared\boolean = false
	def feed_new_line 
		output_state.push({
			type\string: 'input'
			text\string: ''
			disabled\boolean: false})

	def nyi 
		output_state.push({
			type\string: 'text-output'
			text\string: 'Not Yet Implemented'
			disabled\boolean: false})
		
	def parse_command e\CustomEvent
		# let line-entered\string = e.detail
		let line-split\Array = e.detail.trim!.split(/[\s]+/)
		let command\string = line-split.shift!
		let flags\Array = []
		let args\Array = []
		if commands.hasOwnProperty(command)
			while let split\string = line-split.shift!
				if split.charAt(0) === '-' # Flag Indicator
					for f in split.slice(1).toLowerCase!.split('')
						unless flags.includes(f) then flags.push(f)					
				else # Arguments
					unless args.includes(split) then args.push(split)
			commands[command](flags, args)
		else
			output_state.push({
				type: 'text-output'
				text: "{command} is not a reconized command"
				editable: false})
			feed_new_line!

	def scroll_to_bottom
		scrollTop = scrollHeight

	def render
		<self [w:100% h:100% of:scroll]
			@command-entered=parse_command
			@click=(lastElementChild.focus!)>
			for ioLine, indx in output_state	
				if ioLine.type === 'input'
					<term-input 
						indx=indx
						bind:disabled=ioLine.disabled
						bind:text=ioLine.text 
						[y@in:100px x@out:-1000px ease:1s] ease>
						
				if ioLine.type === 'text-output'
					<term-output text=ioLine.text
						indx=indx
						[x@in:-100px x@out:-1000px ease:500ms] ease>

				if ioLine.type === 'course-tag'
					if ioLine.course-num === 'home'
						<home-page [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '300'
						<cst-300 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '338'
						<cst-338 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '334'
						<cst-334 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '363'
						<cst-363 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '311'
						<cst-311 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '336'
						<cst-336 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '462'
						<cst-462 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '328'
						<cst-328 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '370'
						<cst-370 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '383'
						<cst-383 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '438'
						<cst-438 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '329'
						<cst-329 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '498'
						<cst-498 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.course-num === '499'
						<cst-499 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>


			# <div$clear-buffer [w:100% h:{clear-buffer-height}px bd:dashed bw:1px] @resize=scroll_to_bottom>	
