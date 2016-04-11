<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered">

        <h2>#${pitch.id}
            <small>${pitch.name}</small>
        </h2>
        <div class="well well-sm">
            ${pitch.description}
        </div>
        <p><strong>City </strong>${pitch.city}</p>
        <p><strong>Price per hour: </strong>${pitch.pricePerHour}€</p>
        <p><strong>Length: </strong>${pitch.length} meters</p>
        <p><strong>Width: </strong>${pitch.width} meters</p>

        <div class="checkbox disabled">
            <label>
                <g:checkBox name="bibsIncluded" value="${pitch.bibsIncluded}" disabled="disabled"/>
                Bibs included
            </label>
        </div>

        <div class="checkbox disabled">
            <label>
                <g:checkBox name="ballIncluded" value="${pitch.ballIncluded}" disabled="disabled"/>
                Ball included
            </label>
        </div>

        <div class="checkbox disabled">
            <label>
                <g:checkBox name="showersIncluded" value="${pitch.showersIncluded}" disabled="disabled"/>
                Showers included
            </label>
        </div>

        <p><strong>Floor type: </strong>${pitch.floorTypeName}</p>
        <p><strong>Game format: </strong>${pitch.gameFormatType}</p>


        <g:form controller="pitch" class="pull-right">
            <fieldset class="buttons">
                <input type="hidden" name="id" value="${pitch?.id}"/>
                <input type="hidden" name="venueId" value="${pitch?.venueId}"/>
                <g:link class="btn btn-info" action="edit" id="${pitch?.id}">Edit</g:link>
                <g:actionSubmit class="btn btn-danger" value="Delete"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>

</div>
</body>
</html>