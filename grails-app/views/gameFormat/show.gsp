<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered">

        <h2>#${gameFormat.id}
            <small>${gameFormat.type}</small>
        </h2>

        <g:form controller="gameFormat" class="pull-right">
            <fieldset class="buttons">
                <input type="hidden" name="id" value="${gameFormat?.id}"/>

                <g:link class="btn btn-info" action="edit" id="${gameFormat?.id}">Edit</g:link>
                <g:actionSubmit class="btn btn-danger" value="Delete"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>

    </div>

</div>
</body>
</html>