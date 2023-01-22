import Freezeframe from 'freezeframe'


tag cst-338
	css	.useCase w:250px 
		p w:100% @xl: 750px
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
				<p> "The objective of this project was to familiarize 
				ourselves with software development lifecycles. 
				Each gif represents a use case target which was planned prior to coding.
				This workflow may seem foreign to newer developers. "
				<div [w: 100% max-width:720px d:flex jc: space-between ai:center flw:wrap g:3rem]>
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase01PreDefinedUsers.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase02Persistence.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase03SuggestionBox.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase04DeleteUser.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase05AddItem.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase06ModifyItem.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase07DeleteItem.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase08AddItemToCart.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase09ViewCart.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase10Checkout.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase12Logout.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase14OrderHistory.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase13LoginMessages.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase15UpdateCart.gif">
					<div[rd:20px of:hidden m:0 p:0]> <img .useCase src="/assets/cst338/UseCase16SuggestionBox.gif">
