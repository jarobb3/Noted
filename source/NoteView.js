enyo.kind({
	name: "NoteView",
	kind: "VFlexBox",
	published: {
		"title": "",
		"content": ""
	},
	components: [
		//add a divider with the title of the note
		{kind: "Divider", name: "title"},
		{kind: "Scroller", flex: 1, components : [
			{name: "content", flex: 1, kind: "HtmlContent"}
		]}
	],
	titleChanged: function(){
		this.$.title.setCaption( this.title );
	},
	contentChanged: function(){
		this.$.content.setContent( this.content );
		this.$.scroller.scrollIntoView( 0,0 );
	}
});