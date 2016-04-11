<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered">
        <h4>List of floor types</h4>
        <table class="table table-striped table-hover ">
            <thead>
            <tr>
                <th>#</th>
                <th>Type</th>
                <th>Description</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${floorTypes}" var="floorType">
                <tr>
                    <td>${floorType.id}</td>
                    <td>${floorType.type}</td>
                    <td>${floorType.description}</td>
                    <td>
                        <g:link controller="floorType" action="show" class="btn btn-info btn-sm"
                                id="${floorType.id}">
                            Show
                        </g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <g:link controller="floorType" class="btn btn-success pull-right" action="create">Create new floor type</g:link>

    </div>

</div>
</body>
</html>