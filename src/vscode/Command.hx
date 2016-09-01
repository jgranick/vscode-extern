package vscode;

/**
 * Represents a reference to a command. Provides a title which
 * will be used to represent a command in the UI and, optionally,
 * an array of arguments which will be passed to the command handler
 * function when invoked.
 */
typedef Command = {
	/**
	 * Title of the command, like `save`.
	 */
	var title:String;

	/**
	 * The identifier of the actual command handler.
	 * @see [commands.registerCommand](#commands.registerCommand).
	 */
	var command:String;

	/**
	 * Arguments that the command handler should be
	 * invoked with.
	 */
	@:optional var arguments:Array<Any>;
}
