<cfoutput>
    <!--- container --->
    <div class="container">
        <cfloop query="#rc.qQuestions#">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <a href="/index.cfm?action=main.view&questionId=#que_id#">
                            <h2 class="intro-text text-center">
                                #que_title#
                            </h2>
                        </a>
                    </div>
                </div>
            </div>    
        </cfloop>
    </div>    
</cfoutput>