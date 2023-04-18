global css @root ff:Arial c:white/87 bg:blue850/75
global css a c:indigo5 c@hover:indigo6
global css body m:0 d:flex ja:center h:100vh bgi:url("/assets/img/CalStateMontyB.jpg") bgp:center bgr:none bgs:cover 
import "./app.css"
import "./components/terminal.imba"
import "./components/footer-tag.imba"
global.L = console.log

tag app
	<self >
		css pos:fixed h:100vh w:100vw
		<footer-tag>
		<terminal>

imba.mount <app>
