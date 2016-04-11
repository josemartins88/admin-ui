<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="gameFormat" action="save" class="form-horizontal">
            <legend>New Game format</legend>
            <div class="form-group">
                <label for="type" class="col-sm-4 control-label">Type</label>
                <div class="col-sm-4">
                    <g:textField name="type" class="form-control" placeholder="Type" value="${type}"></g:textField>
                </div>
            </div>

            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>

</div>
</body>
</html>