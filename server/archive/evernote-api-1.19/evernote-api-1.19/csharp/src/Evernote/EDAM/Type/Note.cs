/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using Thrift.Protocol;
using Thrift.Transport;
namespace Evernote.EDAM.Type
{

  #if !SILVERLIGHT
  [Serializable]
  #endif
  public partial class Note : TBase
  {
    private string _guid;
    private string _title;
    private string _content;
    private byte[] _contentHash;
    private int _contentLength;
    private long _created;
    private long _updated;
    private long _deleted;
    private bool _active;
    private int _updateSequenceNum;
    private string _notebookGuid;
    private List<string> _tagGuids;
    private List<Resource> _resources;
    private NoteAttributes _attributes;
    private List<string> _tagNames;

    public string Guid
    {
      get
      {
        return _guid;
      }
      set
      {
        __isset.guid = true;
        this._guid = value;
      }
    }

    public string Title
    {
      get
      {
        return _title;
      }
      set
      {
        __isset.title = true;
        this._title = value;
      }
    }

    public string Content
    {
      get
      {
        return _content;
      }
      set
      {
        __isset.content = true;
        this._content = value;
      }
    }

    public byte[] ContentHash
    {
      get
      {
        return _contentHash;
      }
      set
      {
        __isset.contentHash = true;
        this._contentHash = value;
      }
    }

    public int ContentLength
    {
      get
      {
        return _contentLength;
      }
      set
      {
        __isset.contentLength = true;
        this._contentLength = value;
      }
    }

    public long Created
    {
      get
      {
        return _created;
      }
      set
      {
        __isset.created = true;
        this._created = value;
      }
    }

    public long Updated
    {
      get
      {
        return _updated;
      }
      set
      {
        __isset.updated = true;
        this._updated = value;
      }
    }

    public long Deleted
    {
      get
      {
        return _deleted;
      }
      set
      {
        __isset.deleted = true;
        this._deleted = value;
      }
    }

    public bool Active
    {
      get
      {
        return _active;
      }
      set
      {
        __isset.active = true;
        this._active = value;
      }
    }

    public int UpdateSequenceNum
    {
      get
      {
        return _updateSequenceNum;
      }
      set
      {
        __isset.updateSequenceNum = true;
        this._updateSequenceNum = value;
      }
    }

    public string NotebookGuid
    {
      get
      {
        return _notebookGuid;
      }
      set
      {
        __isset.notebookGuid = true;
        this._notebookGuid = value;
      }
    }

    public List<string> TagGuids
    {
      get
      {
        return _tagGuids;
      }
      set
      {
        __isset.tagGuids = true;
        this._tagGuids = value;
      }
    }

    public List<Resource> Resources
    {
      get
      {
        return _resources;
      }
      set
      {
        __isset.resources = true;
        this._resources = value;
      }
    }

    public NoteAttributes Attributes
    {
      get
      {
        return _attributes;
      }
      set
      {
        __isset.attributes = true;
        this._attributes = value;
      }
    }

    public List<string> TagNames
    {
      get
      {
        return _tagNames;
      }
      set
      {
        __isset.tagNames = true;
        this._tagNames = value;
      }
    }


    public Isset __isset;
    #if !SILVERLIGHT
    [Serializable]
    #endif
    public struct Isset {
      public bool guid;
      public bool title;
      public bool content;
      public bool contentHash;
      public bool contentLength;
      public bool created;
      public bool updated;
      public bool deleted;
      public bool active;
      public bool updateSequenceNum;
      public bool notebookGuid;
      public bool tagGuids;
      public bool resources;
      public bool attributes;
      public bool tagNames;
    }

    public Note() {
    }

