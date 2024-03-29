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

import com.evernote.edam.type.Data;
import com.evernote.edam.type.ResourceAttributes;

  /**
   * Every media file that is embedded or attached to a note is represented
   * through a Resource entry.
   * <dl>
   * <dt>guid</dt>
   *   <dd>The unique identifier of this resource.  Will be set whenever
   *   a resource is retrieved from the service, but may be null when a client
   *   is creating a resource.
   *   <br/>
   *   Length:  EDAM_GUID_LEN_MIN - EDAM_GUID_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_GUID_REGEX
   *   </dd>
   * 
   * <dt>noteGuid</dt>
   *   <dd>The unique identifier of the Note that holds this
   *   Resource. Will be set whenever the resource is retrieved from the service,
   *   but may be null when a client is creating a resource.
   *   <br/>
   *   Length:  EDAM_GUID_LEN_MIN - EDAM_GUID_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_GUID_REGEX
   *   </dd>
   * 
   * <dt>data</dt>
   *   <dd>The contents of the resource.
   *   Maximum length:  The data.body is limited to EDAM_RESOURCE_SIZE_MAX_FREE
   *   for free accounts and EDAM_RESOURCE_SIZE_MAX_PREMIUM for premium accounts.
   *   </dd>
   * 
   * <dt>mime</dt>
   *   <dd>The MIME type for the embedded resource.  E.g. "image/gif"
   *   <br/>
   *   Length:  EDAM_MIME_LEN_MIN - EDAM_MIME_LEN_MAX
   *   <br/>
   *   Regex:  EDAM_MIME_REGEX
   *   </dd>
   * 
   * <dt>width</dt>
   *   <dd>If set, this contains the display width of this resource, in
   *   pixels.
   *   </dd>
   * 
   * <dt>height</dt>
   *   <dd>If set, this contains the display height of this resource,
   *   in pixels.
   *   </dd>
   * 
   * <dt>duration</dt>
   *   <dd>DEPRECATED: ignored.
   *   </dd>
   * 
   * <dt>active</dt>
   *   <dd>DEPRECATED: ignored.
   *   </dd>
   * 
   * <dt>recognition</dt>
   *   <dd>If set, this will hold the encoded data that provides
   *   information on search and recognition within this resource.
   *   </dd>
   * 
   * <dt>attributes</dt>
   *   <dd>A list of the attributes for this resource.
   *   </dd>
   * 
   * <dt>updateSequenceNum</dt>
   *   <dd>A number identifying the last transaction to
   *   modify the state of this object. The USN values are sequential within an
   *   account, and can be used to compare the order of modifications within the
   *   service.
   *   </dd>
   * 
   * <dt>alternateData</dt>
   *   <dd>Some Resources may be assigned an alternate data format by the service
   *   which may be more appropriate for indexing or rendering than the original
   *   data provided by the user.  In these cases, the alternate data form will
   *   be available via this Data element.  If a Resource has no alternate form,
   *   this field will be unset.</dd>
   * </dl>
   */
  public class Resource implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("Resource");
    private static const GUID_FIELD_DESC:TField = new TField("guid", TType.STRING, 1);
    private static const NOTE_GUID_FIELD_DESC:TField = new TField("noteGuid", TType.STRING, 2);
    private static const DATA_FIELD_DESC:TField = new TField("data", TType.STRUCT, 3);
    private static const MIME_FIELD_DESC:TField = new TField("mime", TType.STRING, 4);
    private static const WIDTH_FIELD_DESC:TField = new TField("width", TType.I16, 5);
    private static const HEIGHT_FIELD_DESC:TField = new TField("height", TType.I16, 6);
    private static const DURATION_FIELD_DESC:TField = new TField("duration", TType.I16, 7);
    private static const ACTIVE_FIELD_DESC:TField = new TField("active", TType.BOOL, 8);
    private static const RECOGNITION_FIELD_DESC:TField = new TField("recognition", TType.STRUCT, 9);
    private static const ATTRIBUTES_FIELD_DESC:TField = new TField("attributes", TType.STRUCT, 11);
    private static const UPDATE_SEQUENCE_NUM_FIELD_DESC:TField = new TField("updateSequenceNum", TType.I32, 12);
    private static const ALTERNATE_DATA_FIELD_DESC:TField = new TField("alternateData", TType.STRUCT, 13);

    private var _guid:String;
    public static const GUID:int = 1;
    private var _noteGuid:String;
    public static const NOTEGUID:int = 2;
    private var _data:Data;
    public static const DATA:int = 3;
    private var _mime:String;
    public static const MIME:int = 4;
    private var _width:int;
    public static const WIDTH:int = 5;
    private var _height:int;
    public static const HEIGHT:int = 6;
    private var _duration:int;
    public static const DURATION:int = 7;
    private var _active:Boolean;
    public static const ACTIVE:int = 8;
    private var _recognition:Data;
    public static const RECOGNITION:int = 9;
    private var _attributes:ResourceAttributes;
    public static const ATTRIBUTES:int = 11;
    private var _updateSequenceNum:int;
    public static const UPDATESEQUENCENUM:int = 12;
    private var _alternateData:Data;
    public static const ALTERNATEDATA:int = 13;

    private var __isset_width:Boolean = false;
    private var __isset_height:Boolean = false;
    private var __isset_duration:Boolean = false;
    private var __isset_active:Boolean = false;
    private var __isset_updateSequenceNum:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[GUID] = new FieldMetaData("guid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[NOTEGUID] = new FieldMetaData("noteGuid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[DATA] = new FieldMetaData("data", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, Data));
      metaDataMap[MIME] = new FieldMetaData("mime", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[WIDTH] = new FieldMetaData("width", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[HEIGHT] = new FieldMetaData("height", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[DURATION] = new FieldMetaData("duration", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[ACTIVE] = new FieldMetaData("active", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[RECOGNITION] = new FieldMetaData("recognition", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, Data));
      metaDataMap[ATTRIBUTES] = new FieldMetaData("attributes", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, ResourceAttributes));
      metaDataMap[UPDATESEQUENCENUM] = new FieldMetaData("updateSequenceNum", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
      metaDataMap[ALTERNATEDATA] = new FieldMetaData("alternateData", TFieldRequirementType.OPTIONAL, 
          new StructMetaData(TType.STRUCT, Data));
    }
    {
      FieldMetaData.addStructMetaDataMap(Resource, metaDataMap);
    }

    public function Resource() {
    }

    public function get guid():String {
      return this._guid;
    }

    public function set guid(guid:String):void {
      this._guid = guid;
    }

    public function unsetGuid():void {
      this.guid = null;
    }

    // Returns true if field guid is set (has been assigned a value) and false otherwise
    public function isSetGuid():Boolean {
      return this.guid != null;
    }

    public function get noteGuid():String {
      return this._noteGuid;
    }

    public function set noteGuid(noteGuid:String):void {
      this._noteGuid = noteGuid;
    }

    public function unsetNoteGuid():void {
      this.noteGuid = null;
    }

    // Returns true if field noteGuid is set (has been assigned a value) and false otherwise
    public function isSetNoteGuid():Boolean {
      return this.noteGuid != null;
    }

    public function get data():Data {
      return this._data;
    }

    public function set data(data:Data):void {
      this._data = data;
    }

    public function unsetData():void {
      this.data = null;
    }

    // Returns true if field data is set (has been assigned a value) and false otherwise
    public function isSetData():Boolean {
      return this.data != null;
    }

    public function get mime():String {
      return this._mime;
    }

    public function set mime(mime:String):void {
      this._mime = mime;
    }

    public function unsetMime():void {
      this.mime = null;
    }

    // Returns true if field mime is set (has been assigned a value) and false otherwise
    public function isSetMime():Boolean {
      return this.mime != null;
    }

    public function get width():int {
      return this._width;
    }

    public function set width(width:int):void {
      this._width = width;
      this.__isset_width = true;
    }

    public function unsetWidth():void {
      this.__isset_width = false;
    }

    // Returns true if field width is set (has been assigned a value) and false otherwise
    public function isSetWidth():Boolean {
      return this.__isset_width;
    }

    public function get height():int {
      return this._height;
    }

    public function set height(height:int):void {
      this._height = height;
      this.__isset_height = true;
    }

    public function unsetHeight():void {
      this.__isset_height = false;
    }

    // Returns true if field height is set (has been assigned a value) and false otherwise
    public function isSetHeight():Boolean {
      return this.__isset_height;
    }

    public function get duration():int {
      return this._duration;
    }

    public function set duration(duration:int):void {
      this._duration = duration;
      this.__isset_duration = true;
    }

    public function unsetDuration():void {
      this.__isset_duration = false;
    }

    // Returns true if field duration is set (has been assigned a value) and false otherwise
    public function isSetDuration():Boolean {
      return this.__isset_duration;
    }

    public function get active():Boolean {
      return this._active;
    }

    public function set active(active:Boolean):void {
      this._active = active;
      this.__isset_active = true;
    }

    public function unsetActive():void {
      this.__isset_active = false;
    }

    // Returns true if field active is set (has been assigned a value) and false otherwise
    public function isSetActive():Boolean {
      return this.__isset_active;
    }

    public function get recognition():Data {
      return this._recognition;
    }

    public function set recognition(recognition:Data):void {
      this._recognition = recognition;
    }

    public function unsetRecognition():void {
      this.recognition = null;
    }

    // Returns true if field recognition is set (has been assigned a value) and false otherwise
    public function isSetRecognition():Boolean {
      return this.recognition != null;
    }

    public function get attributes():ResourceAttributes {
      return this._attributes;
    }

    public function set attributes(attributes:ResourceAttributes):void {
      this._attributes = attributes;
    }

    public function unsetAttributes():void {
      this.attributes = null;
    }

    // Returns true if field attributes is set (has been assigned a value) and false otherwise
    public function isSetAttributes():Boolean {
      return this.attributes != null;
    }

    public function get updateSequenceNum():int {
      return this._updateSequenceNum;
    }

    public function set updateSequenceNum(updateSequenceNum:int):void {
      this._updateSequenceNum = updateSequenceNum;
      this.__isset_updateSequenceNum = true;
    }

    public function unsetUpdateSequenceNum():void {
      this.__isset_updateSequenceNum = false;
    }

    // Returns true if field updateSequenceNum is set (has been assigned a value) and false otherwise
    public function isSetUpdateSequenceNum():Boolean {
      return this.__isset_updateSequenceNum;
    }

    public function get alternateData():Data {
      return this._alternateData;
    }

    public function set alternateData(alternateData:Data):void {
      this._alternateData = alternateData;
    }

    public function unsetAlternateData():void {
      this.alternateData = null;
    }

    // Returns true if field alternateData is set (has been assigned a value) and false otherwise
    public function isSetAlternateData():Boolean {
      return this.alternateData != null;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case GUID:
        if (value == null) {
          unsetGuid();
        } else {
          this.guid = value;
        }
        break;

      case NOTEGUID:
        if (value == null) {
          unsetNoteGuid();
        } else {
          this.noteGuid = value;
        }
        break;

      case DATA:
        if (value == null) {
          unsetData();
        } else {
          this.data = value;
        }
        break;

      case MIME:
        if (value == null) {
          unsetMime();
        } else {
          this.mime = value;
        }
        break;

      case WIDTH:
        if (value == null) {
          unsetWidth();
        } else {
          this.width = value;
        }
        break;

      case HEIGHT:
        if (value == null) {
          unsetHeight();
        } else {
          this.height = value;
        }
        break;

      case DURATION:
        if (value == null) {
          unsetDuration();
        } else {
          this.duration = value;
        }
        break;

      case ACTIVE:
        if (value == null) {
          unsetActive();
        } else {
          this.active = value;
        }
        break;

      case RECOGNITION:
        if (value == null) {
          unsetRecognition();
        } else {
          this.recognition = value;
        }
        break;

      case ATTRIBUTES:
        if (value == null) {
          unsetAttributes();
        } else {
          this.attributes = value;
        }
        break;

      case UPDATESEQUENCENUM:
        if (value == null) {
          unsetUpdateSequenceNum();
        } else {
          this.updateSequenceNum = value;
        }
        break;

      case ALTERNATEDATA:
        if (value == null) {
          unsetAlternateData();
        } else {
          this.alternateData = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case GUID:
        return this.guid;
      case NOTEGUID:
        return this.noteGuid;
      case DATA:
        return this.data;
      case MIME:
        return this.mime;
      case WIDTH:
        return this.width;
      case HEIGHT:
        return this.height;
      case DURATION:
        return this.duration;
      case ACTIVE:
        return this.active;
      case RECOGNITION:
        return this.recognition;
      case ATTRIBUTES:
        return this.attributes;
      case UPDATESEQUENCENUM:
        return this.updateSequenceNum;
      case ALTERNATEDATA:
        return this.alternateData;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case GUID:
        return isSetGuid();
      case NOTEGUID:
        return isSetNoteGuid();
      case DATA:
        return isSetData();
      case MIME:
        return isSetMime();
      case WIDTH:
        return isSetWidth();
      case HEIGHT:
        return isSetHeight();
      case DURATION:
        return isSetDuration();
      case ACTIVE:
        return isSetActive();
      case RECOGNITION:
        return isSetRecognition();
      case ATTRIBUTES:
        return isSetAttributes();
      case UPDATESEQUENCENUM:
        return isSetUpdateSequenceNum();
      case ALTERNATEDATA:
        return isSetAlternateData();
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
          case GUID:
            if (field.type == TType.STRING) {
              this.guid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case NOTEGUID:
            if (field.type == TType.STRING) {
              this.noteGuid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case DATA:
            if (field.type == TType.STRUCT) {
              this.data = new Data();
              this.data.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case MIME:
            if (field.type == TType.STRING) {
              this.mime = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case WIDTH:
            if (field.type == TType.I16) {
              this.width = iprot.readI16();
              this.__isset_width = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case HEIGHT:
            if (field.type == TType.I16) {
              this.height = iprot.readI16();
              this.__isset_height = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case DURATION:
            if (field.type == TType.I16) {
              this.duration = iprot.readI16();
              this.__isset_duration = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ACTIVE:
            if (field.type == TType.BOOL) {
              this.active = iprot.readBool();
              this.__isset_active = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case RECOGNITION:
            if (field.type == TType.STRUCT) {
              this.recognition = new Data();
              this.recognition.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ATTRIBUTES:
            if (field.type == TType.STRUCT) {
              this.attributes = new ResourceAttributes();
              this.attributes.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case UPDATESEQUENCENUM:
            if (field.type == TType.I32) {
              this.updateSequenceNum = iprot.readI32();
              this.__isset_updateSequenceNum = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ALTERNATEDATA:
            if (field.type == TType.STRUCT) {
              this.alternateData = new Data();
              this.alternateData.read(iprot);
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
      if (this.guid != null) {
        if (isSetGuid()) {
          oprot.writeFieldBegin(GUID_FIELD_DESC);
          oprot.writeString(this.guid);
          oprot.writeFieldEnd();
        }
      }
      if (this.noteGuid != null) {
        if (isSetNoteGuid()) {
          oprot.writeFieldBegin(NOTE_GUID_FIELD_DESC);
          oprot.writeString(this.noteGuid);
          oprot.writeFieldEnd();
        }
      }
      if (this.data != null) {
        if (isSetData()) {
          oprot.writeFieldBegin(DATA_FIELD_DESC);
          this.data.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      if (this.mime != null) {
        if (isSetMime()) {
          oprot.writeFieldBegin(MIME_FIELD_DESC);
          oprot.writeString(this.mime);
          oprot.writeFieldEnd();
        }
      }
      if (isSetWidth()) {
        oprot.writeFieldBegin(WIDTH_FIELD_DESC);
        oprot.writeI16(this.width);
        oprot.writeFieldEnd();
      }
      if (isSetHeight()) {
        oprot.writeFieldBegin(HEIGHT_FIELD_DESC);
        oprot.writeI16(this.height);
        oprot.writeFieldEnd();
      }
      if (isSetDuration()) {
        oprot.writeFieldBegin(DURATION_FIELD_DESC);
        oprot.writeI16(this.duration);
        oprot.writeFieldEnd();
      }
      if (isSetActive()) {
        oprot.writeFieldBegin(ACTIVE_FIELD_DESC);
        oprot.writeBool(this.active);
        oprot.writeFieldEnd();
      }
      if (this.recognition != null) {
        if (isSetRecognition()) {
          oprot.writeFieldBegin(RECOGNITION_FIELD_DESC);
          this.recognition.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      if (this.attributes != null) {
        if (isSetAttributes()) {
          oprot.writeFieldBegin(ATTRIBUTES_FIELD_DESC);
          this.attributes.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      if (isSetUpdateSequenceNum()) {
        oprot.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
        oprot.writeI32(this.updateSequenceNum);
        oprot.writeFieldEnd();
      }
      if (this.alternateData != null) {
        if (isSetAlternateData()) {
          oprot.writeFieldBegin(ALTERNATE_DATA_FIELD_DESC);
          this.alternateData.write(oprot);
          oprot.writeFieldEnd();
        }
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("Resource(");
      var first:Boolean = true;

      if (isSetGuid()) {
        ret += "guid:";
        if (this.guid == null) {
          ret += "null";
        } else {
          ret += this.guid;
        }
        first = false;
      }
      if (isSetNoteGuid()) {
        if (!first) ret +=  ", ";
        ret += "noteGuid:";
        if (this.noteGuid == null) {
          ret += "null";
        } else {
          ret += this.noteGuid;
        }
        first = false;
      }
      if (isSetData()) {
        if (!first) ret +=  ", ";
        ret += "data:";
        if (this.data == null) {
          ret += "null";
        } else {
          ret += this.data;
        }
        first = false;
      }
      if (isSetMime()) {
        if (!first) ret +=  ", ";
        ret += "mime:";
        if (this.mime == null) {
          ret += "null";
        } else {
          ret += this.mime;
        }
        first = false;
      }
      if (isSetWidth()) {
        if (!first) ret +=  ", ";
        ret += "width:";
        ret += this.width;
        first = false;
      }
      if (isSetHeight()) {
        if (!first) ret +=  ", ";
        ret += "height:";
        ret += this.height;
        first = false;
      }
      if (isSetDuration()) {
        if (!first) ret +=  ", ";
        ret += "duration:";
        ret += this.duration;
        first = false;
      }
      if (isSetActive()) {
        if (!first) ret +=  ", ";
        ret += "active:";
        ret += this.active;
        first = false;
      }
      if (isSetRecognition()) {
        if (!first) ret +=  ", ";
        ret += "recognition:";
        if (this.recognition == null) {
          ret += "null";
        } else {
          ret += this.recognition;
        }
        first = false;
      }
      if (isSetAttributes()) {
        if (!first) ret +=  ", ";
        ret += "attributes:";
        if (this.attributes == null) {
          ret += "null";
        } else {
          ret += this.attributes;
        }
        first = false;
      }
      if (isSetUpdateSequenceNum()) {
        if (!first) ret +=  ", ";
        ret += "updateSequenceNum:";
        ret += this.updateSequenceNum;
        first = false;
      }
      if (isSetAlternateData()) {
        if (!first) ret +=  ", ";
        ret += "alternateData:";
        if (this.alternateData == null) {
          ret += "null";
        } else {
          ret += this.alternateData;
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
