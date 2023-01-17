import "./courseDescription.imba"

tag cst-383
	css .content 
		d:vflex jc:space-between ai:center
		m:auto
		p:1rem
		g: 1rem

	css	img w:100%
	
	<self>
		<div .content>
			<course-description>
				<span slot="courseName"> "CST 338"
				<div slot="courseDesc" [ta:left]> 
					"This is an intermediate-level programming course covering techniques 
					for developing large-scale software systems using object-oriented 
					programming. Coverage includes software development life cycle 
					models, requirements analysis, and graphical user interface development."

			<div .course content [d:vflex @xl:hflex jc:center ai:center w:100% m:0 p:0 g:1rem]>