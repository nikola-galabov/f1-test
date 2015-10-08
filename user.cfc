<cfcomponent>
	<cffunction name="create">
		<cfargument name="username" type="string" required="true">
		<cfargument name="password" type="string" required="true">

		<cfquery result="userId" datasource="ForumSystem">
			INSERT INTO 
				`Users`(`usr_Username`, `usr_Password`) 
			VALUES
			(
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.username#">,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.password#">
			)
		</cfquery>

		<cfreturn userId>
	</cffunction>

	<cffunction name="getAll">
		<cfquery name="qUsers" datasource="ForumSystem">
			SELECT * FROM `Users`
		</cfquery>

		<cfreturn qUsers>
	</cffunction>
</cfcomponent>