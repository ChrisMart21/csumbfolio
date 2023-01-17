import "./courseDescription.imba"

tag cst-462
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
					"This is a mostly	asynchronous, 8-week course in which students learn about and discuss 
					a weekly social justice topic while providing tech-based service to an
					 approved community partner. This course aims to strengthen communities 
					 through service, increase awareness about the covered topics, and 
					 provide hands-on experience for students."

			<div .course content [d:vflex  jc:center ai:center w:100% m:0 p:0 g:1rem]>
				<div>
					<h3><strong><em> " Course Highlights"
					<p [w: 100% max-width:720px]> "For this course I partnered,
					and served 25+ hours towards helping catalog Books, Magazines, 
					and other Periodicals with the
					{<a href="https://www.aahs-online.org/" target="_blank"> "American Aviation Historical Society"}
					"
				<div [d:flex flw:wrap jc:space-evenly ai:center bgc:white/25 g:1rem p:1rem rd:25px]>
						<div>
							<a href="https://www.aahs-online.org/" target="_blank">
								<img src="../assets/cst462/AAHS.jpg" [rd:25px]>
