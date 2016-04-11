<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">


    <div class="container centered">

        <h2>#${floorType.id}
            <small>${floorType.type}</small>
        </h2>
        <div class="well well-sm">
            ${floorType.description}
        </div>

        <g:form controller="floorType" class="pull-right">
            <fieldset class="buttons">
                <input type="hidden" name="id" value="${floorType?.id}"/>

                <g:link class="btn btn-info" action="edit" id="${floorType?.id}">Edit</g:link>
                <g:actionSubmit class="btn btn-danger" value="Delete"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>

    </div>
</div>


</body>
</html>