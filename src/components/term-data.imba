export let courseList = [	
		{courseNum: 300, courseName: "Major Pro Seminar", year:2021, term:"Fal"}
		{courseNum: 338, courseName: "Java", year:2021, term:"Fal"}
		{courseNum: 363, courseName: "Intro to Databases", year:2022, term:"Spr"}
		{courseNum: 334, courseName: "Operating Systems", year:2022, term:"Spr"}
		{courseNum: 311, courseName: "Computer Networking", year:2022, term:"Sum"}
		{courseNum: 336, courseName: "Internet Programming", year:2022, term:"Sum"}
		{courseNum: 462, courseName: "Race, Gender, & Class", year:2022, term:"Fal"}
		{courseNum: 328, courseName: "DigitalArt & Design", year:2022, term:"Fal"}
		{courseNum: 370, courseName: "Algorithm Analysis", year:2022, term:"Fal"}
		{courseNum: 383, courseName: "Intro to Data Science", year:2023, term:"Spr"}
		{courseNum: 438, courseName: "Software Engineering", year:2023, term:"Spr"}
		{courseNum: 329, courseName: "Reasoning W/ Logic", year:2023, term:"Sum"}
		{courseNum: 498, courseName: "Capstone Planning", year:2023, term:"Sum"}
		{courseNum: 499, courseName: "Capstone", year:2023, term:"Sum"}
	]

export let output_state\object = [
		# Testiung purposes only! Remove Below Line / Edit for testing.
		
		# {type\string: 'input', text\string: 'home', disabled\boolean: true}
		# {type\string: 'command', command\string: 'home'}

		# {type\string: 'input', text\string: 'help', disabled\boolean: true}
		# {type\string: 'command', command\string: 'help'}
		
		# {type\string: 'input', text\string: 'ls', disabled\boolean: true}
		# {type\string: 'command', command\string: 'ls'}


		# {type\string: 'input', text\string: 'about', disabled\boolean: true}
		# {type\string: 'command', command\string: 'about'}

		# {type\string: 'input', text\string: 'view 370', disabled\boolean: true}
		# {type\string: 'course-tag', course-num\string: '328'}
		# {type\string: 'course-tag', course-num\string: '370'}
		{type\string: 'course-tag', course-num\string: '383'}

		{type\string: 'input', text\string: '', disabled\boolean: false}
	]
export let commands\object = {
		ls\object:{
			helperText\string: 'List the Courses availabe in this directory',
			usage\string: "ls"
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'command'
					command\string: "ls"
				})
				feed_new_line!
		}
		view\object:{
			helperText\string: 'View a course page',
			usage\string: "view \{course-number\}"
			execute\Function: do(flags\Array, args\Array)
				for course of courseList
					if course.courseNum == args[0]
						output_state.push({
							type\string: 'course-tag'
							course-num\string: "{args[0]}"
						})
						feed_new_line!
						return
				output_state.push({
					type: 'text-output'
					text: "{args[0]} is not a valid course number"
					editable: false})
				feed_new_line!

		}
		echo\object:{
			helperText\string: 'Echoes the given text',
			usage\string: "echo \{text\}"
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'text-output'
					text\string: args.join(' ')
					disabled\boolean: false})
				feed_new_line!
		}
		reset\object:{
			helperText\string: 'Clears the terminal output',
			usage\string: "reset"
			execute\Function: do(flags\Array, args\Array)
				while output_state.length > 0 
					output_state.pop!
				feed_new_line!
		}
		about\object:{
			helperText\string: 'View the about page',
			usage\string: "about"
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'command'
					command\string: 'about'
				})
				feed_new_line!
		}
		home\object:{
			helperText\string: 'View the home page',
			usage\string: "home"
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'command'
					command\string: 'home'
				})
				feed_new_line!
		}
		help\object:{
			helperText\string: 'List of commands to use view the help page',
			usage\string: "help"
			execute\Function: do(flags\Array, args\Array)
				output_state.push({
					type\string: 'command'
					command\string: 'help'
				})
				feed_new_line!
		}
	}
export def feed_new_line(newLineText="") 
		output_state.push({
			type\string: 'input'
			text\string: newLineText
			disabled\boolean: false})

export 	def nyi 
		output_state.push({
			type\string: 'text-output'
			text\string: 'Not Yet Implemented'
			disabled\boolean: false})


export 	def parse_command e\CustomEvent
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