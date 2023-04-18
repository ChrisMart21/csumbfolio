tag listdir
	prop courses
	rwx = ".rwxr-xr-x"
	rwxl = "----------" 

	def mount
		emit('output-mounted')
		
	def handle_ls_click course
		emit('ls-help', course)
		
	def render
		css 
			.read c:green
			.write c:yellow4
			.exec c:red5
			.visited c:blue3
			.non-visited c:gray4
			.entry @hover c:amber4
				# tween:all 0.25s ease-in-out
		<self [px:1em ]>
			<p [w:auto]> 
				"{rwxl} 
				v
				year 
				trm
				num
				course
				"
			for course of courses
				<p  [ws:pre-wrap]> 
					"." 
					<span .read> "r"
					<span .write> "w"
					<span .exec> "x"
					<span .read> "r"
					<span .write> "-"
					<span .exec> "x"
					<span .read> "r"
					<span .write> "-"
					<span .exec> "x"
					# <span .visited=visited .non-visited=!visited> " {visited ? 'Y' : 'N'} "
					
					<span 
						@click=handle_ls_click(course)
						.entry 
						.visited=course.visited .non-visited=!course.visited> 
						" {course.visited ? 'Y' : 'N'} "
						"{course.year} {course.term} {course['courseNum']} {course['courseName']}"