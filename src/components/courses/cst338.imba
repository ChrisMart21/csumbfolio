import Freezeframe from 'freezeframe'


tag cst-338
	css	.useCase w:250px 
		p w:100% @xl: 750px
	css .gifdiv 
		rd:20px of:hidden m:0 p:0
	css .useCaseText
		fs: xl
	def mount # use awaken instead?
		x = new Freezeframe(
			{selector: '.useCase',
			trigger: 'click',
			overlay: true,
			responsive: false,
			warnings: false
			}
		)
	<self>
		<course-page>
			<span slot="course-name"> "CST 338: Software Deisn Java"
			<div slot="course-description" [ta:left]> 
				"This is an intermediate-level programming course covering techniques 
				for developing large-scale software systems using object-oriented 
				programming. Coverage includes software development life cycle 
				models, requirements analysis, and graphical user interface development."
			<div slot="course-content" [d:vcc ta:center]>
				<p [ta:left]> "The objective of this project was to familiarize 
				ourselves with software development lifecycles. 
				Each gif represents a use case target which was planned prior to coding.
				This workflow may seem foreign to newer developers. "
				<div [w: 100% max-width:720px d:flex jc: space-between ai:center flw:wrap g:3rem]>
					<div .gif-div> 
						<p .useCaseText> "Persistence"
						<img .useCase src="/assets/cst338/UseCase02Persistence.gif">
					<div .gif-div> 
						<p .useCaseText> "Authentication/Registration"
						<img .useCase src="/assets/cst338/UseCase03SuggestionBox.gif">
					<div .gif-div> 
						<p .useCaseText> "PreDefinedUsers"
						<img .useCase src="/assets/cst338/UseCase01PreDefinedUsers.gif">
					<div .gif-div> 
						<p .useCaseText> "DeleteUser"
						<img .useCase src="/assets/cst338/UseCase04DeleteUser.gif">
					<div .gif-div> 
						<p .useCaseText> "AddItem"
						<img .useCase src="/assets/cst338/UseCase05AddItem.gif">
					<div .gif-div> 
						<p .useCaseText> "ModifyItem"
						<img .useCase src="/assets/cst338/UseCase06ModifyItem.gif">
					<div .gif-div> 
						<p .useCaseText> "DeleteItem"
						<img .useCase src="/assets/cst338/UseCase07DeleteItem.gif">
					<div .gif-div> 
						<p .useCaseText> "AddItemToCart"
						<img .useCase src="/assets/cst338/UseCase08AddItemToCart.gif">
					<div .gif-div> 
						<p .useCaseText> "ViewCart"
						<img .useCase src="/assets/cst338/UseCase09ViewCart.gif">
					<div .gif-div> 
						<p .useCaseText> "Checkout"
						<img .useCase src="/assets/cst338/UseCase10Checkout.gif">
					<div .gif-div> 
						<p .useCaseText> "Logout"
						<img .useCase src="/assets/cst338/UseCase12Logout.gif">
					<div .gif-div> 
						<p .useCaseText> "OrderHistory"
						<img .useCase src="/assets/cst338/UseCase14OrderHistory.gif">
					<div .gif-div> 
						<p .useCaseText> "LoginMessages"
						<img .useCase src="/assets/cst338/UseCase13LoginMessages.gif">
					<div .gif-div> 
						<p .useCaseText> "UpdateCart"
						<img .useCase src="/assets/cst338/UseCase15UpdateCart.gif">
					<div .gif-div> 
						<p .useCaseText> "SuggestionBox"
						<img .useCase src="/assets/cst338/UseCase16SuggestionBox.gif">
