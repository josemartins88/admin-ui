<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered">

        <h2>#${venue.id}
            <small>${venue.name}</small>
        </h2>
        <div class="well well-sm">
            ${venue.description}
        </div>
        <p><strong>Full Address: </strong>${venue.fullAddress}</p>
        <p><strong>Email: </strong>${venue.email}</p>
        <p><strong>Telephone Address: </strong>${venue.telephone}</p>

        <g:form controller="venue" class="pull-right">
            <fieldset class="buttons">
                <input type="hidden" name="id" value="${venue?.id}"/>
                <g:link class="btn btn-info" action="edit" id="${venue?.id}">Edit</g:link>
                <g:actionSubmit class="btn btn-danger" value="Delete"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>

    <div class="container centered voffset5">
        <h4>List of pitches</h4>
        <table class="table table-striped table-hover ">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price per hour</th>
                <th>City</th>
                <th>Venue</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${pitches}" var="pitch">
                <tr>
                    <td>${pitch.id}</td>
                    <td>${pitch.name}</td>
                    <td>${pitch.description}</td>
                    <td>${pitch.pricePerHour}</td>
                    <td>${pitch.city}</td>
                    <td>${pitch.venueId}</td>
                    <td>
                        <g:link controller="pitch" class="btn btn-info btn-sm" action="show" id="${pitch.id}">Show
                        </g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <g:link controller="pitch" class="btn btn-success pull-right" action="create" id="${venue?.id}">Add pitch
        </g:link>

    </div>


</div>
</body>
</html>