enyo.kind({
	name: "NoteList",
	kind: "VFlexBox",
	published: {
		notes: [],
		selection: 0
	},
	events: {
		"onListTap": ""
	},
	components:[
        {kind: "Divider", caption: "Notes"},
        {name: "list", kind: "VirtualList", flex: 1,
        	onSetupRow: "updateList",
        	onclick: "doListTap",
        	components: [
	            {name: "listItem", kind: "NoteItem"}
            ]
        }
	],
	create: function(){
		this.inherited(arguments);
	},
	
	notesChanged: function(){
		this.$.list.render();
	},
	
	selectionChanged: function(){
		this.$.list.select( this.selection );
		this.$.list.refresh();
	},
	
	updateList: function( inSender, inIndex ){
		var r = this.notes[inIndex];
		if(r){
			this.$.listItem.addRemoveClass( "enyo-item-selected", inIndex == this.selection );
			
			this.$.listItem.setTitle( r.title );
			this.$.listItem.setDateUpdated( r.updated );
			//this.$.item.setSnippet( r.content );
			
			return true;
		}
	}
});