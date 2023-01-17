
tag nav-item
	prop courseInfo = {}
	prop toggled = false
	prop collapsed = false

	css h:6.66%  bgc:$primary-nav	
		d:flex jc:center ai:center fs:sm px:.5rem
		rd:0% 40% 40% 0% / 0% 90% 90% 0%
		bd:solid bw:.2px bc:cooler8
		w:85%
		of:hidden
		# ws:nowrap
		tween:all 500ms ease
		&.shortNav h:3rem
		
		@hover bgc:$hover-nav w:90% shadow:1px 1px 5px 
		@active bgc:$secondary-nav
	css	&.toggled bgc:$secondary-nav w:99% shadow:1px 1px 8px
	css p
		c:$fontcolor-nav
		&.collapsed rotate:-45deg
			@lt-xs: -90deg

	css span
		c:$fontcolor-nav
		&.collapsed	
			d:none
		
	<self 
	.collapsed=collapsed .toggled=toggled
	@click=emit("nav-toggled", courseInfo.courseNum)>

		if courseInfo.courseNum === 111
			<p.collapsed=collapsed> "{courseInfo.courseName}"
		else
			<p.collapsed=collapsed> "{courseInfo.courseNum}" 
				<span.collapsed=collapsed> " {courseInfo.courseName}" 

# Main Nav Bar Left aligned Absolutely
tag nav-bar
	prop courseList = [	
		{toggled: true,  courseNum: 111 ,  courseName: "Home"}
		{toggled: false, courseNum: 300, courseName: "Major Pro Seminar"}
		{toggled: false, courseNum: 338, courseName: "Java"}
		{toggled: false, courseNum: 334, courseName: "Operating Systems"}
		{toggled: false, courseNum: 363, courseName: "Intro to Databases"}
		{toggled: false, courseNum: 311, courseName: "Computer Networking"}
		{toggled: false, courseNum: 336, courseName: "Internet Programming"}
		{toggled: false, courseNum: 462, courseName: "Race, Gender, & Class"}
		{toggled: false, courseNum: 328, courseName: "DigitalArt & Design"}
		{toggled: false, courseNum: 370, courseName: "Algorithm Analysis"}
		{toggled: false, courseNum: 383, courseName: "Intro to Data Science"}
		{toggled: false, courseNum: 438, courseName: "Software Engineering"}
		{toggled: false, courseNum: 329, courseName: "Reasoning W/ Logic"}
		{toggled: false, courseNum: 498, courseName: "Capstone Planning"}
		{toggled: false, courseNum: 499, courseName: "Capstone"}
	]
	prop active = "Home"
	prop collapsed = false
	prop short = false
	css self
		tween: all 500ms ease
		pos:absolute x:0px y:0px
		m:0 p:0 h:100vh w:8em
		ofy:scroll
		ofx:visible
		scrollbar-width: none
		zi: 6
		&.collapsed w:2em
			@lt-xs w:1rem

	def handleNavToggle e
		unless active === e.detail
			active = e.detail
			courseList.map do(course)
				if course.courseNum === e.detail
					course.toggled = !course.toggled
				else
					course.toggled = false

	def collapseNav 
		collapsed = !collapsed
	
	# Change nav items to compensate for small screen height
	def resizeNavItems
		if window.innerHeight < 650 
			short = true 
		else 
			short=false
			

	<self 
	.collapsed=collapsed
	 @resize.throttle=resizeNavItems>
		
		for navItem in courseList
			<nav-item  @nav-toggled=handleNavToggle 
			.shortNav=short
			courseInfo=navItem 
			toggled=navItem.toggled 
			collapsed=collapsed>
			