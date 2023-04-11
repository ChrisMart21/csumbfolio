tag help
	prop commands
	def mount
		emit('output-mounted')
	def render
		<self>
			css w:100% h:auto px:1em m:auto
				# d:htl g:.5rem
			<p [w:100% maw:720px m:auto]> 
				"Here are the commands you can use to navigate this termfolio:"
			<table [ta:left w:100% maw:720px m:auto]>
				<thead>
					<tr>
						<th> "Command"
						<th> "Usage"
						<th> "Description"
				<tbody>
				for own command, value of commands
					<tr>
						<td> command 
						<td> value["usage"]
						<td> value["helperText"]
