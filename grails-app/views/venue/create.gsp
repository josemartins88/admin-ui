<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="venue" action="save" class="form-horizontal">
            <legend>New Venue</legend>

            <div class="form-group">
                <label for="name" class="col-sm-4 control-label">Name</label>
                <div class="col-sm-4">
                    <g:textField name="name" class="form-control" placeholder="Name"  value="${name}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-4 control-label">Description</label>
                <div class="col-sm-4">
                    <g:textArea name="description" rows="3" placeholder="Description" class="form-control" value="${description}"></g:textArea>
                </div>
            </div>

            <div class="form-group">
                <label for="fullAddress" class="col-sm-4 control-label">Full Address</label>
                <div class="col-sm-4">
                    <g:textField name="fullAddress" class="form-control" placeholder="Full Address"  value="${fullAddress}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="email" class="col-sm-4 control-label">Email</label>
                <div class="col-sm-4">
                    <g:textField name="email" class="form-control" placeholder="Email"  value="${email}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="telephone" class="col-sm-4 control-label">Telephone</label>
                <div class="col-sm-4">
                    <g:textField name="telephone" class="form-control" placeholder="Telephone Number"  value="${telephone}"></g:textField>
                </div>
            </div>

            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>

</div>
</body>
</html>