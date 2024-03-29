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
   *  A data structure representing the number of notes for each notebook
   *  and tag with a non-zero set of applicable notes.
   * 
   * <dl>
   *  <dt>notebookCounts</dt>
   *    <dd>
   *    A mapping from the Notebook GUID to the number of
   *    notes (from some selection) that are in the corresponding notebook.
   *    </dd>
   * 
   *  <dt>tagCounts</dt>
   *    <dd>
   *    A mapping from the Tag GUID to the number of notes (from some
   *    selection) that have the corresponding tag.
   *    </dd>
   * 
   *  <dt>trashCount</dt>
   *    <dd>
   *    If this is set, then this is the number of notes that are in the trash.
   *    If this is not set, then the number of notes in the trash hasn't been
   *    reported.  (I.e. if there are no notes in the trash, this will be set
   *    to 0.)
   *    </dd>
   *  </dl>
   */
  public class NoteCollectionCounts implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("NoteCollectionCounts");
    private static const NOTEBOOK_COUNTS_FIELD_DESC:TField = new TField("notebookCounts", TType.MAP, 1);
    private static const TAG_COUNTS_FIELD_DESC:TField = new TField("tagCounts", TType.MAP, 2);
    private static const TRASH_COUNT_FIELD_DESC:TField = new TField("trashCount", TType.I32, 3);

    private var _notebookCounts:Dictionary;
    public static const NOTEBOOKCOUNTS:int = 1;
    private var _tagCounts:Dictionary;
    public static const TAGCOUNTS:int = 2;
    private var _trashCount:int;
    public static const TRASHCOUNT:int = 3;

    private var __isset_trashCount:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[NOTEBOOKCOUNTS] = new FieldMetaData("notebookCounts", TFieldRequirementType.OPTIONAL, 
          new MapMetaData(TType.MAP, 
              new FieldValueMetaData(TType.STRING), 
              new FieldValueMetaData(TType.I32)));
      metaDataMap[TAGCOUNTS] = new FieldMetaData("tagCounts", TFieldRequirementType.OPTIONAL, 
          new MapMetaData(TType.MAP, 
              new FieldValueMetaData(TType.STRING), 
              new FieldValueMetaData(TType.I32)));
      metaDataMap[TRASHCOUNT] = new FieldMetaData("trashCount", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
    }
    {
      FieldMetaData.addStructMetaDataMap(NoteCollectionCounts, metaDataMap);
    }

    public function NoteCollectionCounts() {
    }

    public function get notebookCounts():Dictionary {
      return this._notebookCounts;
    }

    public function set notebookCounts(notebookCounts:Dictionary):void {
      this._notebookCounts = notebookCounts;
    }

    public function unsetNotebookCounts():void {
      this.notebookCounts = null;
    }

    // Returns true if field notebookCounts is set (has been assigned a value) and false otherwise
    public function isSetNotebookCounts():Boolean {
      return this.notebookCounts != null;
    }

    public function get tagCounts():Dictionary {
      return this._tagCounts;
    }

    public function set tagCounts(tagCounts:Dictionary):void {
      this._tagCounts = tagCounts;
    }

    public function unsetTagCounts():void {
      this.tagCounts = null;
    }

    // Returns true if field tagCounts is set (has been assigned a value) and false otherwise
    public function isSetTagCounts():Boolean {
      return this.tagCounts != null;
    }

    public function get trashCount():int {
      return this._trashCount;
    }

    public function set trashCount(trashCount:int):void {
      this._trashCount = trashCount;
      this.__isset_trashCount = true;
    }

    public function unsetTrashCount():void {
      this.__isset_trashCount = false;
    }

    // Returns true if field trashCount is set (has been assigned a value) and false otherwise
    public function isSetTrashCount():Boolean {
      return this.__isset_trashCount;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case NOTEBOOKCOUNTS:
        if (value == null) {
          unsetNotebookCounts();
        } else {
          this.notebookCounts = value;
        }
        break;

      case TAGCOUNTS:
        if (value == null) {
          unsetTagCounts();
        } else {
          this.tagCounts = value;
        }
        break;

      case TRASHCOUNT:
        if (value == null) {
          unsetTrashCount();
        } else {
          this.trashCount = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case NOTEBOOKCOUNTS:
        return this.notebookCounts;
      case TAGCOUNTS:
        return this.tagCounts;
      case TRASHCOUNT:
        return this.trashCount;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case NOTEBOOKCOUNTS:
        return isSetNotebookCounts();
      case TAGCOUNTS:
        return isSetTagCounts();
      case TRASHCOUNT:
        return isSetTrashCount();
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
          case NOTEBOOKCOUNTS:
            if (field.type == TType.MAP) {
              {
                var _map137:TMap = iprot.readMapBegin();
                this.notebookCounts = new Dictionary();
                for (var _i138:int = 0; _i138 < _map137.size; ++_i138)
                {
                  var _key139:String;
                  var _val140:int;
                  _key139 = iprot.readString();
                  _val140 = iprot.readI32();
                  this.notebookCounts[_key139] = _val140;
                }
                iprot.readMapEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TAGCOUNTS:
            if (field.type == TType.MAP) {
              {
                var _map141:TMap = iprot.readMapBegin();
                this.tagCounts = new Dictionary();
                for (var _i142:int = 0; _i142 < _map141.size; ++_i142)
                {
                  var _key143:String;
                  var _val144:int;
                  _key143 = iprot.readString();
                  _val144 = iprot.readI32();
                  this.tagCounts[_key143] = _val144;
                }
                iprot.readMapEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case TRASHCOUNT:
            if (field.type == TType.I32) {
              this.trashCount = iprot.readI32();
              this.__isset_trashCount = true;
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
      if (this.notebookCounts != null) {
        if (isSetNotebookCounts()) {
          oprot.writeFieldBegin(NOTEBOOK_COUNTS_FIELD_DESC);
          {
            var _sizeCounter146:int = 0;
            for (var _key145:* in this.notebookCounts) {
              _sizeCounter146++;
            }
            oprot.writeMapBegin(new TMap(TType.STRING, TType.I32, _sizeCounter146));
            for (var elem147:* in this.notebookCounts)            {
              oprot.writeString(elem147);
              oprot.writeI32(this.notebookCounts[elem147]);
            }
            oprot.writeMapEnd();
          }
          oprot.writeFieldEnd();
        }
      }
      if (this.tagCounts != null) {
        if (isSetTagCounts()) {
          oprot.writeFieldBegin(TAG_COUNTS_FIELD_DESC);
          {
            var _sizeCounter149:int = 0;
            for (var _key148:* in this.tagCounts) {
              _sizeCounter149++;
            }
            oprot.writeMapBegin(new TMap(TType.STRING, TType.I32, _sizeCounter149));
            for (var elem150:* in this.tagCounts)            {
              oprot.writeString(elem150);
              oprot.writeI32(this.tagCounts[elem150]);
            }
            oprot.writeMapEnd();
          }
          oprot.writeFieldEnd();
        }
      }
      if (isSetTrashCount()) {
        oprot.writeFieldBegin(TRASH_COUNT_FIELD_DESC);
        oprot.writeI32(this.trashCount);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("NoteCollectionCounts(");
      var first:Boolean = true;

      if (isSetNotebookCounts()) {
        ret += "notebookCounts:";
        if (this.notebookCounts == null) {
          ret += "null";
        } else {
          ret += this.notebookCounts;
        }
        first = false;
      }
      if (isSetTagCounts()) {
        if (!first) ret +=  ", ";
        ret += "tagCounts:";
        if (this.tagCounts == null) {
          ret += "null";
        } else {
          ret += this.tagCounts;
        }
        first = false;
      }
      if (isSetTrashCount()) {
        if (!first) ret +=  ", ";
        ret += "trashCount:";
        ret += this.trashCount;
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
