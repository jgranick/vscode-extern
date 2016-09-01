package vscode;

/**
 * Represents theme specific rendering styles for a [text editor decoration](#TextEditorDecorationType).
 */
typedef ThemableDecorationRenderOptions = {
	/**
	 * Background color of the decoration. Use rgba() and define transparent background colors to play well with other decorations.
	 */
	@:optional var backgroundColor:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var outline:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'outline' for setting one or more of the individual outline properties.
	 */
	@:optional var outlineColor:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'outline' for setting one or more of the individual outline properties.
	 */
	@:optional var outlineStyle:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'outline' for setting one or more of the individual outline properties.
	 */
	@:optional var outlineWidth:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var border:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'border' for setting one or more of the individual border properties.
	 */
	@:optional var borderColor:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'border' for setting one or more of the individual border properties.
	 */
	@:optional var borderRadius:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'border' for setting one or more of the individual border properties.
	 */
	@:optional var borderSpacing:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'border' for setting one or more of the individual border properties.
	 */
	@:optional var borderStyle:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 * Better use 'border' for setting one or more of the individual border properties.
	 */
	@:optional var borderWidth:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var textDecoration:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var cursor:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var color:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var letterSpacing:String;

	/**
	 * An **absolute path** to an image to be rendered in the gutterIconPath.
	 */
	@:optional var gutterIconPath:String;

	/**
	 * Specifies the size of the gutter icon.
	 * Available values are 'auto', 'contain', 'cover' and any percentage value.
	 * For further information: https://msdn.microsoft.com/en-us/library/jj127316(v=vs.85).aspx
	 */
	@:optional var gutterIconSize:String;

	/**
	 * The color of the decoration in the overview ruler. Use rgba() and define transparent colors to play well with other decorations.
	 */
	@:optional var overviewRulerColor:String;

	/**
	 * Defines the rendering options of the attachment that is inserted before the decorated text
	 */
	@:optional var before:ThemableDecorationAttachmentRenderOptions;

	/**
	 * Defines the rendering options of the attachment that is inserted after the decorated text
	 */
	@:optional var after:ThemableDecorationAttachmentRenderOptions;
}
