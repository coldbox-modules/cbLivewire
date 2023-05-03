/**
 * Represents a syncInput update from the UI.
 */
component extends="WireUpdate" {

	property name="populator" inject="wirebox:populator";

	/**
	 * Returns the field name.
	 *
	 * @return string
	 */
	function getName() {
		return this.getPayload()[ "name" ];
	}

	/**
	 * Applies this update to the specified component.
	 *
	 * @comp cbwire.models.Component | Component we are updating.
	 */
	function apply( required comp ){
		variables.populator.populateFromStruct(
			target: arguments.comp,
			trustedSetter: true,
			memento: { "#this.getPayload()[ "name" ]#" : "#this.getPayload()[ "value" ]#" },
			excludes: ""
		);

		// When syncing input, render our computed properties after the input has synced.
		var engine = comp.getEngine();

		arguments.comp._renderComputedProperties();
	}

}

