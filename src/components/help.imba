tag help
	prop commands
	def mount
		emit('output-mounted')
	def render
		<self>
			css w:100% h:auto
				# d:htl g:.5rem
			<table [ta:left w:100% maw:720px m:auto]>
				<thead>
					<tr>
						<th> "Command"
						<th> "Usage"
						<th> "Description"
				<tbody>
				for own command, value of commands
					<tr>
						<td> <button @click=emit("help-command", command)> command 
						<td> value["usage"]
						<td> value["helperText"]
