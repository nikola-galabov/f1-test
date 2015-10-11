<cfoutput>
	 <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="##bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">13 bik</a>
            </div>
            <div class="pull-right"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> #SESSION.user.username# <a href="/index.cfm?action=user.logout">(Logout)</a></div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.cfm">All Questions</a>
                    </li>
                    <li>
                        <a href="#buildURL('main.new')#">New Question</a>
                    </li>
                    <li>
                        <a href="#buildURL('main.default&userid=#SESSION.user.id#')#">My Questions</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    #body#
</cfoutput>