import "./term-input.imba"
import "./term-output.imba"
import "./home.imba"
import "./about.imba"
import "./help.imba"
import "./listdir.imba"
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
import {output_state,	commands,	feed_new_line, parse_command} from "./term-data.imba"

tag term-io
		
	def focus_output e
		e.target.scrollIntoView({behavior: "smooth"})

	# Terminal input is always the last element 
	# Makes focusing easy
	def focus_input 
		lastElementChild.lastElementChild.focus({preventScroll:true})

	def render
		<self [w:100% h:100% of:scroll]
			@command-entered=parse_command
			@output-mounted=focus_output
			@input-mounted=focus_input
			@help-command=feed_new_line(e.detail)
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
						<about [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.command === 'help'
						<help commands=commands [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
					if ioLine.command === 'ls'
						<listdir [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>

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
