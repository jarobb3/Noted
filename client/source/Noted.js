enyo.kind({
	name: "Stubz",
	kind: "VFlexBox",
	published:{
		launchParams: null
	},
	components: [
	/***************
	 * Palm Services { WebService }
	 */
		{name: "noteService", kind: "WebService",
			onSuccess: "serviceSuccess",
			onFailure: "serviceFailure"},
	/*************
	 * Layout
	 */
		{kind: "PageHeader", components:[
            {name:"appTitle", kind:"HtmlContent", content: "Noted"}
        ]}, 
		{kind: "SlidingPane", flex: 1, components: [
			{ name: "left", kind: "SlidingView", width: "300px", components: [
			    {kind: "Pane", flex: 1, components:[
                    {name: "notebookList", kind: "NotebookList", onListTap: "notebookSelected", onAllNotesTap: "showAllNotes", flex:1 }
			    ]}                                                        
			]},
			{ name: "center", kind: "SlidingView", width: "300px", components: [
			    {kind: "Pane", flex: 1, components: [
                    {name: "noteList", kind: "NoteList", onListTap: "noteSelected"}
                ]}
			]},
			{ name: "right", flex: 1, onResize: "slidingResize", components:[
				{name: "note", flex: 1, kind: "NoteView"}
			]}
		]},
			
	/**************
	 * Login
	 */
		{name: "login", kind:"ModalDialog",
			caption:"Login",
			components:[
			    { kind:"RowGroup", components:[
	                { name: "uname", kind: "Input",
	                	hint: "enter username...",
	                	//onchange:"inputChange"
	            	}
	            ]},
	            { kind: "RowGroup", components:[
	            	{ name:"pword",kind:"PasswordInput",
	            		hint:"enter password...",
	            		//onchange:"inputChange"
	            	}
	            ]},
	            { kind:"Button", caption:"Login",flex:1,
	            	onclick: "loginUser",
	            	className: "enyo-button-dark"
	            }
			]
		}
	],
/**********
 * Initialization
 **********/
	create:function(){
		this.inherited(arguments);
		this.baseServiceUrl = 'http://localhost:8081/';
	},
	rendered: function(){
		this.$.login.openAtCenter();
	},
	loginUser: function(){
		var username = this.$.uname.value;
		var password = this.$.pword.value;
		
		this.$.noteService.url = this.baseServiceUrl + 'login';
		this.$.noteService.call({ uname: username, pword: password });
		
		this.$.login.close();
	},
	showAllNotes: function( inSender, inEvent ){
		//highlight all notes item, deselect previously selected notebook
		this.$.notebookList.setSelection( -1 );
		
		//request all notes from server
		var shard = this.usertoken.shard;
		var token = this.usertoken.token;
		this.requestNotes( shard, token );
	},
	notebookSelected: function( inSender, inEvent){
		var index = inEvent.rowIndex;
		if( index === undefined ) return;
		
		this.$.notebookList.setSelection( index );
		
		var notebookId = inSender.notebooks[index].id;
		var shard = this.usertoken.shard;
		var token = this.usertoken.token;
		
		this.requestNotes( shard, token, notebookId );
	},
	noteSelected: function( inSender, inEvent ){
		var index = inEvent.rowIndex;
		if( index === undefined ) return;
		
		this.$.noteList.setSelection( index );
		
		var noteId = inSender.notes[index].id;
		var shard = this.usertoken.shard;
		var token = this.usertoken.token;
		
		this.requestNoteContent(shard, token, noteId);
	},
	/*eventOnEnter: function( inSender, inEvent){
		if( inEvent.charCode == 13 ){
			this.loginUser();
			this.$.pword.forceBlur();
		}
	},*/
	serviceSuccess: function(inSender, inResponse){
		switch( inResponse.command ){
			case "login":
				this.usertoken = inResponse.data;
				this.requestNotebooks( this.usertoken.shard, this.usertoken.token );
				break;
			case "notebooks":
				this.$.notebookList.setNotebooks(inResponse.notebooks);
				
				//this.$.notebookList.setSelection( 0 );
				//this.requestNotes( this.usertoken.shard, this.usertoken.token, inResponse.notebooks[0].id );
				
				this.$.notebookList.setSelection( -1 );
				this.requestNotes( this.usertoken.shard, this.usertoken.token );
				break;
			case "notes":
				this.$.noteList.setNotes( inResponse.notes );
				this.$.noteList.setSelection( 0 );
				
				if( inResponse.notes.length > 0){
					this.requestNoteContent( this.usertoken.shard, this.usertoken.token, inResponse.notes[0].id );
				}else{
					enyo.log( "no notes in this notebook" );
					this.$.note.setTitle( "" );
					this.$.note.setContent( "" );
				}
				
				this.usertoken.notes = inResponse.notes;
				break;
			case "note":
				this.$.note.setTitle( inResponse.note.title );
				this.$.note.setContent( inResponse.note.content );
				break;
			default: break;
		}
		enyo.log("received request");
		/*switch( inResponse.command ) {
			case "start":
				this.data = inResponse;
				this.$.BookListPane.$.bookList.refresh();
				this.$.NoteListPane.$.noteList.refresh();
				this.$.NoteWebViewPane.refreshContent( this.data.note );
				break;
			case "openNotebook":
				this.data.notes.notes = inResponse.notebook.notes;
				this.$.NoteListPane.$.noteList.refresh();
				break;
			case "openNote":
				//update webView with new content
				this.$.NoteWebViewPane.refreshContent( inResponse.note );
				break;
			default:
				enyo.log("did not find command");
				break;
		}*/
	},
	serviceFailure: function(inSender, inResponse){
		enyo.log("Request Failure");
	},
	requestNotebooks: function( shard, token ){
		this.$.noteService.url = this.baseServiceUrl + 'notebooks';
		this.$.noteService.call({ 'shard' : shard, 'token' : token });
	},
	requestNotes: function( shard, token, notebookId ){
		this.$.noteService.url = this.baseServiceUrl + 'notes';
		var params = { 'shard' : shard, 'token' : token };
		if( notebookId !== undefined ){
			params.id = notebookId;
		}
		this.$.noteService.call( params );
	},
	requestNoteContent: function( shard, token, noteId ){
		this.$.noteService.url = this.baseServiceUrl + 'note';
		this.$.noteService.call({ 'shard' : shard, 'token' : token, 'id' : noteId });
	},
	/*getNotesInNotebook: function( nid ){
		listofnotes = [];
		for( var i=0;i<this.usertoken.notes.length;i++ ){
			note = this.usertoken.notes[i];
			if( note.notebookId == nid ){
				listofnotes.push( note );
			}
		}
		return listofnotes;
	},*/
	openNote: function(inSender, inEvent) {
		var r = this.data.notes.notes[inEvent.rowIndex];
		//don't make a call to the server if the note is already selected
		if( r.guid != this.$.NoteListPane.selected.obj.guid ) {
			this.$.noteService.call({
				shardId : this.shardId,
				usertoken : this.usertoken,
				command : "openNote",
				noteId : r.guid
			});
			this.$.NoteListPane.selectionChanged( inEvent.rowIndex );
		}
	},
	openNotebook: function(inSender, inEvent) {
		var r = this.data.notebooks[inEvent.rowIndex];
		if( r.guid != this.$.BookListPane.selected.obj.guid ){
			this.$.noteService.call({
				shardId : this.shardId,
				usertoken : this.usertoken,
				command : "openNotebook",
				notebookId : r.guid
			});
			this.$.BookListPane.selectionChanged( inEvent.rowIndex );
		}
	}
});