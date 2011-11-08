/**
 * Autogenerated by Thrift Compiler (0.7.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.error {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  /**
   * This exception is thrown by EDAM procedures when a caller asks to perform
   * an operation that does not exist.  This may be thrown based on an invalid
   * primary identifier (e.g. a bad GUID), or when the caller refers to an object
   * by another unique identifier (e.g. a User's email address).
   * 
   * identifier:  the object identifier that was not found on the server.
   * 
   * key:  the value passed from the client in the identifier, which was not
   *   found.  E.g. the GUID of an object that was not found.
   */
  public class EDAMNotFoundException implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("EDAMNotFoundException");
    private static const IDENTIFIER_FIELD_DESC:TField = new TField("identifier", TType.STRING, 1);
    private static const KEY_FIELD_DESC:TField = new TField("key", TType.STRING, 2);

    private var _identifier:String;
    public static const IDENTIFIER:int = 1;
    private var _key:String;
    public static const KEY:int = 2;


    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[IDENTIFIER] = new FieldMetaData("identifier", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[KEY] = new FieldMetaData("key", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(EDAMNotFoundException, metaDataMap);
    }

    public function EDAMNotFoundException() {
    }

    public function get identifier():String {
      return this._identifier;
    }

    public function set identifier(identifier:String):void {
      this._identifier = identifier;
    }

    public function unsetIdentifier():void {
      this.identifier = null;
    }

    // Returns true if field identifier is set (has been assigned a value) and false otherwise
    public function isSetIdentifier():Boolean {
      return this.identifier != null;
    }

    public function get key():String {
      return this._key;
    }

    public function set key(key:String):void {
      this._key = key;
    }

    public function unsetKey():void {
      this.key = null;
    }

    // Returns true if field key is set (has been assigned a value) and false otherwise
    public function isSetKey():Boolean {
      return this.key != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case IDENTIFIER:
        if (value == null) {
          unsetIdentifier();
        } else {
          this.identifier = value;
        }
        break;

      case KEY:
        if (value == null) {
          unsetKey();
        } else {
          this.key = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case IDENTIFIER:
        return this.identifier;
      case KEY:
        return this.key;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case IDENTIFIER:
        return isSetIdentifier();
      case KEY:
        return isSetKey();
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
          case IDENTIFIER:
            if (field.type == TType.STRING) {
              this.identifier = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case KEY:
            if (field.type == TType.STRING) {
              this.key = iprot.readString();
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
      if (this.identifier != null) {
        if (isSetIdentifier()) {
          oprot.writeFieldBegin(IDENTIFIER_FIELD_DESC);
          oprot.writeString(this.identifier);
          oprot.writeFieldEnd();
        }
      }
      if (this.key != null) {
        if (isSetKey()) {
          oprot.writeFieldBegin(KEY_FIELD_DESC);
          oprot.writeString(this.key);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("EDAMNotFoundException(");
      var first:Boolean = true;

      if (isSetIdentifier()) {
        ret += "identifier:";
        if (this.identifier == null) {
          ret += "null";
        } else {
          ret += this.identifier;
        }
        first = false;
      }
      if (isSetKey()) {
        if (!first) ret +=  ", ";
        ret += "key:";
        if (this.key == null) {
          ret += "null";
        } else {
          ret += this.key;
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
