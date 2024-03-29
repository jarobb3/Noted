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
   *  In several places, EDAM exchanges blocks of bytes of data for a component
   *  which may be relatively large.  For example:  the contents of a clipped
   *  HTML note, the bytes of an embedded image, or the recognition XML for
   *  a large image.  This structure is used in the protocol to represent
   *  any of those large blocks of data when they are transmitted or when
   *  they are only referenced their metadata.
   * 
   * <dl>
   *  <dt>bodyHash</dt>
   *    <dd>This field carries a one-way hash of the contents of the
   *    data body, in binary form.  The hash function is MD5<br/>
   *    Length:  EDAM_HASH_LEN (exactly)
   *    </dd>
   * 
   *  <dt>size</dt>
   *    <dd>The length, in bytes, of the data body.
   *    </dd>
   * 
   *  <dt>body</dt>
   *    <dd>This field is set to contain the binary contents of the data
   *    whenever the resource is being transferred.  If only metadata is
   *    being exchanged, this field will be empty.  For example, a client could
   *    notify the service about the change to an attribute for a resource
   *    without transmitting the binary resource contents.
   *    </dd>
   *  </dl>
   */
  public class Data implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("Data");
    private static const BODY_HASH_FIELD_DESC:TField = new TField("bodyHash", TType.STRING, 1);
    private static const SIZE_FIELD_DESC:TField = new TField("size", TType.I32, 2);
    private static const BODY_FIELD_DESC:TField = new TField("body", TType.STRING, 3);

    private var _bodyHash:ByteArray;
    public static const BODYHASH:int = 1;
    private var _size:int;
    public static const SIZE:int = 2;
    private var _body:ByteArray;
    public static const BODY:int = 3;

    private var __isset_size:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[BODYHASH] = new FieldMetaData("bodyHash", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[SIZE] = new FieldMetaData("size", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
      metaDataMap[BODY] = new FieldMetaData("body", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
    }
    {
      FieldMetaData.addStructMetaDataMap(Data, metaDataMap);
    }

    public function Data() {
    }

    public function get bodyHash():ByteArray {
      return this._bodyHash;
    }

    public function set bodyHash(bodyHash:ByteArray):void {
      this._bodyHash = bodyHash;
    }

    public function unsetBodyHash():void {
      this.bodyHash = null;
    }

    // Returns true if field bodyHash is set (has been assigned a value) and false otherwise
    public function isSetBodyHash():Boolean {
      return this.bodyHash != null;
    }

    public function get size():int {
      return this._size;
    }

    public function set size(size:int):void {
      this._size = size;
      this.__isset_size = true;
    }

    public function unsetSize():void {
      this.__isset_size = false;
    }

    // Returns true if field size is set (has been assigned a value) and false otherwise
    public function isSetSize():Boolean {
      return this.__isset_size;
    }

    public function get body():ByteArray {
      return this._body;
    }

    public function set body(body:ByteArray):void {
      this._body = body;
    }

    public function unsetBody():void {
      this.body = null;
    }

    // Returns true if field body is set (has been assigned a value) and false otherwise
    public function isSetBody():Boolean {
      return this.body != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case BODYHASH:
        if (value == null) {
          unsetBodyHash();
        } else {
          this.bodyHash = value;
        }
        break;

      case SIZE:
        if (value == null) {
          unsetSize();
        } else {
          this.size = value;
        }
        break;

      case BODY:
        if (value == null) {
          unsetBody();
        } else {
          this.body = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case BODYHASH:
        return this.bodyHash;
      case SIZE:
        return this.size;
      case BODY:
        return this.body;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case BODYHASH:
        return isSetBodyHash();
      case SIZE:
        return isSetSize();
      case BODY:
        return isSetBody();
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
          case BODYHASH:
            if (field.type == TType.STRING) {
              this.bodyHash = iprot.readBinary();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SIZE:
            if (field.type == TType.I32) {
              this.size = iprot.readI32();
              this.__isset_size = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case BODY:
            if (field.type == TType.STRING) {
              this.body = iprot.readBinary();
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
      if (this.bodyHash != null) {
        if (isSetBodyHash()) {
          oprot.writeFieldBegin(BODY_HASH_FIELD_DESC);
          oprot.writeBinary(this.bodyHash);
          oprot.writeFieldEnd();
        }
      }
      if (isSetSize()) {
        oprot.writeFieldBegin(SIZE_FIELD_DESC);
        oprot.writeI32(this.size);
        oprot.writeFieldEnd();
      }
      if (this.body != null) {
        if (isSetBody()) {
          oprot.writeFieldBegin(BODY_FIELD_DESC);
          oprot.writeBinary(this.body);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("Data(");
      var first:Boolean = true;

      if (isSetBodyHash()) {
        ret += "bodyHash:";
        if (this.bodyHash == null) {
          ret += "null";
        } else {
            ret += "BINARY";
        }
        first = false;
      }
      if (isSetSize()) {
        if (!first) ret +=  ", ";
        ret += "size:";
        ret += this.size;
        first = false;
      }
      if (isSetBody()) {
        if (!first) ret +=  ", ";
        ret += "body:";
        if (this.body == null) {
          ret += "null";
        } else {
            ret += "BINARY";
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
