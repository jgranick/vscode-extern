package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * The document formatting provider interface defines the contract between extensions and
 * the formatting-feature.
 */
typedef DocumentFormattingEditProvider = {
	/**
	 * Provide formatting edits for a whole document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param options Options controlling formatting.
	 * @param token A cancellation token.
	 * @return A set of text edits or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideDocumentFormattingEdits(document:TextDocument, options:FormattingOptions, token:CancellationToken):EitherType<Array<TextEdit>, Thenable<Array<TextEdit>>>;
}
