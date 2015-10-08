<cfoutput>
	<!--- container --->
	<div class="container">
        <cfloop query="#rc.qQuestions#">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">
                            #que_title#
                        </h2>
                        <hr>
                        <p>#que_text#</p>
                    </div>
                </div>
            </div>    
        </cfloop>
    </div>
</cfoutput>