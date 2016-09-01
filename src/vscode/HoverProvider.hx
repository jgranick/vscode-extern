package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * The hover provider interface defines the contract between extensions and
 * the [hover](https://code.visualstudio.com/docs/editor/editingevolved#_hover)-feature.
 */
typedef HoverProvider = {
	/**
	 * Provide a hover for the given position and document. Multiple hovers at the same
	 * position will be merged by the editor. A hover can have a range which defaults
	 * to the word range at the position when omitted.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @return A hover or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideHover(document:TextDocument, position:Position, token:CancellationToken):EitherType<Hover, Thenable<Hover>>;
}
