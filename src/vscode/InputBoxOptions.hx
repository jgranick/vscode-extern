package vscode;

/**
 * Options to configure the behavior of the input box UI.
 */
typedef InputBoxOptions = {
	/**
	 * The value to prefill in the input box.
	 */
	@:optional var value:String;

	/**
	 * The text to display underneath the input box.
	 */
	@:optional var prompt:String;

	/**
	 * An optional string to show as place holder in the input box to guide the user what to type.
	 */
	@:optional var placeHolder:String;

	/**
	 * Set to true to show a password prompt that will not show the typed value.
	 */
	@:optional var password:Bool;

	/**
	 * An optional function that will be called to valide input and to give a hint
	 * to the user.
	 *
	 * @param value The current value of the input box.
	 * @return A human readable string which is presented as diagnostic message.
	 * Return `undefined`, `null`, or the empty string when 'value' is valid.
	 */
	@:optional var validateInput:String->String;
}
