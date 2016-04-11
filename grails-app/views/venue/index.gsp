<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">
    <div class="container centered">
        <h4>List of venues</h4>
        <table class="table table-striped table-hover ">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Description</th>
                <th>Full Address</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${venues}" var="venue">
                <tr>
                    <td>${venue.id}</td>
                    <td>${venue.name}</td>
                    <td>${venue.description}</td>
                    <td>${venue.fullAddress}</td>
                    <td>
                        <g:link controller="venue" class="btn btn-info btn-sm" action="show" id="${venue.id}">Show
                        </g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <g:link controller="venue" class="btn btn-success pull-right" action="create">Create new venue</g:link>
    </div>
</div>
</body>
</html>