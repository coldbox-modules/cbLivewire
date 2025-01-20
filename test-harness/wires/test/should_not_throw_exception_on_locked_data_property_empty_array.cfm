<cfoutput>
    <div>
        <h1>Should Throw Exception on Locked Property</h1>
		<p>When a locked property is an empty array it should ignore and display the value below.</p>
		<p>Locked Property Value: #lockedPropertyKey#</p>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "lockedPropertyKey": "I AM NOT LOCKED!"
    };

	locked = [];

    // @endWire
</cfscript>