import "./courseDescription.imba"
import Freezeframe from 'freezeframe'
# import Glide from '@glidejs/glide'


tag cst-334
	css .content 
		d:vflex jc:space-between ai:center
		m:auto
		p:1rem
		g: 1rem
	css ul list-style:circle ta:left

		
		.useCase w:250px 

		p w:100% @xl: 750px
	def mount
		x = new Freezeframe(
			{selector: '.useCase',
			trigger: 'click',
			overlay: true,
			responsive: false,
			warnings: false
			}
		)
			
	<self>
		<div .content>
			<course-description>
				<span slot="courseName"> "CST 334: Operating Systems"
				<div slot="courseDesc" [ta:left]> 
					"Students in this course will learn about the use and design of modern
					operating systems, focusing on Linux. On the 'use' side, students
					will learn the Linux command line, to write shell scripts, and to
					build programs with GNU utilities like awk, sed, and make.
					On the 'design' side, students will develop a deep understanding of
					process management, memory management, file systems, and concurrency,
					and how they apply to modern technologies like virtualization and 
					cloud computing. "
			<div [w:100% max-width:720px]>
				<h1> "Course Highlights"

				<ul>
					<li><strong> "Programming in C and use of System Calls"
					<ul>
						<li> "To develop sample C programs"
						<li> "To develop programs with two or more processes using fork(), exit(), wait() and exec() system calls"
					<li><strong> "Inter-process Communication — Pipes "
					<ul>
						<li> "develop multi-process application programs"
						<li> "To demonstrate the use of pipes as an inter-process Communication (IPC) mechanism"
					<li><strong> "Memory Management"
					<ul>
						<li> "Simulate a basic page replacement algorithm (FIFO)"
						<li> "To evaluate the performance in terms of miss/hit rate of this algorithm "
					<li><strong> "Developing Multi-Threaded Applications "
					<ul>
						<li> "develop multi-threaded application programs"
						<li> "demonstrate the use of threads in matrix multiplication"
					<li><strong> "Synchronization Using Semaphores"
					<ul>
						<li> "Use semaphores for synchronization"
						<li> "Develop a C program to solve the producer - consumer problem "
				
			<div [w:100% max-width:720px]>
				<h1> "Main takeaways"
				<p [ta:left]> "This course helped shed light on the many layers of abstraction
				that our modern operating systems are built upon. 
				Scheduling, multi-threaded concurency, persistence, and filesystem mechanics. 
				Our modern OS's manage quite a bit behind the scenes which allows us to seamlesly 
				browse, play, and create with ease."

					
