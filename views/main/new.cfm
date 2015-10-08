<cfoutput>

	<div class="container">
		<form class="box" method="post" action="#buildURL('main.create')#">
			<legend>
				<h1>Ask your question</h1>
			</legend>
			<input type="hidden" name="method" value="create">
			<div class="form-group">
				<label for="question-title">Title:</label>
				<input id="question-title" class="form-control" type="text" name="title" value="" placeholder="">
			</div>

			<div class="form-group">
				<label for="question-content">Text:</label>
				<textarea class="form-control" name="content" id="question-content"></textarea>
			</div>

			<button class="btn btn-default">Create</button>
		</form>
	</div>

</cfoutput>