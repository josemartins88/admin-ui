<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">

    <div class="container centered well bs-component">

        <g:form controller="pitch" action="update" class="form-horizontal">
            <legend>Edit pitch #${pitch.id}</legend>

            <div class="form-group">
                <label for="name" class="col-sm-4 control-label">Name</label>
                <div class="col-sm-4">
                    <g:textField name="name" class="form-control" placeholder="Name" value="${pitch.name}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-4 control-label">Description</label>
                <div class="col-sm-4">
                    <g:textArea name="description" rows="3" placeholder="Description" class="form-control"
                                value="${pitch.description}"></g:textArea>
                </div>
            </div>

            <div class="form-group">
                <label for="pricePerHour" class="col-sm-4 control-label">Price per hour</label>
                <div class="col-sm-4">
                    <div class="input-group">
                        <g:field type="number" placeholder="Price per hour" class="form-control" name="pricePerHour"
                                 min="0" max="10000" required="true" value="${pitch.pricePerHour}"/>
                        <div class="input-group-addon">€</div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="length" class="col-sm-4 control-label">Length</label>
                <div class="col-sm-4">
                    <div class="input-group">
                        <g:field type="number" placeholder="Length" class="form-control" name="length" min="0" max="150"
                                 required="true" value="${pitch.length}"/>
                        <div class="input-group-addon">meters</div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="width" class="col-sm-4 control-label">Width</label>
                <div class="col-sm-4">
                    <div class="input-group">
                        <g:field type="number" placeholder="Width" class="form-control" name="width" min="0" max="80"
                                 required="true" value="${pitch.width}"/>
                        <div class="input-group-addon">meters</div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="city" class="col-sm-4 control-label">City</label>
                <div class="col-sm-4">
                    <g:textField name="city" class="form-control" placeholder="City" value="${pitch.city}"></g:textField>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label">Features</label>
                <div class="col-sm-4">
                    <div class="checkbox">
                        <label>
                            <g:checkBox name="bibsIncluded" value="${pitch.bibsIncluded}"/>
                            Bibs included
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <g:checkBox name="ballIncluded" value="${pitch.ballIncluded}"/>
                            Ball included
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <g:checkBox name="showersIncluded" value="${pitch.showersIncluded}"/>
                            Showers included
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="floorType" class="col-sm-4 control-label">Floor Type</label>
                <div class="col-sm-4">
                    <g:select class="form-control" id="floorType" name="floorTypeId"
                              from="${floorTypes}"
                              value="${pitch.floorTypeId}"
                              optionKey="id" optionValue="type"/>
                </div>
            </div>

            <div class="form-group">
                <label for="gameFormat" class="col-sm-4 control-label">Game format</label>
                <div class="col-sm-4">
                    <g:select class="form-control" id="gameFormat" name="gameFormatId"
                              from="${gameFormats}"
                              value="${pitch.gameFormatId}"
                              optionKey="id" optionValue="type"/>
                </div>
            </div>

            <input type="hidden" name="venueId" value="${pitch.venueId}"/>
            <input type="hidden" name="id" value="${pitch.id}"/>
            <g:submitButton class="btn btn-info pull-right" name="submit" value="Save"></g:submitButton>
        </g:form>
    </div>


</div>
</body>
</html>