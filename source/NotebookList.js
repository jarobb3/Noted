enyo.kind({
	name: "NotebookList",
	kind: "VFlexBox",
	published: {
		notebooks: [],
		selection: 0
	},
	events: {
		"onListTap":"",
		"onAllNotesTap":""
	},
	components:[
	    {kind: "Divider", caption: "Notebooks"},
	    {name: "allNotesItem", kind: "Item", content: "All Notes", onclick: "doAllNotesTap"},
        /*{kind: "RowGroup", defaultKind: "HFlexBox", height: "30px;", components: [
	        {align: "center", tapHighlight: true, onclick: "notebookSelected", components:[
	             { content: "All Notes", flex: 1 }
	    	]}
        ]},*/
	    {name: "list", kind: "VirtualList", flex: 1,
	    	onSetupRow: "updateList",
	    	onclick: "doListTap",
	    	components: [
	             {name: "listItem", kind: "NotebookItem"}
	    	]
	    }
	],
	rendered: function(){
		this.inherited(arguments);
	},
	notebooksChanged: function(){
		this.$.list.render();
	},
	selectionChanged: function(){
		this.$.list.select( this.selection );
		this.$.allNotesItem.addRemoveClass( "enyo-item-selected", this.selection == -1 );
		this.$.list.refresh();
	},
	updateList: function( inSender, inIndex ){
		var r = this.notebooks[inIndex];
		if(r){
			this.$.listItem.setNotebookName( r.name );
			this.$.listItem.addRemoveClass( "enyo-item-selected", inIndex == this.selection );
			
			return true;
		}
	}
	/*showNotebooks: function(inSender, inIndex){
		if( this.owner.data.notebooks !== undefined ) {
			var r = this.owner.data.notebooks[inIndex];
			if(r){
				if( r.defaultNotebook )
					this.selectionChanged( inIndex );
				var notebookSelected = r.defaultNotebook;
				if( notebookSelected ) {
					this.$.item.applyStyle("background-color", "rgba(200,0,0,0.4)");
					this.owner.selected.notebook = r;
				}
				else
					this.$.item.applyStyle("background-color",null);
				this.$.bookname.setContent(r.name);
				return true;
			}
		}
	}*/
});