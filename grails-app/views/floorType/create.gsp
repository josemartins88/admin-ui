<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="floorType" action="save" class="form-horizontal">
            <legend>New Floor Type</legend>
            <div class="form-group">
                <label for="type" class="col-sm-4 control-label">Type</label>
                <div class="col-sm-4">
                    <g:textField name="type" class="form-control" placeholder="Type"  value="${type}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-4 control-label">Description</label>
                <div class="col-sm-4">
                    <g:textArea name="description" rows="3" placeholder="Description" class="form-control" value="${description}"></g:textArea>
                </div>
            </div>

            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>

</div>
</body>
</html>