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
import {
	output_state,
	commands,
	feed_new_line,
	parse_command,
	courseList, 
	pop_visit_hist} from "./term-data.imba"

tag term-io
	def awaken
		courseHist = JSON.parse(window.localStorage.getItem("visited_courses"))
		if courseHist isnt null then pop_visit_hist(courseHist)
		
	def focus_output e
		e.target.scrollIntoView({behavior: "smooth"})

	def focus_input 
		# Terminal input is always the last element 
		lastElementChild.lastElementChild.focus({preventScroll:true})

	def handle_ls_help e
		# modify the input and display relevant course.
		output_state[-1].text = "view {e.detail.courseNum}" 
		output_state[-1].disabled = true
		commands.view.execute([e.detail],[e.detail.courseNum])
	
	def handle_help e
		feed_new_line(e.detail)

	def render
		<self [w:100% h:100% of:scroll]
			@command-entered=parse_command
			@output-mounted=focus_output
			@input-mounted=focus_input
			@help-command=handle_help
			@ls-help=handle_ls_help
			@click=focus_input
			>
			for ioLine, indx in output_state	
				if ioLine.type === 'input'
					<term-input 
						bind:disabled=ioLine.disabled
						bind:text=ioLine.text 
						>
						
				if ioLine.type === 'text-output'
					<term-output text=ioLine.text
						>
				
				if ioLine.type === 'command'
					if ioLine.command === 'about' then <about >
					if ioLine.command === 'help' then <help commands=commands>
					if ioLine.command === 'ls' then <listdir courses=courseList >
					if ioLine.command === 'home' then <home-page >

				if ioLine.type === 'course-tag'
					if ioLine.course-num === '300' then <cst-300>
					if ioLine.course-num === '338' then <cst-338>
					if ioLine.course-num === '334' then <cst-334>
					if ioLine.course-num === '363' then <cst-363>
					if ioLine.course-num === '311' then <cst-311>
					if ioLine.course-num === '336' then <cst-336>
					if ioLine.course-num === '462' then <cst-462>
					if ioLine.course-num === '328' then <cst-328>
					if ioLine.course-num === '370' then <cst-370>
					if ioLine.course-num === '383' then <cst-383>
					if ioLine.course-num === '438' then <cst-438>
					if ioLine.course-num === '329' then <cst-329>
					if ioLine.course-num === '498' then <cst-498>
					if ioLine.course-num === '499' then <cst-499>