<cfoutput query="rc.qQuestion">
    <!--- container --->
    <div class="container">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        #que_title#
                    </h2>
                    <hr>
                    <div class="clearfix">
                        <div class="pull-left">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"> #usr_username#
                        </div>
                        <div class="pull-right">
                            Published at:  #dateFormat(que_createdat, 'dd mmm yyyy')#
                        </div>
                    </div>
                    <div style="border-top: 1px solid;">
                        <p>#que_text#</p>
                    </div>
                </div>
            </div>
        </div>    
    </div>    
</cfoutput>