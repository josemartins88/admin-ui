<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="gameFormat" action="update" class="form-horizontal">
            <legend>Edit game format #${gameFormat.id}</legend>
            <div class="form-group">
                <label for="type" class="col-sm-4 control-label">Type</label>
                <div class="col-sm-4">
                    <g:textField name="type" class="form-control" placeholder="Type" value="${gameFormat.type}"></g:textField>
                </div>
            </div>
            <input type="hidden" name="id" value="${gameFormat?.id}"/>
            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>


</div>
</body>
</html>