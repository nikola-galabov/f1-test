<cfcomponent>
	<cffunction access="public" name="getAll">
		<cfquery name="qQuestions" datasource="ForumSystem">
			SELECT * FROM `Questions`;
		</cfquery>

		<cfreturn qQuestions>
	</cffunction>

	<cffunction name="create">
		<cfargument name="text" type="string" required="true">
		<cfargument name="title" type="string" required="true">

		<cfquery result="questionId" datasource="ForumSystem">
			INSERT INTO `Questions`
			(
				QUE_CREATEDAT, 
				QUE_TEXT, 
				QUE_TITLE,				
				QUE_USERID
			)
			VALUES
			(
				#now()#,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.text#">,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.title#">,
				1
			)
		</cfquery>

		<cfreturn questionId>
	</cffunction>
</cfcomponent>