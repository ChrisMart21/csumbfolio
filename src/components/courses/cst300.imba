import "./courseDescription.imba"

tag cst-300
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
					"Helps students identify and articulate personal, professional,
					and social goals. Provides an integrated overview of the computer
					science and communication design majors and their requirements.
					Students develop a plan for their learning goals. Students learn
					writing, presentation, research and critical-thinking skills within
					the diversified fields of information technology and communication
					design. Students learn how to analyze, predict, and articulate trends 
					in the academic, public service"
					<ul [ta:left px:2rem]>
						<li> "Research historical trends of the field of computer science and technology"
						<li> "Analyze different types of information (oral, written and visual)"
						<li> "Set educational and career goals"
						<li> "Conduct an informational interview"
						<li> "Develop an Individual Learning Plan (ILP)"
						<li> "Develop time management plan & understand basic project management concepts"
						<li> "Review the portfolio and Capstone process"
						<li> "Demonstrate professional presentation skills"
						<li> "Demonstrate problem solving skills"
						<li> "Engage in critical thinking about your own learning"
						<li> "Engage in online discussion"

			<div .course [d:vflex jc:center ai:center w:100% m:0 p:0 g:1rem]>
				<iframe [w:100% h:450px max-width:720px ] src="https://drive.google.com/file/d/1tRbrjInGBa51_nK7YmTo0DaTvCO20uKt/preview?usp=sharing">
				<iframe [w:100% h:450px max-width:720px ] src="https://www.youtube-nocookie.com/embed/wv3PSN5i6-E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
				<iframe [w:100% h:450px max-width:720px ] src="https://www.youtube-nocookie.com/embed/qlNqyiX2ypA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>