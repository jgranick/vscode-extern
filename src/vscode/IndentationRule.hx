package vscode;

import js.RegExp;

/**
 * Describes indentation rules for a language.
 */
typedef IndentationRule = {
	/**
	 * If a line matches this pattern, then all the lines after it should be unindendented once (until another rule matches).
	 */
	var decreaseIndentPattern:RegExp;

	/**
	 * If a line matches this pattern, then all the lines after it should be indented once (until another rule matches).
	 */
	var increaseIndentPattern:RegExp;

	/**
	 * If a line matches this pattern, then **only the next line** after it should be indented once.
	 */
	@:optional var indentNextLinePattern:RegExp;

	/**
	 * If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules.
	 */
	@:optional var unIndentedLinePattern:RegExp;
}
