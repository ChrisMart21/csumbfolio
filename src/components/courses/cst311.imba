import "./courseDescription.imba"

tag cst-311
	css .content 
		d:vflex jc:space-between ai:center
		m:auto
		p:1rem
		g: 1rem

	css	img w:100%
	
	<self>
		<div .content>
			<course-description>
				<span slot="courseName"> "CST 311"
				<div slot="courseDesc" [ta:left]> 
					"Survey of Telecomm and Data Comm Technology Fundamentals,
					Local Area Network, Wide Area Network, Internet and internetworking
					protocols including TCP/IP, network security and performance,
					emerging industry trends such as voice over the network and high
					speed networking. Designed as a foundation for students who wish to
					pursue more advanced network studies including certificate programs.
					Includes hands-on networking labs that incorporate Cisco CCNA 
					lab components."

			<div .course [w:100% m:0 p:0 d:vflex jc:space-between ai:center]>
				<div[w:100% max-width:800px]>
					<h3><u> "Course Highlights"
					<p><strong> "Python Chat server written using the python3 
					{<a href="https://docs.python.org/3/library/socket.html" target="_blank"> "socket API"}." 
						<br>
						<div [rd:25px bgc:warm0/10 p:1rem]>
							<p> "Sample Run on Mininet Hosts:"
								<img src="../assets/cst311/pythonChatClient.png">
							<br>
							<p> "The server runs a multithreaded program that handles incomming 
							connections and genreates an individual thread per client for recieving
							and sending packets. This allows several clients to be connected simultaneously"
						<br>
						
					<p><strong> "Mininet Custom Network Topology:"
						<div [rd:25px bgc:warm0/10 p:1rem]>
							<p> "This project required the understanding of subnetting, and 
							how routers forward traffic based on routing tables. The mininet
							consists of 1 chat server host, 1 webserver proteccted by a SSL 
							certificate and 2 chat clients"
								<p> "Project writeup:"
								<iframe [w:100% h:500px] src="https://drive.google.com/file/d/1zUt-KOaFxOmj9gFI8PneaGivg18Y78HT/preview?usp=sharing">