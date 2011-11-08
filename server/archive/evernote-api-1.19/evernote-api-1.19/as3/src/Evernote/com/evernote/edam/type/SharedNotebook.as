/**
 * Autogenerated by Thrift Compiler (0.7.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  /**
   * Shared notebooks represent a relationship between a notebook and a single
   * share invitation recipient.
   * <dl>
   * <dt>id</dt>
   * <dd>the primary identifier of the share</dd>
   * 
   * <dt>userId</dt>
   * <dd>the user id of the owner of the notebook</dd>
   * 
   * <dt>notebookGuid</dt>
   * <dd>the GUID of the associated notebook shared.</dd>
   * 
   * <dt>email</dt>
   * <dd>the email address of the recipient - used by the notebook
   * owner to identify who they shared with.</dd>
   * 
   * <dt>notebookModifiable</dt>
   * <dd>a flag indicating the share is read/write -otherwise it's read only</dd>
   * 
   * <dt>requireLogin</dt>
   * <dd>indicates that a user must login to access the share</dd>
   * 
   * <dt>serviceCreated</dt>
   * <dd>the date the owner first created the share with the specific email
   *   address</dd>
   * 
   * <dt>username</dt>
   * <dd>the username of the user who can access this share.
   *   Once it's assigned it cannot be changed.</dd>
   * </dl>
   */
  public class SharedNotebook implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("SharedNotebook");
    private static const ID_FIELD_DESC:TField = new TField("id", TType.I64, 1);
    private static const USER_ID_FIELD_DESC:TField = new TField("userId", TType.I32, 2);
    private static const NOTEBOOK_GUID_FIELD_DESC:TField = new TField("notebookGuid", TType.STRING, 3);
    private static const EMAIL_FIELD_DESC:TField = new TField("email", TType.STRING, 4);
    private static const NOTEBOOK_MODIFIABLE_FIELD_DESC:TField = new TField("notebookModifiable", TType.BOOL, 5);
    private static const REQUIRE_LOGIN_FIELD_DESC:TField = new TField("requireLogin", TType.BOOL, 6);
    private static const SERVICE_CREATED_FIELD_DESC:TField = new TField("serviceCreated", TType.I64, 7);
    private static const SHARE_KEY_FIELD_DESC:TField = new TField("shareKey", TType.STRING, 8);
    private static const USERNAME_FIELD_DESC:TField = new TField("username", TType.STRING, 9);

    private var _id:BigInteger;
    public static const ID:int = 1;
    private var _userId:int;
    public static const USERID:int = 2;
    private var _notebookGuid:String;
    public static const NOTEBOOKGUID:int = 3;
    private var _email:String;
    public static const EMAIL:int = 4;
    private var _notebookModifiable:Boolean;
    public static const NOTEBOOKMODIFIABLE:int = 5;
    private var _requireLogin:Boolean;
    public static const REQUIRELOGIN:int = 6;
    private var _serviceCreated:BigInteger;
    public static const SERVICECREATED:int = 7;
    private var _shareKey:String;
    public static const SHAREKEY:int = 8;
    private var _username:String;
    public static const USERNAME:int = 9;

    private var __isset_id:Boolean = false;
    private var __isset_userId:Boolean = false;
    private var __isset_notebookModifiable:Boolean = false;
    private var __isset_requireLogin:Boolean = false;
    private var __isset_serviceCreated:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[ID] = new FieldMetaData("id", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[USERID] = new FieldMetaData("userId", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
      metaDataMap[NOTEBOOKGUID] = new FieldMetaData("notebookGuid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[EMAIL] = new FieldMetaData("email", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[NOTEBOOKMODIFIABLE] = new FieldMetaData("notebookModifiable", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[REQUIRELOGIN] = new FieldMetaData("requireLogin", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[SERVICECREATED] = new FieldMetaData("serviceCreated", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I64));
      metaDataMap[SHAREKEY] = new FieldMetaData("shareKey", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[USERNAME] = new FieldMetaData("username", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(SharedNotebook, metaDataMap);
    }

    public function SharedNotebook() {
    }

    public function get id():BigInteger {
      return this._id;
    }

    public function set id(id:BigInteger):void {
      this._id = id;
      this.__isset_id = true;
    }

    public function unsetId():void {
      this.__isset_id = false;
    }

    // Returns true if field id is set (has been assigned a value) and false otherwise
    public function isSetId():Boolean {
      return this.__isset_id;
    }

    public function get userId():int {
      return this._userId;
    }

    public function set userId(userId:int):void {
      this._userId = userId;
      this.__isset_userId = true;
    }

    public function unsetUserId():void {
      this.__isset_userId = false;
    }

    // Returns true if field userId is set (has been assigned a value) and false otherwise
    public function isSetUserId():Boolean {
      return this.__isset_userId;
    }

    public function get notebookGuid():String {
      return this._notebookGuid;
    }

    public function set notebookGuid(notebookGuid:String):void {
      this._notebookGuid = notebookGuid;
    }

    public function unsetNotebookGuid():void {
      this.notebookGuid = null;
    }

    // Returns true if field notebookGuid is set (has been assigned a value) and false otherwise
    public function isSetNotebookGuid():Boolean {
      return this.notebookGuid != null;
    }

    public function get email():String {
      return this._email;
    }

    public function set email(email:String):void {
      this._email = email;
    }

    public function unsetEmail():void {
      this.email = null;
    }

    // Returns true if field email is set (has been assigned a value) and false otherwise
    public function isSetEmail():Boolean {
      return this.email != null;
    }

    public function get notebookModifiable():Boolean {
      return this._notebookModifiable;
    }

    public function set notebookModifiable(notebookModifiable:Boolean):void {
      this._notebookModifiable = notebookModifiable;
      this.__isset_notebookModifiable = true;
    }

    public function unsetNotebookModifiable():void {
      this.__isset_notebookModifiable = false;
    }

    // Returns true if field notebookModifiable is set (has been assigned a value) and false otherwise
    public function isSetNotebookModifiable():Boolean {
      return this.__isset_notebookModifiable;
    }

    public function get requireLogin():Boolean {
      return this._requireLogin;
    }

    public function set requireLogin(requireLogin:Boolean):void {
      this._requireLogin = requireLogin;
      this.__isset_requireLogin = true;
    }

    public function unsetRequireLogin():void {
      this.__isset_requireLogin = false;
    }

    // Returns true if field requireLogin is set (has been assigned a value) and false otherwise
    public function isSetRequireLogin():Boolean {
      return this.__isset_requireLogin;
    }

    public function get serviceCreated():BigInteger {
      return this._serviceCreated;
    }

    public function set serviceCreated(serviceCreated:BigInteger):void {
      this._serviceCreated = serviceCreated;
      this.__isset_serviceCreated = true;
    }

    public function unsetServiceCreated():void {
      this.__isset_serviceCreated = false;
    }

    // Returns true if field serviceCreated is set (has been assigned a value) and false otherwise
    public function isSetServiceCreated():Boolean {
      return this.__isset_serviceCreated;
    }

    public function get shareKey():String {
      return this._shareKey;
    }

    public function set shareKey(shareKey:String):void {
      this._shareKey = shareKey;
    }

    public function unsetShareKey():void {
      this.shareKey = null;
    }

    // Returns true if field shareKey is set (has been assigned a value) and false otherwise
    public function isSetShareKey():Boolean {
      return this.shareKey != null;
    }

    public function get username():String {
      return this._username;
    }

    public function set username(username:String):void {
      this._username = username;
    }

    public function unsetUsername():void {
      this.username = null;
    }

    // Returns true if field username is set (has been assigned a value) and false otherwise
    public function isSetUsername():Boolean {
      return this.username != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case ID:
        if (value == null) {
          unsetId();
        } else {
          this.id = value;
        }
        break;

      case USERID:
        if (value == null) {
          unsetUserId();
        } else {
          this.userId = value;
        }
        break;

      case NOTEBOOKGUID:
        if (value == null) {
          unsetNotebookGuid();
        } else {
          this.notebookGuid = value;
        }
        break;

      case EMAIL:
        if (value == null) {
          unsetEmail();
        } else {
          this.email = value;
        }
        break;

      case NOTEBOOKMODIFIABLE:
        if (value == null) {
          unsetNotebookModifiable();
        } else {
          this.notebookModifiable = value;
        }
        break;

      case REQUIRELOGIN:
        if (value == null) {
          unsetRequireLogin();
        } else {
          this.requireLogin = value;
        }
        break;

      case SERVICECREATED:
        if (value == null) {
          unsetServiceCreated();
        } else {
          this.serviceCreated = value;
        }
        break;

      case SHAREKEY:
        if (value == null) {
          unsetShareKey();
        } else {
          this.shareKey = value;
        }
        break;

      case USERNAME:
        if (value == null) {
          unsetUsername();
        } else {
          this.username = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case ID:
        return this.id;
      case USERID:
        return this.userId;
      case NOTEBOOKGUID:
        return this.notebookGuid;
      case EMAIL:
        return this.email;
      case NOTEBOOKMODIFIABLE:
        return this.notebookModifiable;
      case REQUIRELOGIN:
        return this.requireLogin;
      case SERVICECREATED:
        return this.serviceCreated;
      case SHAREKEY:
        return this.shareKey;
      case USERNAME:
        return this.username;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case ID:
        return isSetId();
      case USERID:
        return isSetUserId();
      case NOTEBOOKGUID:
        return isSetNotebookGuid();
      case EMAIL:
        return isSetEmail();
      case NOTEBOOKMODIFIABLE:
        return isSetNotebookModifiable();
      case REQUIRELOGIN:
        return isSetRequireLogin();
      case SERVICECREATED:
        return isSetServiceCreated();
      case SHAREKEY:
        return isSetShareKey();
      case USERNAME:
        return isSetUsername();
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function read(iprot:TProtocol):void {
      var field:TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case ID:
            if (field.type == TType.I64) {
              this.id = iprot.readI64();
              this.__isset_id = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case USERID:
            if (field.type == TType.I32) {
              this.userId = iprot.readI32();
              this.__isset_userId = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case NOTEBOOKGUID:
            if (field.type == TType.STRING) {
              this.notebookGuid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case EMAIL:
            if (field.type == TType.STRING) {
              this.email = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case NOTEBOOKMODIFIABLE:
            if (field.type == TType.BOOL) {
              this.notebookModifiable = iprot.readBool();
              this.__isset_notebookModifiable = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case REQUIRELOGIN:
            if (field.type == TType.BOOL) {
              this.requireLogin = iprot.readBool();
              this.__isset_requireLogin = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SERVICECREATED:
            if (field.type == TType.I64) {
              this.serviceCreated = iprot.readI64();
              this.__isset_serviceCreated = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SHAREKEY:
            if (field.type == TType.STRING) {
              this.shareKey = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case USERNAME:
            if (field.type == TType.STRING) {
              this.username = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          default:
            TProtocolUtil.skip(iprot, field.type);
            break;
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();


      // check for required fields of primitive type, which can't be checked in the validate method
      validate();
    }

    public function write(oprot:TProtocol):void {
      validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (isSetId()) {
        oprot.writeFieldBegin(ID_FIELD_DESC);
        oprot.writeI64(this.id);
        oprot.writeFieldEnd();
      }
      if (isSetUserId()) {
        oprot.writeFieldBegin(USER_ID_FIELD_DESC);
        oprot.writeI32(this.userId);
        oprot.writeFieldEnd();
      }
      if (this.notebookGuid != null) {
        if (isSetNotebookGuid()) {
          oprot.writeFieldBegin(NOTEBOOK_GUID_FIELD_DESC);
          oprot.writeString(this.notebookGuid);
          oprot.writeFieldEnd();
        }
      }
      if (this.email != null) {
        if (isSetEmail()) {
          oprot.writeFieldBegin(EMAIL_FIELD_DESC);
          oprot.writeString(this.email);
          oprot.writeFieldEnd();
        }
      }
      if (isSetNotebookModifiable()) {
        oprot.writeFieldBegin(NOTEBOOK_MODIFIABLE_FIELD_DESC);
        oprot.writeBool(this.notebookModifiable);
        oprot.writeFieldEnd();
      }
      if (isSetRequireLogin()) {
        oprot.writeFieldBegin(REQUIRE_LOGIN_FIELD_DESC);
        oprot.writeBool(this.requireLogin);
        oprot.writeFieldEnd();
      }
      if (isSetServiceCreated()) {
        oprot.writeFieldBegin(SERVICE_CREATED_FIELD_DESC);
        oprot.writeI64(this.serviceCreated);
        oprot.writeFieldEnd();
      }
      if (this.shareKey != null) {
        if (isSetShareKey()) {
          oprot.writeFieldBegin(SHARE_KEY_FIELD_DESC);
          oprot.writeString(this.shareKey);
          oprot.writeFieldEnd();
        }
      }
      if (this.username != null) {
        if (isSetUsername()) {
          oprot.writeFieldBegin(USERNAME_FIELD_DESC);
          oprot.writeString(this.username);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("SharedNotebook(");
      var first:Boolean = true;

      if (isSetId()) {
        ret += "id:";
        ret += this.id;
        first = false;
      }
      if (isSetUserId()) {
        if (!first) ret +=  ", ";
        ret += "userId:";
        ret += this.userId;
        first = false;
      }
      if (isSetNotebookGuid()) {
        if (!first) ret +=  ", ";
        ret += "notebookGuid:";
        if (this.notebookGuid == null) {
          ret += "null";
        } else {
          ret += this.notebookGuid;
        }
        first = false;
      }
      if (isSetEmail()) {
        if (!first) ret +=  ", ";
        ret += "email:";
        if (this.email == null) {
          ret += "null";
        } else {
          ret += this.email;
        }
        first = false;
      }
      if (isSetNotebookModifiable()) {
        if (!first) ret +=  ", ";
        ret += "notebookModifiable:";
        ret += this.notebookModifiable;
        first = false;
      }
      if (isSetRequireLogin()) {
        if (!first) ret +=  ", ";
        ret += "requireLogin:";
        ret += this.requireLogin;
        first = false;
      }
      if (isSetServiceCreated()) {
        if (!first) ret +=  ", ";
        ret += "serviceCreated:";
        ret += this.serviceCreated;
        first = false;
      }
      if (isSetShareKey()) {
        if (!first) ret +=  ", ";
        ret += "shareKey:";
        if (this.shareKey == null) {
          ret += "null";
        } else {
          ret += this.shareKey;
        }
        first = false;
      }
      if (isSetUsername()) {
        if (!first) ret +=  ", ";
        ret += "username:";
        if (this.username == null) {
          ret += "null";
        } else {
          ret += this.username;
        }
        first = false;
      }
      ret += ")";
      return ret;
    }

    public function validate():void {
      // check for required fields
      // check that fields of type enum have valid values
    }

  }

}
