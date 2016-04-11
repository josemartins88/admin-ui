<!DOCTYPE html>
<html>
<head>
    <title>
        <g:layoutTitle default="Pitch Admin"/>
    </title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Pitch Admin Home</a>
        </div>
        <div>
            <ul class="nav navbar-nav">

                <li><a href="/venue/index">Venues</a></li>
                <li><a href="/floorType/index">Floor types</a></li>
                <li><a href="/gameFormat/index">Game formats</a></li>
            </ul>
        </div>
    </div>
</nav>
<g:layoutBody/>

<asset:javascript src="application.js"/>
</body>
</html>