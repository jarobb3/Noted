/**
 * Autogenerated by Thrift Compiler (0.7.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.notestore {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  /**
   * This structure is provided to the findNotesMetadata function to specify
   * the subset of fields that should be included in each NoteMetadata element
   * that is returned in the NotesMetadataList.
   * Each field on this structure is a boolean flag that indicates whether the
   * corresponding field should be included in the NoteMetadata structure when
   * it is returned.  For example, if the 'includeTitle' field is set on this
   * structure when calling findNotesMetadata, then each NoteMetadata in the
   * list should have its 'title' field set.
   * If one of the fields in this spec is not set, then it will be treated as
   * 'false' by the server, so the default behavior is to include nothing in
   * replies (but the mandatory GUID)
   */
  public class NotesMetadataResultSpec implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("NotesMetadataResultSpec");
    private static const INCLUDE_TITLE_FIELD_DESC:TField = new TField("includeTitle", TType.BOOL, 2);
    private static const INCLUDE_CONTENT_LENGTH_FIELD_DESC:TField = new TField("includeContentLength", TType.BOOL, 5);
    private static const INCLUDE_CREATED_FIELD_DESC:TField = new TField("includeCreated", TType.BOOL, 6);
    private static const INCLUDE_UPDATED_FIELD_DESC:TField = new TField("includeUpdated", TType.BOOL, 7);
    private static const INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:TField = new TField("includeUpdateSequenceNum", TType.BOOL, 10);
    private static const INCLUDE_NOTEBOOK_GUID_FIELD_DESC:TField = new TField("includeNotebookGuid", TType.BOOL, 11);
    private static const INCLUDE_TAG_GUIDS_FIELD_DESC:TField = new TField("includeTagGuids", TType.BOOL, 12);
    private static const INCLUDE_ATTRIBUTES_FIELD_DESC:TField = new TField("includeAttributes", TType.BOOL, 14);
    private static const INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:TField = new TField("includeLargestResourceMime", TType.BOOL, 20);
    private static const INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:TField = new TField("includeLargestResourceSize", TType.BOOL, 21);

    private var _includeTitle:Boolean;
    public static const INCLUDETITLE:int = 2;
    private var _includeContentLength:Boolean;
    public static const INCLUDECONTENTLENGTH:int = 5;
    private var _includeCreated:Boolean;
    public static const INCLUDECREATED:int = 6;
    private var _includeUpdated:Boolean;
    public static const INCLUDEUPDATED:int = 7;
    private var _includeUpdateSequenceNum:Boolean;
    public static const INCLUDEUPDATESEQUENCENUM:int = 10;
    private var _includeNotebookGuid:Boolean;
    public static const INCLUDENOTEBOOKGUID:int = 11;
    private var _includeTagGuids:Boolean;
    public static const INCLUDETAGGUIDS:int = 12;
    private var _includeAttributes:Boolean;
    public static const INCLUDEATTRIBUTES:int = 14;
    private var _includeLargestResourceMime:Boolean;
    public static const INCLUDELARGESTRESOURCEMIME:int = 20;
    private var _includeLargestResourceSize:Boolean;
    public static const INCLUDELARGESTRESOURCESIZE:int = 21;

    private var __isset_includeTitle:Boolean = false;
    private var __isset_includeContentLength:Boolean = false;
    private var __isset_includeCreated:Boolean = false;
    private var __isset_includeUpdated:Boolean = false;
    private var __isset_includeUpdateSequenceNum:Boolean = false;
    private var __isset_includeNotebookGuid:Boolean = false;
    private var __isset_includeTagGuids:Boolean = false;
    private var __isset_includeAttributes:Boolean = false;
    private var __isset_includeLargestResourceMime:Boolean = false;
    private var __isset_includeLargestResourceSize:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[INCLUDETITLE] = new FieldMetaData("includeTitle", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDECONTENTLENGTH] = new FieldMetaData("includeContentLength", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDECREATED] = new FieldMetaData("includeCreated", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDEUPDATED] = new FieldMetaData("includeUpdated", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDEUPDATESEQUENCENUM] = new FieldMetaData("includeUpdateSequenceNum", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDENOTEBOOKGUID] = new FieldMetaData("includeNotebookGuid", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDETAGGUIDS] = new FieldMetaData("includeTagGuids", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDEATTRIBUTES] = new FieldMetaData("includeAttributes", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDELARGESTRESOURCEMIME] = new FieldMetaData("includeLargestResourceMime", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
      metaDataMap[INCLUDELARGESTRESOURCESIZE] = new FieldMetaData("includeLargestResourceSize", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.BOOL));
    }
    {
      FieldMetaData.addStructMetaDataMap(NotesMetadataResultSpec, metaDataMap);
    }

    public function NotesMetadataResultSpec() {
    }

    public function get includeTitle():Boolean {
      return this._includeTitle;
    }

    public function set includeTitle(includeTitle:Boolean):void {
      this._includeTitle = includeTitle;
      this.__isset_includeTitle = true;
    }

    public function unsetIncludeTitle():void {
      this.__isset_includeTitle = false;
    }

    // Returns true if field includeTitle is set (has been assigned a value) and false otherwise
    public function isSetIncludeTitle():Boolean {
      return this.__isset_includeTitle;
    }

    public function get includeContentLength():Boolean {
      return this._includeContentLength;
    }

    public function set includeContentLength(includeContentLength:Boolean):void {
      this._includeContentLength = includeContentLength;
      this.__isset_includeContentLength = true;
    }

    public function unsetIncludeContentLength():void {
      this.__isset_includeContentLength = false;
    }

    // Returns true if field includeContentLength is set (has been assigned a value) and false otherwise
    public function isSetIncludeContentLength():Boolean {
      return this.__isset_includeContentLength;
    }

    public function get includeCreated():Boolean {
      return this._includeCreated;
    }

    public function set includeCreated(includeCreated:Boolean):void {
      this._includeCreated = includeCreated;
      this.__isset_includeCreated = true;
    }

    public function unsetIncludeCreated():void {
      this.__isset_includeCreated = false;
    }

    // Returns true if field includeCreated is set (has been assigned a value) and false otherwise
    public function isSetIncludeCreated():Boolean {
      return this.__isset_includeCreated;
    }

    public function get includeUpdated():Boolean {
      return this._includeUpdated;
    }

    public function set includeUpdated(includeUpdated:Boolean):void {
      this._includeUpdated = includeUpdated;
      this.__isset_includeUpdated = true;
    }

    public function unsetIncludeUpdated():void {
      this.__isset_includeUpdated = false;
    }

    // Returns true if field includeUpdated is set (has been assigned a value) and false otherwise
    public function isSetIncludeUpdated():Boolean {
      return this.__isset_includeUpdated;
    }

    public function get includeUpdateSequenceNum():Boolean {
      return this._includeUpdateSequenceNum;
    }

    public function set includeUpdateSequenceNum(includeUpdateSequenceNum:Boolean):void {
      this._includeUpdateSequenceNum = includeUpdateSequenceNum;
      this.__isset_includeUpdateSequenceNum = true;
    }

    public function unsetIncludeUpdateSequenceNum():void {
      this.__isset_includeUpdateSequenceNum = false;
    }

    // Returns true if field includeUpdateSequenceNum is set (has been assigned a value) and false otherwise
    public function isSetIncludeUpdateSequenceNum():Boolean {
      return this.__isset_includeUpdateSequenceNum;
    }

    public function get includeNotebookGuid():Boolean {
      return this._includeNotebookGuid;
    }

    public function set includeNotebookGuid(includeNotebookGuid:Boolean):void {
      this._includeNotebookGuid = includeNotebookGuid;
      this.__isset_includeNotebookGuid = true;
    }

    public function unsetIncludeNotebookGuid():void {
      this.__isset_includeNotebookGuid = false;
    }

    // Returns true if field includeNotebookGuid is set (has been assigned a value) and false otherwise
    public function isSetIncludeNotebookGuid():Boolean {
      return this.__isset_includeNotebookGuid;
    }

    public function get includeTagGuids():Boolean {
      return this._includeTagGuids;
    }

    public function set includeTagGuids(includeTagGuids:Boolean):void {
      this._includeTagGuids = includeTagGuids;
      this.__isset_includeTagGuids = true;
    }

    public function unsetIncludeTagGuids():void {
      this.__isset_includeTagGuids = false;
    }

    // Returns true if field includeTagGuids is set (has been assigned a value) and false otherwise
    public function isSetIncludeTagGuids():Boolean {
      return this.__isset_includeTagGuids;
    }

    public function get includeAttributes():Boolean {
      return this._includeAttributes;
    }

    public function set includeAttributes(includeAttributes:Boolean):void {
      this._includeAttributes = includeAttributes;
      this.__isset_includeAttributes = true;
    }

    public function unsetIncludeAttributes():void {
      this.__isset_includeAttributes = false;
    }

    // Returns true if field includeAttributes is set (has been assigned a value) and false otherwise
    public function isSetIncludeAttributes():Boolean {
      return this.__isset_includeAttributes;
    }

    public function get includeLargestResourceMime():Boolean {
      return this._includeLargestResourceMime;
    }

    public function set includeLargestResourceMime(includeLargestResourceMime:Boolean):void {
      this._includeLargestResourceMime = includeLargestResourceMime;
      this.__isset_includeLargestResourceMime = true;
    }

    public function unsetIncludeLargestResourceMime():void {
      this.__isset_includeLargestResourceMime = false;
    }

    // Returns true if field includeLargestResourceMime is set (has been assigned a value) and false otherwise
    public function isSetIncludeLargestResourceMime():Boolean {
      return this.__isset_includeLargestResourceMime;
    }

    public function get includeLargestResourceSize():Boolean {
      return this._includeLargestResourceSize;
    }

    public function set includeLargestResourceSize(includeLargestResourceSize:Boolean):void {
      this._includeLargestResourceSize = includeLargestResourceSize;
      this.__isset_includeLargestResourceSize = true;
    }

    public function unsetIncludeLargestResourceSize():void {
      this.__isset_includeLargestResourceSize = false;
    }

    // Returns true if field includeLargestResourceSize is set (has been assigned a value) and false otherwise
    public function isSetIncludeLargestResourceSize():Boolean {
      return this.__isset_includeLargestResourceSize;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case INCLUDETITLE:
        if (value == null) {
          unsetIncludeTitle();
        } else {
          this.includeTitle = value;
        }
        break;

      case INCLUDECONTENTLENGTH:
        if (value == null) {
          unsetIncludeContentLength();
        } else {
          this.includeContentLength = value;
        }
        break;

      case INCLUDECREATED:
        if (value == null) {
          unsetIncludeCreated();
        } else {
          this.includeCreated = value;
        }
        break;

      case INCLUDEUPDATED:
        if (value == null) {
          unsetIncludeUpdated();
        } else {
          this.includeUpdated = value;
        }
        break;

      case INCLUDEUPDATESEQUENCENUM:
        if (value == null) {
          unsetIncludeUpdateSequenceNum();
        } else {
          this.includeUpdateSequenceNum = value;
        }
        break;

      case INCLUDENOTEBOOKGUID:
        if (value == null) {
          unsetIncludeNotebookGuid();
        } else {
          this.includeNotebookGuid = value;
        }
        break;

      case INCLUDETAGGUIDS:
        if (value == null) {
          unsetIncludeTagGuids();
        } else {
          this.includeTagGuids = value;
        }
        break;

      case INCLUDEATTRIBUTES:
        if (value == null) {
          unsetIncludeAttributes();
        } else {
          this.includeAttributes = value;
        }
        break;

      case INCLUDELARGESTRESOURCEMIME:
        if (value == null) {
          unsetIncludeLargestResourceMime();
        } else {
          this.includeLargestResourceMime = value;
        }
        break;

      case INCLUDELARGESTRESOURCESIZE:
        if (value == null) {
          unsetIncludeLargestResourceSize();
        } else {
          this.includeLargestResourceSize = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case INCLUDETITLE:
        return this.includeTitle;
      case INCLUDECONTENTLENGTH:
        return this.includeContentLength;
      case INCLUDECREATED:
        return this.includeCreated;
      case INCLUDEUPDATED:
        return this.includeUpdated;
      case INCLUDEUPDATESEQUENCENUM:
        return this.includeUpdateSequenceNum;
      case INCLUDENOTEBOOKGUID:
        return this.includeNotebookGuid;
      case INCLUDETAGGUIDS:
        return this.includeTagGuids;
      case INCLUDEATTRIBUTES:
        return this.includeAttributes;
      case INCLUDELARGESTRESOURCEMIME:
        return this.includeLargestResourceMime;
      case INCLUDELARGESTRESOURCESIZE:
        return this.includeLargestResourceSize;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case INCLUDETITLE:
        return isSetIncludeTitle();
      case INCLUDECONTENTLENGTH:
        return isSetIncludeContentLength();
      case INCLUDECREATED:
        return isSetIncludeCreated();
      case INCLUDEUPDATED:
        return isSetIncludeUpdated();
      case INCLUDEUPDATESEQUENCENUM:
        return isSetIncludeUpdateSequenceNum();
      case INCLUDENOTEBOOKGUID:
        return isSetIncludeNotebookGuid();
      case INCLUDETAGGUIDS:
        return isSetIncludeTagGuids();
      case INCLUDEATTRIBUTES:
        return isSetIncludeAttributes();
      case INCLUDELARGESTRESOURCEMIME:
        return isSetIncludeLargestResourceMime();
      case INCLUDELARGESTRESOURCESIZE:
        return isSetIncludeLargestResourceSize();
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
          case INCLUDETITLE:
            if (field.type == TType.BOOL) {
              this.includeTitle = iprot.readBool();
              this.__isset_includeTitle = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDECONTENTLENGTH:
            if (field.type == TType.BOOL) {
              this.includeContentLength = iprot.readBool();
              this.__isset_includeContentLength = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDECREATED:
            if (field.type == TType.BOOL) {
              this.includeCreated = iprot.readBool();
              this.__isset_includeCreated = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDEUPDATED:
            if (field.type == TType.BOOL) {
              this.includeUpdated = iprot.readBool();
              this.__isset_includeUpdated = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDEUPDATESEQUENCENUM:
            if (field.type == TType.BOOL) {
              this.includeUpdateSequenceNum = iprot.readBool();
              this.__isset_includeUpdateSequenceNum = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDENOTEBOOKGUID:
            if (field.type == TType.BOOL) {
              this.includeNotebookGuid = iprot.readBool();
              this.__isset_includeNotebookGuid = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDETAGGUIDS:
            if (field.type == TType.BOOL) {
              this.includeTagGuids = iprot.readBool();
              this.__isset_includeTagGuids = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDEATTRIBUTES:
            if (field.type == TType.BOOL) {
              this.includeAttributes = iprot.readBool();
              this.__isset_includeAttributes = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDELARGESTRESOURCEMIME:
            if (field.type == TType.BOOL) {
              this.includeLargestResourceMime = iprot.readBool();
              this.__isset_includeLargestResourceMime = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case INCLUDELARGESTRESOURCESIZE:
            if (field.type == TType.BOOL) {
              this.includeLargestResourceSize = iprot.readBool();
              this.__isset_includeLargestResourceSize = true;
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
      if (isSetIncludeTitle()) {
        oprot.writeFieldBegin(INCLUDE_TITLE_FIELD_DESC);
        oprot.writeBool(this.includeTitle);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeContentLength()) {
        oprot.writeFieldBegin(INCLUDE_CONTENT_LENGTH_FIELD_DESC);
        oprot.writeBool(this.includeContentLength);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeCreated()) {
        oprot.writeFieldBegin(INCLUDE_CREATED_FIELD_DESC);
        oprot.writeBool(this.includeCreated);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeUpdated()) {
        oprot.writeFieldBegin(INCLUDE_UPDATED_FIELD_DESC);
        oprot.writeBool(this.includeUpdated);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeUpdateSequenceNum()) {
        oprot.writeFieldBegin(INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC);
        oprot.writeBool(this.includeUpdateSequenceNum);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeNotebookGuid()) {
        oprot.writeFieldBegin(INCLUDE_NOTEBOOK_GUID_FIELD_DESC);
        oprot.writeBool(this.includeNotebookGuid);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeTagGuids()) {
        oprot.writeFieldBegin(INCLUDE_TAG_GUIDS_FIELD_DESC);
        oprot.writeBool(this.includeTagGuids);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeAttributes()) {
        oprot.writeFieldBegin(INCLUDE_ATTRIBUTES_FIELD_DESC);
        oprot.writeBool(this.includeAttributes);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeLargestResourceMime()) {
        oprot.writeFieldBegin(INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC);
        oprot.writeBool(this.includeLargestResourceMime);
        oprot.writeFieldEnd();
      }
      if (isSetIncludeLargestResourceSize()) {
        oprot.writeFieldBegin(INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC);
        oprot.writeBool(this.includeLargestResourceSize);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("NotesMetadataResultSpec(");
      var first:Boolean = true;

      if (isSetIncludeTitle()) {
        ret += "includeTitle:";
        ret += this.includeTitle;
        first = false;
      }
      if (isSetIncludeContentLength()) {
        if (!first) ret +=  ", ";
        ret += "includeContentLength:";
        ret += this.includeContentLength;
        first = false;
      }
      if (isSetIncludeCreated()) {
        if (!first) ret +=  ", ";
        ret += "includeCreated:";
        ret += this.includeCreated;
        first = false;
      }
      if (isSetIncludeUpdated()) {
        if (!first) ret +=  ", ";
        ret += "includeUpdated:";
        ret += this.includeUpdated;
        first = false;
      }
      if (isSetIncludeUpdateSequenceNum()) {
        if (!first) ret +=  ", ";
        ret += "includeUpdateSequenceNum:";
        ret += this.includeUpdateSequenceNum;
        first = false;
      }
      if (isSetIncludeNotebookGuid()) {
        if (!first) ret +=  ", ";
        ret += "includeNotebookGuid:";
        ret += this.includeNotebookGuid;
        first = false;
      }
      if (isSetIncludeTagGuids()) {
        if (!first) ret +=  ", ";
        ret += "includeTagGuids:";
        ret += this.includeTagGuids;
        first = false;
      }
      if (isSetIncludeAttributes()) {
        if (!first) ret +=  ", ";
        ret += "includeAttributes:";
        ret += this.includeAttributes;
        first = false;
      }
      if (isSetIncludeLargestResourceMime()) {
        if (!first) ret +=  ", ";
        ret += "includeLargestResourceMime:";
        ret += this.includeLargestResourceMime;
        first = false;
      }
      if (isSetIncludeLargestResourceSize()) {
        if (!first) ret +=  ", ";
        ret += "includeLargestResourceSize:";
        ret += this.includeLargestResourceSize;
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
