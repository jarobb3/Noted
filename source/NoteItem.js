enyo.kind({
	name: "NoteItem",
	kind: "Item",
	layoutKind: "VFlexLayout",
	tapHighlight: true,
	published: {
		title: "",
		dateUpdated: "",
		snippet: ""
	},
	components: [
        {name: "title", kind: "HtmlContent"},
        {name: "dateUpdated", kind: "HtmlContent"},
        {name: "snippet", kind: "HtmlContent"}
    ],
    
    create: function(){
    	this.inherited(arguments);
    },
    
    titleChanged: function(){
    	this.$.title.setContent( this.title );
    },
    dateUpdatedChanged: function(){
    	this.$.dateUpdated.setContent( this.dateUpdated );
    },
    snippetChanged: function(){
    	this.$.snippet.setContent( this.snippet.substring(0, 50) );
    }
});