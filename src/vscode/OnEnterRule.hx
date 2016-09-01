package vscode;

import js.RegExp;

/**
 * Describes a rule to be evaluated when pressing Enter.
 */
typedef OnEnterRule = {
	/**
	 * This rule will only execute if the text before the cursor matches this regular expression.
	 */
	var beforeText:RegExp;

	/**
	 * This rule will only execute if the text after the cursor matches this regular expression.
	 */
	@:optional var afterText:RegExp;

	/**
	 * The action to execute.
	 */
	var action:EnterAction;
}
