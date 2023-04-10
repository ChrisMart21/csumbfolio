import {courseList} from './term-data.imba'
tag listdir
	rwx = ".rwxr-xr-x"
	rwxl = "----------" 
	def mount
		emit('output-mounted')
	def render
		<self [px:1em]>
			<p> 
			"{rwxl} 
			year 
			trm
			num
			course
			"
			for course of courseList
				<p @click=emit("ls-help", course)> 
					"{rwx} 
					{course.year} 
					{course.term} 
					{course['courseNum']} 
					{course['courseName']}"