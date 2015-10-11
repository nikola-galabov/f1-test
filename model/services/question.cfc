<cfcomponent>
	<cffunction access="public" name="getAll">
		<cfargument name="userID" default="">

		<cfquery name="qQuestions" datasource="ForumSystem">
			SELECT * FROM `Questions`
			JOIN `Users` ON `usr_id` = `que_userId`
			<cfif ARGUMENTS.userID NEQ "">
				WHERE `que_userID` = <cfqueryparam cfsqltype="cf_sql_int" value="#ARGUMENTS.userID#">
			</cfif>
			ORDER BY `QUE_CREATEDAT` DESC;
		</cfquery>

		<cfreturn qQuestions>
	</cffunction>

	<cffunction access="public" name="getQuestion">
		<cfargument name="questionId" required="true">

		<cfquery name="qQuestion" datasource="ForumSystem">
			SELECT * FROM `Questions`
			JOIN `Users` ON `usr_id` = `que_userId`
				WHERE `que_ID` = <cfqueryparam cfsqltype="cf_sql_int" value="#ARGUMENTS.questionId#">
		</cfquery>

		<cfreturn qQuestion>
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