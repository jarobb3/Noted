import sys
sys.path.append('C:\\Program Files\\Google\\google_appengine\\nevernoted\\python\\lib')

import hashlib
import binascii
import time
import thrift.protocol.TBinaryProtocol as TBinaryProtocol
import thrift.transport.THttpClient as THttpClient
import evernote.edam.userstore.UserStore as UserStore
import evernote.edam.userstore.constants as UserStoreConstants
import evernote.edam.notestore.NoteStore as NoteStore
import evernote.edam.type.ttypes as Types
import evernote.edam.error.ttypes as Errors

consumerKey = "jarobb3"
consumerSecret = "3dc28d6f23351b84"

evernoteHost = "sandbox.evernote.com"
evernoteHost = "sandbox.evernote.com"
userStoreUri = "https://" + evernoteHost + "/edam/user"
noteStoreUriBase = "https://" + evernoteHost + "/edam/note/"

def createUserStore():
	userStoreHttpClient = THttpClient.THttpClient(userStoreUri)
	userStoreProtocol = TBinaryProtocol.TBinaryProtocol(userStoreHttpClient)
	userStore = UserStore.Client(userStoreProtocol)
	return userStore
	
def createNoteStore(shardId):
	noteStoreUri =  noteStoreUriBase + shardId
	noteStoreHttpClient = THttpClient.THttpClient(noteStoreUri)
	noteStoreProtocol = TBinaryProtocol.TBinaryProtocol(noteStoreHttpClient)
	noteStore = NoteStore.Client(noteStoreProtocol)
	return noteStore

def createNoteFilter( params=None ):
	notefilter = NoteStore.NoteFilter()
	
	if params:
		notefilter.notebookGuid = params['notebookId']
	#other params of notefilter: order, ascending, words, tagGuids, timeZone, inactive

	return notefilter
	
def auth(username,password):
	userStore = createUserStore()
	try :
		userToken = userStore.authenticate(username, password, consumerKey, consumerSecret)
		return userToken
	except Errors.EDAMUserException as e:
		# See http://www.evernote.com/about/developer/api/ref/UserStore.html#Fn_UserStore_authenticate
		parameter = e.parameter
		#errorCode = e.errorCode
		#errorText = Errors.EDAMErrorCode._VALUES_TO_NAMES[errorCode]
		
		#print "Authentication failed (parameter: " + parameter + " errorCode: " + errorText + ")"
		
		#if errorCode == Errors.EDAMErrorCode.INVALID_AUTH:
		#	if parameter == "username":
				#print "You must authenticate using a username and password from", evernoteHost
			#	if evernoteHost != "www.evernote.com":
					#print "Note that your production Evernote account will not work on", evernoteHost
					#print "You must register for a separate test account at https://" + evernoteHost + "/Registration.action"
			#elif parameter == "password":
				#print "The password that you entered is incorrect"

		#print ""
		#exit(1)