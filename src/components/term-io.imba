import "./term-input.imba"
import "./term-output.imba"
import "./home.imba"
import "./about.imba"
import "./courses/course-page.imba"
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

tag term-io
	output_state\object = [
		# Testiung purposes only! Remove Below Line / Edit for testing.
		{type\string: 'input', text\string: 'view home', disabled\boolean: true}
		{type\string: 'course-tag', course-num\string: 'home'}
		# {type\string: 'input', text\string: 'about', disabled\boolean: true}
		# {type\string: 'command', command\string: 'about'}
		# {type\string: 'course-tag', course-num\string: '370'}



		{type\string: 'input', text\string: '', disabled\boolean: false}
	]

	commands\object = {
		echo:{
			helperText\string: 'Echoes the given text',
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'text-output'
					text\string: args.join(' ')
					disabled\boolean: false})
				feed_new_line!
		},
		reset:{
			helperText\string: 'Resets the terminal',
			execute\Function: do(flags\Array, args\Array)
				while output_state.length > 0 
					output_state.pop!
				feed_new_line!
		},
		view:{
			helperText\string: 'View a course page',
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'course-tag'
					course-num\string: "{args[0]}"
				})
				feed_new_line!
		},
		about:{
			helperText\string: 'View the about page',
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'command'
					command\string: 'about'
				})
				feed_new_line!
		},
		"":{
			helperText\string: 'Shouldnt be here',
			execute\Function: do(flags\Array, args\Array)
				feed_new_line!
		}
	}
	
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
		let line-split\Array = e.detail.trim!.split(' ')
		L line-split.join(" ")
		let command\string = line-split.shift!
		let flags\Array = []
		let args\Array = []
		let flagscaptured = false
		if commands.hasOwnProperty(command)
			while line-split.length > 0 
				let split\string = line-split.shift!
				if split.charAt(0) === '-' and !flagscaptured # Flag Indicator
					for f in split.slice(1).toLowerCase!.split('')
						unless flags.includes(f) then flags.push(f)					
					flagscaptured = !flagscaptured
				else # Arguments
					args.push(split)
			commands[command]['execute'](flags, args)
			L "Command: {command} flags: {flags} args: {args}"
		else
			output_state.push({
				type: 'text-output'
				text: "{command} is not a reconized command"
				editable: false})
			feed_new_line!

	def scroll_to_bottom
		lastElementChild.lastElementChild.scrollIntoView({behavior: "smooth"})
		
	def focus_output e
		e.target.scrollIntoView({behavior: "smooth"})

	def input_mounted e
		e.detail.focus({preventScroll:true})

	def focus_input 
		lastElementChild.lastElementChild.focus({preventScroll:true})

	def render
		<self [w:100% h:100% of:scroll]
			@command-entered=parse_command
			@output-mounted=focus_output
			@input-mounted=input_mounted
			@click=focus_input
			>
			for ioLine, indx in output_state	
				if ioLine.type === 'input'
					<term-input 
						bind:disabled=ioLine.disabled
						bind:text=ioLine.text 
						[y@in:100px x@out:-1000px ease:1s] ease>
						
				if ioLine.type === 'text-output'
					<term-output text=ioLine.text
						[x@in:-100px x@out:-1000px ease:500ms] ease>
				
				if ioLine.type === 'command'
					if ioLine.command === 'about'
						<about>

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
