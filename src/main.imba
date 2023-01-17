global css @root ff:Arial c:white/87 bg:black/50
global css a c:indigo5 c@hover:indigo6
global css body m:0 d:flex ja:center h:100vh
import './app.css'
import './components/window-frame.imba'
import './components/term-io.imba'
global.L = console.log

tag app
	prop window_dimensions = {height:1920, width:1080}
	def setup
		handle_resize!

	def handle_resize
		window_dimensions.height = window.innerHeight
		window_dimensions.width = window.innerWidth
		
	<self[h:100% w:100% bd:dashed bw:1px] @resize=handle_resize>
		<window-frame
			environment_height=window_dimensions.height
			environment_width=window_dimensions.width>
				<term-io>


imba.mount <app>
