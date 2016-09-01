package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * The completion item provider interface defines the contract between extensions and
 * the [IntelliSense](https://code.visualstudio.com/docs/editor/editingevolved#_intellisense).
 *
 * When computing *complete* completion items is expensive, providers can optionally implement
 * the `resolveCompletionItem`-function. In that case it is enough to return completion
 * items with a [label](#CompletionItem.label) from the
 * [provideCompletionItems](#CompletionItemProvider.provideCompletionItems)-function. Subsequently,
 * when a completion item is shown in the UI and gains focus this provider is asked to resolve
 * the item, like adding [doc-comment](#CompletionItem.documentation) or [details](#CompletionItem.detail).
 */
typedef CompletionItemProvider = {
	/**
	 * Provide completion items for the given position and document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @return An array of completions, a [completion list](#CompletionList), or a thenable that resolves to either.
	 * The lack of a result can be signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideCompletionItems(document:TextDocument, position:Position, token:CancellationToken):EitherType<Array<CompletionItem>, EitherType<Thenable<Array<CompletionItem>>, EitherType<CompletionList, Thenable<CompletionList>>>>;

	/**
	 * Given a completion item fill in more data, like [doc-comment](#CompletionItem.documentation)
	 * or [details](#CompletionItem.detail).
	 *
	 * The editor will only resolve a completion item once.
	 *
	 * @param item A completion item currently active in the UI.
	 * @param token A cancellation token.
	 * @return The resolved completion item or a thenable that resolves to of such. It is OK to return the given
	 * `item`. When no result is returned, the given `item` will be used.
	 */
	@:optional // TODO: will that work?
	function resolveCompletionItem(item:CompletionItem, token:CancellationToken):EitherType<CompletionItem, Thenable<CompletionItem>>;
}
