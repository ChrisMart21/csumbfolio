tag cst-363
	<self>
		<course-page>
			<span slot="course-name"> "CST 363"
			<div slot="course-description"> 
				"This course provides balanced coverage of database use and design,
				focusing on relational databases. Students will learn to design 
				relational schemas, write SQL queries, access a DB programmatically,
				and perform database administration. Students will gain a working
				knowledge of the algorithms and data structures used in query
				evaluation and transaction processing. Students will also learn
				to apply newer database technologies such as XML, NoSQL, and Hadoop."


			<div slot="course-content" [d:vcc ta:center]>
				<div>
					<p [ta: left]> "For this project we were tasked with developing a schema for
						a fictional pharmaceutial company which gave some usecase scanerios and
						requirements to build around."

					<p> "Schema:"
						<img [rd:xl] src="/assets/cst363/363dbFinalProjSchema.png">
					<p>	"Then created	a script in Java using 
					{<a href='https://docs.oracle.com/javase/8/docs/technotes/guides/jdbc/' target="_blank" > "JDBC"} 
					to populate the database using dummy data with the aid of 
					{<a href="https://github.com/faker-js/faker#readme" target="_blank" > "JS-Faker"}."

					<p[bd:solid bw:thin bc:white/25 p:.25rem]> "Sample output:"
						<img [rd:xl] src="/assets/cst363/363DBDataGenerate.png">

					<p> "Finally, utilized {<a href="https://spring.io/" target="_blank" > "SpringBoot"} 
					to create a simple webpage to implement and test the functionality of the DB"
					<p[bd:solid bw:thin bc:white/25 p:.25rem]> "Sample Form/Data:"
						<img [rd:xl] src="/assets/cst363/sampleForm.png">
					<p> "Full project writeup:"
					<iframe [w:100% h:500px] src="https://drive.google.com/file/d/1o6Z7HQNLDwfHl5QSs9BiKJni6JZAjtPn/preview?usp=sharing">