    public void Read (TProtocol iprot)
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.String) {
              Guid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              Title = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.String) {
              Content = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.String) {
              ContentHash = iprot.ReadBinary();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 5:
            if (field.Type == TType.I32) {
              ContentLength = iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 6:
            if (field.Type == TType.I64) {
              Created = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 7:
            if (field.Type == TType.I64) {
              Updated = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 8:
            if (field.Type == TType.I64) {
              Deleted = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 9:
            if (field.Type == TType.Bool) {
              Active = iprot.ReadBool();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 10:
            if (field.Type == TType.I32) {
              UpdateSequenceNum = iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 11:
            if (field.Type == TType.String) {
              NotebookGuid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 12:
            if (field.Type == TType.List) {
              {
                TagGuids = new List<string>();
                TList _list8 = iprot.ReadListBegin();
                for( int _i9 = 0; _i9 < _list8.Count; ++_i9)
                {
                  string _elem10 = null;
                  _elem10 = iprot.ReadString();
                  TagGuids.Add(_elem10);
                }
                iprot.ReadListEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 13:
            if (field.Type == TType.List) {
              {
                Resources = new List<Resource>();
                TList _list11 = iprot.ReadListBegin();
                for( int _i12 = 0; _i12 < _list11.Count; ++_i12)
                {
                  Resource _elem13 = new Resource();
                  _elem13 = new Resource();
                  _elem13.Read(iprot);
                  Resources.Add(_elem13);
                }
                iprot.ReadListEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 14:
            if (field.Type == TType.Struct) {
              Attributes = new NoteAttributes();
              Attributes.Read(iprot);
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 15:
            if (field.Type == TType.List) {
              {
                TagNames = new List<string>();
                TList _list14 = iprot.ReadListBegin();
                for( int _i15 = 0; _i15 < _list14.Count; ++_i15)
                {
                  string _elem16 = null;
                  _elem16 = iprot.ReadString();
                  TagNames.Add(_elem16);
                }
                iprot.ReadListEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }

    public void Write(TProtocol oprot) {
      TStruct struc = new TStruct("Note");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (Guid != null && __isset.guid) {
        field.Name = "guid";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Guid);
        oprot.WriteFieldEnd();
      }
      if (Title != null && __isset.title) {
        field.Name = "title";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Title);
        oprot.WriteFieldEnd();
      }
      if (Content != null && __isset.content) {
        field.Name = "content";
        field.Type = TType.String;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Content);
        oprot.WriteFieldEnd();
      }
      if (ContentHash != null && __isset.contentHash) {
        field.Name = "contentHash";
        field.Type = TType.String;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteBinary(ContentHash);
        oprot.WriteFieldEnd();
      }
      if (__isset.contentLength) {
        field.Name = "contentLength";
        field.Type = TType.I32;
        field.ID = 5;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32(ContentLength);
        oprot.WriteFieldEnd();
      }
      if (__isset.created) {
        field.Name = "created";
        field.Type = TType.I64;
        field.ID = 6;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(Created);
        oprot.WriteFieldEnd();
      }
      if (__isset.updated) {
        field.Name = "updated";
        field.Type = TType.I64;
        field.ID = 7;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(Updated);
        oprot.WriteFieldEnd();
      }
      if (__isset.deleted) {
        field.Name = "deleted";
        field.Type = TType.I64;
        field.ID = 8;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(Deleted);
        oprot.WriteFieldEnd();
      }
      if (__isset.active) {
        field.Name = "active";
        field.Type = TType.Bool;
        field.ID = 9;
        oprot.WriteFieldBegin(field);
        oprot.WriteBool(Active);
        oprot.WriteFieldEnd();
      }
      if (__isset.updateSequenceNum) {
        field.Name = "updateSequenceNum";
        field.Type = TType.I32;
        field.ID = 10;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32(UpdateSequenceNum);
        oprot.WriteFieldEnd();
      }
      if (NotebookGuid != null && __isset.notebookGuid) {
        field.Name = "notebookGuid";
        field.Type = TType.String;
        field.ID = 11;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(NotebookGuid);
        oprot.WriteFieldEnd();
      }
      if (TagGuids != null && __isset.tagGuids) {
        field.Name = "tagGuids";
        field.Type = TType.List;
        field.ID = 12;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteListBegin(new TList(TType.String, TagGuids.Count));
          foreach (string _iter17 in TagGuids)
          {
            oprot.WriteString(_iter17);
            oprot.WriteListEnd();
          }
        }
        oprot.WriteFieldEnd();
      }
      if (Resources != null && __isset.resources) {
        field.Name = "resources";
        field.Type = TType.List;
        field.ID = 13;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteListBegin(new TList(TType.Struct, Resources.Count));
          foreach (Resource _iter18 in Resources)
          {
            _iter18.Write(oprot);
            oprot.WriteListEnd();
          }
        }
        oprot.WriteFieldEnd();
      }
      if (Attributes != null && __isset.attributes) {
        field.Name = "attributes";
        field.Type = TType.Struct;
        field.ID = 14;
        oprot.WriteFieldBegin(field);
        Attributes.Write(oprot);
        oprot.WriteFieldEnd();
      }
      if (TagNames != null && __isset.tagNames) {
        field.Name = "tagNames";
        field.Type = TType.List;
        field.ID = 15;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteListBegin(new TList(TType.String, TagNames.Count));
          foreach (string _iter19 in TagNames)
          {
            oprot.WriteString(_iter19);
            oprot.WriteListEnd();
          }
        }
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }

    public override string ToString() {
      StringBuilder sb = new StringBuilder("Note(");
      sb.Append("Guid: ");
      sb.Append(Guid);
      sb.Append(",Title: ");
      sb.Append(Title);
      sb.Append(",Content: ");
      sb.Append(Content);
      sb.Append(",ContentHash: ");
      sb.Append(ContentHash);
      sb.Append(",ContentLength: ");
      sb.Append(ContentLength);
      sb.Append(",Created: ");
      sb.Append(Created);
      sb.Append(",Updated: ");
      sb.Append(Updated);
      sb.Append(",Deleted: ");
      sb.Append(Deleted);
      sb.Append(",Active: ");
      sb.Append(Active);
      sb.Append(",UpdateSequenceNum: ");
      sb.Append(UpdateSequenceNum);
      sb.Append(",NotebookGuid: ");
      sb.Append(NotebookGuid);
      sb.Append(",TagGuids: ");
      sb.Append(TagGuids);
      sb.Append(",Resources: ");
      sb.Append(Resources);
      sb.Append(",Attributes: ");
      sb.Append(Attributes== null ? "<null>" : Attributes.ToString());
      sb.Append(",TagNames: ");
      sb.Append(TagNames);
      sb.Append(")");
      return sb.ToString();
    }

  }

}
