from google.appengine.ext import webapp
from google.appengine.ext.webapp.util import run_wsgi_app
import evernotefacade as facade
import simplejson as json
import pprint

class Login(webapp.RequestHandler):
	def get(self):
		self.response.headers.add_header("Access-Control-Allow-Origin", "*")
		self.response.headers.add_header("Access-Control-Allow-Credentials", "true");
		self.response.headers['Content-Type'] = 'application/json'
		
		username = self.request.get('uname')
		password = self.request.get('pword')
		
		usertoken = facade.auth( username, password )
		user = usertoken.user
		response = {'command': 'login',
					'data' :
						{
							'username' : user.username,
							'email' : user.email,
							'id' : user.id,
							'token' : usertoken.authenticationToken,
							'shard' : user.shardId,
							'command' : 'login'
						}
					}
		
		self.response.out.write(json.dumps(response))

class Notebooks(webapp.RequestHandler):
	def get(self):
		self.response.headers.add_header("Access-Control-Allow-Origin", "*")
		self.response.headers.add_header("Access-Control-Allow-Credentials", "true");
		self.response.headers['Content-Type'] = 'application/json'
		
		#params: shard & token
		shard = self.request.get('shard')
		authtoken = self.request.get('token')
		
		notetoken = facade.createNoteStore(shard)
		notebooks = notetoken.listNotebooks(authtoken)
		numNotebooks = len(notebooks)
		
		data = []
		for notebook in notebooks:
			data.append( {'name' : notebook.name, 'id' : notebook.guid, 'defaultNotebook' : notebook.defaultNotebook} )
		
		response = { 'command': 'notebooks', 'notebooks': data, 'num':numNotebooks }
		self.response.out.write(json.dumps(response))
		
class Notes(webapp.RequestHandler):
	def get(self):
		self.response.headers.add_header("Access-Control-Allow-Origin", "*")
		self.response.headers.add_header("Access-Control-Allow-Credentials", "true");
		self.response.headers['Content-Type'] = 'application/json'
		
		#params: shard, token, notebookid
		shard = self.request.get('shard')
		authtoken = self.request.get('token')
		notebookId = self.request.get('id')
		
		notetoken = facade.createNoteStore(shard)
		
		if notebookId:
			notefilter = facade.createNoteFilter( {'notebookId' : notebookId } )
		else:
			notefilter = facade.createNoteFilter()

		notes = notetoken.findNotes(authtoken, notefilter, 0, 100)
		numnotes = notes.totalNotes
		command = 'notes'
		
		data = []		
		for note in notes.notes:
			data.append( {
						'title': note.title,
						'id': note.guid,
						'created': note.created,
						'updated': note.updated,
						'notebookId' : note.notebookGuid
						 } )
		
		response = { 'command': command, 'notes': data, 'num': numnotes }
		self.response.out.write(json.dumps(response))

class Note(webapp.RequestHandler):
	def get(self):
		self.response.headers.add_header("Access-Control-Allow-Origin", "*")
		self.response.headers.add_header("Access-Control-Allow-Credentials", "true");
		self.response.headers['Content-Type'] = 'application/json'

		#params: shard, token, notebookid
		shard = self.request.get('shard')
		authtoken = self.request.get('token')
		noteId = self.request.get('id')
		
		notetoken = facade.createNoteStore(shard)
		note = notetoken.getNote(authtoken, noteId, True, False, False, False)
		command = 'note'
		
		data =  {
				'title': note.title,
				'id': note.guid,
				'created': note.created,
				'updated': note.updated,
				'content': note.content
				}
		
		response = { 'command': command, 'note': data }
		self.response.out.write(json.dumps(response))
		
application = webapp.WSGIApplication(
										[('/login', Login),
										('/notebooks', Notebooks),
										('/notes', Notes),
										('/note', Note)]
									,debug=True)

def main():
	run_wsgi_app(application)
	
if __name__ == "__main__":
	main()