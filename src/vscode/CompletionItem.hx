package vscode;

/**
 * A completion item represents a text snippet that is
 * proposed to complete text that is being typed.
 *
 * It is suffient to create a completion item from just
 * a [label](#CompletionItem.label). In that case the completion
 * item will replace the [word](#TextDocument.getWordRangeAtPosition)
 * until the cursor with the given label.
 *
 *
 * @see [CompletionItemProvider.provideCompletionItems](#CompletionItemProvider.provideCompletionItems)
 * @see [CompletionItemProvider.resolveCompletionItem](#CompletionItemProvider.resolveCompletionItem)
 */
@:jsRequire("vscode", "CompletionItem")
extern class CompletionItem {
	/**
	 * The label of this completion item. By default
	 * this is also the text that is inserted when selecting
	 * this completion.
	 */
	var label:String;

	/**
	 * The kind of this completion item. Based on the kind
	 * an icon is chosen by the editor.
	 */
	var kind:CompletionItemKind;

	/**
	 * A human-readable string with additional information
	 * about this item, like type or symbol information.
	 */
	var detail:String;

	/**
	 * A human-readable string that represents a doc-comment.
	 */
	var documentation:String;

	/**
	 * A string that should be used when comparing this item
	 * with other items. When `falsy` the [label](#CompletionItem.label)
	 * is used.
	 */
	var sortText:String;

	/**
	 * A string that should be used when filtering a set of
	 * completion items. When `falsy` the [label](#CompletionItem.label)
	 * is used.
	 */
	var filterText:String;

	/**
	 * A string that should be inserted in a document when selecting
	 * this completion. When `falsy` the [label](#CompletionItem.label)
	 * is used.
	 */
	var insertText:String;

	/**
	 * An [edit](#TextEdit) which is applied to a document when selecting
	 * this completion. When an edit is provided the value of
	 * [insertText](#CompletionItem.insertText) is ignored.
	 *
	 * The [range](#Range) of the edit must be single-line and one the same
	 * line completions where [requested](#CompletionItemProvider.provideCompletionItems) at.
	 */
	var textEdit:TextEdit;

	/**
	 * Creates a new completion item.
	 *
	 * Completion items must have at least a [label](#CompletionItem.label) which then
	 * will be used as insert text as well as for sorting and filtering.
	 *
	 * @param label The label of the completion.
	 * @param kind The [kind](#CompletionItemKind) of the completion.
	 */
	function new(label:String, ?kind:CompletionItemKind);
}
