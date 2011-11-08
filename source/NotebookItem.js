enyo.kind({
	name: "NotebookItem",
	kind: "Item",
	layoutKind: "HFlexLayout",
	tapHighlight: true,
	published: {
		notebookName: "",
		numNotes: 0
	},
	components:[
        {name: "notebookName", kind: "HtmlContent"},
        {name: "numNotes", kind: "HtmlContent"}
    ],
	create: function(){
		this.inherited(arguments);
	},
    notebookNameChanged: function(){
    	this.$.notebookName.setContent( this.notebookName );
    },
    numNotesChanged: function(){
    	this.$.numNotes.setContent( this.numNotes );
    }
});