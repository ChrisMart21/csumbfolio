global.Preferences = {
	title-height: 35
}

tag title-button
	<self>
		css s:22px rd:full scale@hover:1.1 @active:0.9 cursor@hover: default bgc:white

tag window-frame
	prop min_height = 400
	prop min_width = 400
	prop x = 0
	prop y = 0 
	prop maximized? = false

	prop minimized_state = {
		height: 0
		width: 0
		x: 0
		y: 0
	}

	@observable prop height = 500
	@observable prop width = 800
	@observable prop environment_height = 0
	@observable prop environment_width = 0

	def awaken
		# Init Terminal location (centered), and dimentions
		x = Math.max(( environment_width - width ) / 2 , 0)
		y = Math.max(( environment_height - height ) / 2 , 0)

	@computed get x_bounds 	
		environment_width - width

	@computed get y_bounds
		environment_height - height

	def check_bounds	
		if x > x_bounds then x = Math.max(x_bounds, 0)
		if y > y_bounds then y = Math.max(y_bounds,0)

	def check_dimensions
		if maximized?
			height = environment_height
			width = environment_width
		else
			if height > environment_height and height > min_height
				height = environment_height
			if width > environment_width and width > min_width
				width = environment_width


	def track_state	
		unless maximized? 
			minimized_state.height = height
			minimized_state.width = width
			minimized_state.x = x
			minimized_state.y = y 
			
	def handle_maximize
		self.flags.add('anim')
		if maximized? == false
			maximized? = true
			height = environment_height
			width = environment_width
		else 
			maximized? = false
			height = minimized_state.height
			width = minimized_state.width
			x = minimized_state.x
			y = minimized_state.y


	def handle_minimize
		L "Not Yet Implemented!"

	def handle_resize t
		unless maximized?
			if t.clientY <= environment_height and t.y0 + t.dy > min_height
				height = t.y0 + t.dy
			if t.clientX <= environment_width and t.x0 + t.dx > min_width
				width = t.x0 + t.dx

	def handle_drag t
		if x < 0 then	x = 0
		if y < 0 then y = 0
		if x > x_bounds then x = x_bounds
		if y > y_bounds then y = y_bounds


	def handle_t_end
		self.flags.remove('anim')
	
	def render
		check_dimensions!
		check_bounds!
		track_state!

		
		css .anim tween:all 700ms back-in
		<self [x:{x}px y:{y}px h:{height}px w:{width}px ]
		@maximize=handle_maximize
		@minimize=handle_minimize
		@transitionend=handle_t_end
		>
			css bgc:gray8 rd:lg pos:absolute t:10% l:0 t:0
				box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
			# Title, Nav, Preferences
			<%title_bar [w:100% h:{Preferences.title-height}px]
				@touch.sync(self)=handle_drag
				@dblclick=handle_maximize> "Christian's Termfoilo"
				css bgc:gray9 w:100% h:100% rdt:lg cursor@hover:grab @active:grabbing 
					ta:center d:hcs of:hidden

				<%max_resize_close @touch.stop>
					css h:100% w:100px r:0px d:hcs jc:space-evenly
					<title-button [bgc:green7] @click.emit('minimize')>
					<title-button [bgc:orange555] @click.emit('maximize')>
					<title-button [bgc:red58] @click.emit('exit')>	

			<%resizer [d:none]=maximized? @touch.reframe(self)=handle_resize>
				css size:15px  pos:absolute	b:0px r:0px  rotate:-45deg
					d:vsc cursor@hover:grab @active:grabbing
				<.topL [bdb:solid bw:1px w:200%]>
				<.midL [bdb:solid bw:1px w:150%]>
				<.midL [bdb:solid bw:1px w:100%]>
				<.botL [bdb:solid bw:1px w:75%]>
				<.botLa [bdb:solid bw:1px w:30%]>

			<%windowIO[w:100% h:{clientHeight - Preferences.title-height}px]> <slot>

		
		