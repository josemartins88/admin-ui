<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered">
        <h4>List of game formats</h4>
        <table class="table table-striped table-hover ">
            <thead>
            <tr>
                <th>#</th>
                <th>Type</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${gameFormats}" var="gameFormat">
                <tr>
                    <td>${gameFormat.id}</td>
                    <td>${gameFormat.type}</td>
                    <td>
                        <g:link controller="gameFormat" action="show" class="btn btn-info btn-sm"
                                id="${gameFormat.id}">
                            Show
                        </g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <g:link controller="gameFormat" class="btn btn-success pull-right" action="create">Create new game format
        </g:link>

    </div>

</div>
</body>
</html>