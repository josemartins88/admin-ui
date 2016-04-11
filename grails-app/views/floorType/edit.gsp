<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="floorType" action="update" class="form-horizontal">
            <legend>Floor Type #${floorType.id}</legend>
            <div class="form-group">
                <label for="type" class="col-sm-4 control-label">Type</label>
                <div class="col-sm-4">
                    <g:textField name="type" class="form-control" placeholder="Type"  value="${floorType.type}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-4 control-label">Description</label>
                <div class="col-sm-4">
                    <g:textArea name="description" rows="3" placeholder="Description" class="form-control" value="${floorType.description}"></g:textArea>
                </div>
            </div>
            <input type="hidden" name="id" value="${floorType?.id}"/>
            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>


</div>
</body>
</html>