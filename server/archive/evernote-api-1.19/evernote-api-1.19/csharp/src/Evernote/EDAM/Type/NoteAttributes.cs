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
  public partial class NoteAttributes : TBase
  {
    private long _subjectDate;
    private double _latitude;
    private double _longitude;
    private double _altitude;
    private string _author;
    private string _source;
    private string _sourceURL;
    private string _sourceApplication;
    private long _shareDate;

    public long SubjectDate
    {
      get
      {
        return _subjectDate;
      }
      set
      {
        __isset.subjectDate = true;
        this._subjectDate = value;
      }
    }

    public double Latitude
    {
      get
      {
        return _latitude;
      }
      set
      {
        __isset.latitude = true;
        this._latitude = value;
      }
    }

    public double Longitude
    {
      get
      {
        return _longitude;
      }
      set
      {
        __isset.longitude = true;
        this._longitude = value;
      }
    }

    public double Altitude
    {
      get
      {
        return _altitude;
      }
      set
      {
        __isset.altitude = true;
        this._altitude = value;
      }
    }

    public string Author
    {
      get
      {
        return _author;
      }
      set
      {
        __isset.author = true;
        this._author = value;
      }
    }

    public string Source
    {
      get
      {
        return _source;
      }
      set
      {
        __isset.source = true;
        this._source = value;
      }
    }

    public string SourceURL
    {
      get
      {
        return _sourceURL;
      }
      set
      {
        __isset.sourceURL = true;
        this._sourceURL = value;
      }
    }

    public string SourceApplication
    {
      get
      {
        return _sourceApplication;
      }
      set
      {
        __isset.sourceApplication = true;
        this._sourceApplication = value;
      }
    }

    public long ShareDate
    {
      get
      {
        return _shareDate;
      }
      set
      {
        __isset.shareDate = true;
        this._shareDate = value;
      }
    }


    public Isset __isset;
    #if !SILVERLIGHT
    [Serializable]
    #endif
    public struct Isset {
      public bool subjectDate;
      public bool latitude;
      public bool longitude;
      public bool altitude;
      public bool author;
      public bool source;
      public bool sourceURL;
      public bool sourceApplication;
      public bool shareDate;
    }

    public NoteAttributes() {
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
            if (field.Type == TType.I64) {
              SubjectDate = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 10:
            if (field.Type == TType.Double) {
              Latitude = iprot.ReadDouble();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 11:
            if (field.Type == TType.Double) {
              Longitude = iprot.ReadDouble();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 12:
            if (field.Type == TType.Double) {
              Altitude = iprot.ReadDouble();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 13:
            if (field.Type == TType.String) {
              Author = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 14:
            if (field.Type == TType.String) {
              Source = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 15:
            if (field.Type == TType.String) {
              SourceURL = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 16:
            if (field.Type == TType.String) {
              SourceApplication = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 17:
            if (field.Type == TType.I64) {
              ShareDate = iprot.ReadI64();
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
      TStruct struc = new TStruct("NoteAttributes");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (__isset.subjectDate) {
        field.Name = "subjectDate";
        field.Type = TType.I64;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(SubjectDate);
        oprot.WriteFieldEnd();
      }
      if (__isset.latitude) {
        field.Name = "latitude";
        field.Type = TType.Double;
        field.ID = 10;
        oprot.WriteFieldBegin(field);
        oprot.WriteDouble(Latitude);
        oprot.WriteFieldEnd();
      }
      if (__isset.longitude) {
        field.Name = "longitude";
        field.Type = TType.Double;
        field.ID = 11;
        oprot.WriteFieldBegin(field);
        oprot.WriteDouble(Longitude);
        oprot.WriteFieldEnd();
      }
      if (__isset.altitude) {
        field.Name = "altitude";
        field.Type = TType.Double;
        field.ID = 12;
        oprot.WriteFieldBegin(field);
        oprot.WriteDouble(Altitude);
        oprot.WriteFieldEnd();
      }
      if (Author != null && __isset.author) {
        field.Name = "author";
        field.Type = TType.String;
        field.ID = 13;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Author);
        oprot.WriteFieldEnd();
      }
      if (Source != null && __isset.source) {
        field.Name = "source";
        field.Type = TType.String;
        field.ID = 14;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Source);
        oprot.WriteFieldEnd();
      }
      if (SourceURL != null && __isset.sourceURL) {
        field.Name = "sourceURL";
        field.Type = TType.String;
        field.ID = 15;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(SourceURL);
        oprot.WriteFieldEnd();
      }
      if (SourceApplication != null && __isset.sourceApplication) {
        field.Name = "sourceApplication";
        field.Type = TType.String;
        field.ID = 16;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(SourceApplication);
        oprot.WriteFieldEnd();
      }
      if (__isset.shareDate) {
        field.Name = "shareDate";
        field.Type = TType.I64;
        field.ID = 17;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(ShareDate);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }

    public override string ToString() {
      StringBuilder sb = new StringBuilder("NoteAttributes(");
      sb.Append("SubjectDate: ");
      sb.Append(SubjectDate);
      sb.Append(",Latitude: ");
      sb.Append(Latitude);
      sb.Append(",Longitude: ");
      sb.Append(Longitude);
      sb.Append(",Altitude: ");
      sb.Append(Altitude);
      sb.Append(",Author: ");
      sb.Append(Author);
      sb.Append(",Source: ");
      sb.Append(Source);
      sb.Append(",SourceURL: ");
      sb.Append(SourceURL);
      sb.Append(",SourceApplication: ");
      sb.Append(SourceApplication);
      sb.Append(",ShareDate: ");
      sb.Append(ShareDate);
      sb.Append(")");
      return sb.ToString();
    }

  }

}