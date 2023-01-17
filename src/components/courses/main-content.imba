import "./home.imba"
import "./cst300.imba"
import "./cst338.imba"
import "./cst334.imba"
import "./cst311.imba"
import "./cst363.imba"
import "./cst336.imba"
import "./cst462.imba"
import "./cst328.imba"
import "./cst370.imba"
import "./cst383.imba"
import "./cst438.imba"
import "./cst329.imba"
import "./cst498.imba"
import "./cst499.imba"
import "./footer.imba"
tag main-content
	css pos:absolute h:90vh l:1em r:.5em mt:8vh
		tween: all 500ms ease
		rd:50px ta:center
		bgc:cool0/15

		&.collapsed l:2.25em
			@lt-xs l:1.25em
		
	css	#csulogo w:10rem pos:absolute b:0
		o:25% x:15px y:-15px
	
	prop activePage = 426
	
	<self @click=emit("showContent")>
		switch activePage 
			when 111
				<home-page [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 300
				<cst-300 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 338
				<cst-338 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 334
				<cst-334 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 363
				<cst-363 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 311
				<cst-311 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 336
				<cst-336 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 462
				<cst-462 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 328
				<cst-328 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 370
				<cst-370 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 383
				<cst-383 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 438
				<cst-438 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 329
				<cst-329 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 498
				<cst-498 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			when 499
				<cst-499 [scale@off:0 x@in:-500px y@off:500px ease:500ms] ease>
			else
				<div [size:300px bd:solid y@in:1000px x@out:-1000px ease:500ms]
				 ease> "Not Yet Implemented"