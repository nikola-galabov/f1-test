<cfoutput>
    <!--- container --->
    <div class="container">
        <cfif listLen(rc.errors, ',') GT 0 >
            <ul class="alert alert-danger list-unstyled">
                <cfloop index="error" list="#rc.errors#">
                    <li>#error#</li>
                </cfloop>
            </ul>
        </cfif>
        <form class="box" method="post" action="#buildURL('user.login')#">
            <legend>
                <h1>Login</h1>
            </legend>
            <input type="hidden" name="method" value="login">

            <div class="form-group">
                <label for="username">Username:</label>
                <input id="username" class="form-control" type="text" name="username" value="#rc.username#" placeholder="">
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input id="password" class="form-control" type="password" name="password" value="" placeholder="">
            </div>

            <button class="btn btn-default">Login</button>
            <span>You don't have an account?</span> <a href="/index.cfm?action=user.register">Register</a>
        </form>
    </div>
</cfoutput>