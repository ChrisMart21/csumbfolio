tag course-description
	css max-width:750px bd:solid bw:thin 
		# h:10rem
		# px:0.5rem

	css .header p:0 m:0 w:100% 
		# h:15%
		bd:none bdb:solid bw:thin 
		d:flex jc:space-between px:.5rem
	
	css .desc p:.5rem 
		# h:85% of:scroll
	css svg rotate:90deg 
		h:25px
		pos:relative r:0

	

	<self>
		<div .header> 
			<slot .abc name="courseName">
			<span> "Course Description" 
		<div .desc>
			<slot name="courseDesc"> "No Desc Yet"
			
		