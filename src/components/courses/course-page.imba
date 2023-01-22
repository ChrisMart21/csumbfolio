tag course-page
	def render
		<self>
			css m:auto p:1rem maw:2000px
			css d:vsc g:1rem
			<div$description-window>
				css w:100% max-width:750px bd:solid bw:thin 
				<div$description-header>
					css bd:none bdb:solid bw:thin	d:flex jc:space-between px:.5rem
					<slot name="course-name"> "Course Description" 
				<div$description-text>
					css p:.5rem ta:left
					<slot name="course-description"> "No Desc Yet"

			<div$course-content>
				css w:100%
				<slot name="course-content"> "No Content Yet :/"
			