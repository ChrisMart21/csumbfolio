global css @root ff:Arial c:white/87 bg:blue850/75
global css a c:indigo5 c@hover:indigo6
global css body m:0 d:flex ja:center h:100vh bgi:url("./components/assets/img/CalStateMontyB.jpg") bgp:center bgr:none bgs:cover 
import "./app.css"
import "./components/window-frame.imba"
import "./components/term-io.imba"
import "./components/footer-tag.imba"
global.L = console.log

tag app
	prop window_dimensions = {height:1920, width:1080}
	def setup
		handle_resize!

	def handle_resize
		window_dimensions.height = window.innerHeight
		window_dimensions.width = window.innerWidth
		
	<self @resize=handle_resize >
		css h:100% w:100% 
		<footer-tag>
		<window-frame
			environment_height=window_dimensions.height
			environment_width=window_dimensions.width>
				<term-io>


imba.mount <app>
