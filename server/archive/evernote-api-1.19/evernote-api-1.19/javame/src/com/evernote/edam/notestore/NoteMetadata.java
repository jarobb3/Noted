/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.notestore;

import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

/**
 * * This structure is used in the set of results returned by the
 * * findNotesMetadata function.  It represents the high-level information about
 * * a single Note, without some of the larger deep structure.  This allows
 * * for the information about a list of Notes to be returned relatively quickly
 * * with less marshalling and data transfer to remote clients.
 * * Most fields in this structure are identical to the corresponding field in
 * * the Note structure, with the exception of:
 * *
 * * <dl>
 *  * <dt>largestResourceMime</dt>
 * *   <dd>If set, then this will contain the MIME type of the largest Resource
 * *   (in bytes) within the Note.  This may be useful, for example, to choose
 * *   an appropriate icon or thumbnail to represent the Note.
 * *   </dd>
 * *
 * * <dt>largestResourceSize</dt>
 * *  <dd>If set, this will contain the size of the largest Resource file, in
 * *  bytes, within the Note.  This may be useful, for example, to decide whether
 * *  to ask the server for a thumbnail to represent the Note.
 * *  </dd>
 * * </dl>
 */
public class NoteMetadata implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("NoteMetadata");

  private static final TField GUID_FIELD_DESC = new TField("guid", TType.STRING, (short)1);
  private static final TField TITLE_FIELD_DESC = new TField("title", TType.STRING, (short)2);
  private static final TField CONTENT_LENGTH_FIELD_DESC = new TField("contentLength", TType.I32, (short)5);
  private static final TField CREATED_FIELD_DESC = new TField("created", TType.I64, (short)6);
  private static final TField UPDATED_FIELD_DESC = new TField("updated", TType.I64, (short)7);
  private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", TType.I32, (short)10);
  private static final TField NOTEBOOK_GUID_FIELD_DESC = new TField("notebookGuid", TType.STRING, (short)11);
  private static final TField TAG_GUIDS_FIELD_DESC = new TField("tagGuids", TType.LIST, (short)12);
  private static final TField ATTRIBUTES_FIELD_DESC = new TField("attributes", TType.STRUCT, (short)14);
  private static final TField LARGEST_RESOURCE_MIME_FIELD_DESC = new TField("largestResourceMime", TType.STRING, (short)20);
  private static final TField LARGEST_RESOURCE_SIZE_FIELD_DESC = new TField("largestResourceSize", TType.I32, (short)21);

  private String guid;
  private String title;
  private int contentLength;
  private long created;
  private long updated;
  private int updateSequenceNum;
  private String notebookGuid;
  private Vector tagGuids;
  private com.evernote.edam.type.NoteAttributes attributes;
  private String largestResourceMime;
  private int largestResourceSize;

  // isset id assignments
  private static final int __CONTENTLENGTH_ISSET_ID = 0;
  private static final int __CREATED_ISSET_ID = 1;
  private static final int __UPDATED_ISSET_ID = 2;
  private static final int __UPDATESEQUENCENUM_ISSET_ID = 3;
  private static final int __LARGESTRESOURCESIZE_ISSET_ID = 4;
  private boolean[] __isset_vector = new boolean[5];

  public NoteMetadata() {
  }

  public NoteMetadata(
    String guid)
  {
    this();
    this.guid = guid;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public NoteMetadata(NoteMetadata other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    if (other.isSetGuid()) {
      this.guid = other.guid;
    }
    if (other.isSetTitle()) {
      this.title = other.title;
    }
    this.contentLength = other.contentLength;
    this.created = other.created;
    this.updated = other.updated;
    this.updateSequenceNum = other.updateSequenceNum;
    if (other.isSetNotebookGuid()) {
      this.notebookGuid = other.notebookGuid;
    }
    if (other.isSetTagGuids()) {
      Vector __this__tagGuids = new Vector();
      for (Enumeration other_enum = other.tagGuids.elements(); other_enum.hasMoreElements(); ) {
        String other_element = (String)other_enum.nextElement();
        __this__tagGuids.addElement(other_element);
      }
      this.tagGuids = __this__tagGuids;
    }
    if (other.isSetAttributes()) {
      this.attributes = new com.evernote.edam.type.NoteAttributes(other.attributes);
    }
    if (other.isSetLargestResourceMime()) {
      this.largestResourceMime = other.largestResourceMime;
    }
    this.largestResourceSize = other.largestResourceSize;
  }

  public NoteMetadata deepCopy() {
    return new NoteMetadata(this);
  }

  public NoteMetadata clone() {
    return new NoteMetadata(this);
  }

  public void clear() {
    this.guid = null;
    this.title = null;
    setContentLengthIsSet(false);
    this.contentLength = 0;
    setCreatedIsSet(false);
    this.created = 0;
    setUpdatedIsSet(false);
    this.updated = 0;
    setUpdateSequenceNumIsSet(false);
    this.updateSequenceNum = 0;
    this.notebookGuid = null;
    this.tagGuids = null;
    this.attributes = null;
    this.largestResourceMime = null;
    setLargestResourceSizeIsSet(false);
    this.largestResourceSize = 0;
  }

  public String getGuid() {
    return this.guid;
  }

  public void setGuid(String guid) {
    this.guid = guid;
  }

  public void unsetGuid() {
    this.guid = null;
  }

  /** Returns true if field guid is set (has been asigned a value) and false otherwise */
  public boolean isSetGuid() {
    return this.guid != null;
  }

  public void setGuidIsSet(boolean value) {
    if (!value) {
      this.guid = null;
    }
  }

  public String getTitle() {
    return this.title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public void unsetTitle() {
    this.title = null;
  }

  /** Returns true if field title is set (has been asigned a value) and false otherwise */
  public boolean isSetTitle() {
    return this.title != null;
  }

  public void setTitleIsSet(boolean value) {
    if (!value) {
      this.title = null;
    }
  }

  public int getContentLength() {
    return this.contentLength;
  }

  public void setContentLength(int contentLength) {
    this.contentLength = contentLength;
    setContentLengthIsSet(true);
  }

  public void unsetContentLength() {
    __isset_vector[__CONTENTLENGTH_ISSET_ID] = false;
  }

  /** Returns true if field contentLength is set (has been asigned a value) and false otherwise */
  public boolean isSetContentLength() {
    return __isset_vector[__CONTENTLENGTH_ISSET_ID];
  }

  public void setContentLengthIsSet(boolean value) {
    __isset_vector[__CONTENTLENGTH_ISSET_ID] = value;
  }

  public long getCreated() {
    return this.created;
  }

  public void setCreated(long created) {
    this.created = created;
    setCreatedIsSet(true);
  }

  public void unsetCreated() {
    __isset_vector[__CREATED_ISSET_ID] = false;
  }

  /** Returns true if field created is set (has been asigned a value) and false otherwise */
  public boolean isSetCreated() {
    return __isset_vector[__CREATED_ISSET_ID];
  }

  public void setCreatedIsSet(boolean value) {
    __isset_vector[__CREATED_ISSET_ID] = value;
  }

  public long getUpdated() {
    return this.updated;
  }

  public void setUpdated(long updated) {
    this.updated = updated;
    setUpdatedIsSet(true);
  }

  public void unsetUpdated() {
    __isset_vector[__UPDATED_ISSET_ID] = false;
  }

  /** Returns true if field updated is set (has been asigned a value) and false otherwise */
  public boolean isSetUpdated() {
    return __isset_vector[__UPDATED_ISSET_ID];
  }

  public void setUpdatedIsSet(boolean value) {
    __isset_vector[__UPDATED_ISSET_ID] = value;
  }

  public int getUpdateSequenceNum() {
    return this.updateSequenceNum;
  }

  public void setUpdateSequenceNum(int updateSequenceNum) {
    this.updateSequenceNum = updateSequenceNum;
    setUpdateSequenceNumIsSet(true);
  }

  public void unsetUpdateSequenceNum() {
    __isset_vector[__UPDATESEQUENCENUM_ISSET_ID] = false;
  }

  /** Returns true if field updateSequenceNum is set (has been asigned a value) and false otherwise */
  public boolean isSetUpdateSequenceNum() {
    return __isset_vector[__UPDATESEQUENCENUM_ISSET_ID];
  }

  public void setUpdateSequenceNumIsSet(boolean value) {
    __isset_vector[__UPDATESEQUENCENUM_ISSET_ID] = value;
  }

  public String getNotebookGuid() {
    return this.notebookGuid;
  }

  public void setNotebookGuid(String notebookGuid) {
    this.notebookGuid = notebookGuid;
  }

  public void unsetNotebookGuid() {
    this.notebookGuid = null;
  }

  /** Returns true if field notebookGuid is set (has been asigned a value) and false otherwise */
  public boolean isSetNotebookGuid() {
    return this.notebookGuid != null;
  }

  public void setNotebookGuidIsSet(boolean value) {
    if (!value) {
      this.notebookGuid = null;
    }
  }

  public int getTagGuidsSize() {
    return (this.tagGuids == null) ? 0 : this.tagGuids.size();
  }

  public Enumeration getTagGuidsEnumeration() {
    return (this.tagGuids == null) ? null : this.tagGuids.elements();
  }

  public void addToTagGuids(String elem) {
    if (this.tagGuids == null) {
      this.tagGuids = new Vector();
    }
    this.tagGuids.addElement(elem);
  }

  public Vector getTagGuids() {
    return this.tagGuids;
  }

  public void setTagGuids(Vector tagGuids) {
    this.tagGuids = tagGuids;
  }

  public void unsetTagGuids() {
    this.tagGuids = null;
  }

  /** Returns true if field tagGuids is set (has been asigned a value) and false otherwise */
  public boolean isSetTagGuids() {
    return this.tagGuids != null;
  }

  public void setTagGuidsIsSet(boolean value) {
    if (!value) {
      this.tagGuids = null;
    }
  }

  public com.evernote.edam.type.NoteAttributes getAttributes() {
    return this.attributes;
  }

  public void setAttributes(com.evernote.edam.type.NoteAttributes attributes) {
    this.attributes = attributes;
  }

  public void unsetAttributes() {
    this.attributes = null;
  }

  /** Returns true if field attributes is set (has been asigned a value) and false otherwise */
  public boolean isSetAttributes() {
    return this.attributes != null;
  }

  public void setAttributesIsSet(boolean value) {
    if (!value) {
      this.attributes = null;
    }
  }

  public String getLargestResourceMime() {
    return this.largestResourceMime;
  }

  public void setLargestResourceMime(String largestResourceMime) {
    this.largestResourceMime = largestResourceMime;
  }

  public void unsetLargestResourceMime() {
    this.largestResourceMime = null;
  }

  /** Returns true if field largestResourceMime is set (has been asigned a value) and false otherwise */
  public boolean isSetLargestResourceMime() {
    return this.largestResourceMime != null;
  }

  public void setLargestResourceMimeIsSet(boolean value) {
    if (!value) {
      this.largestResourceMime = null;
    }
  }

  public int getLargestResourceSize() {
    return this.largestResourceSize;
  }

  public void setLargestResourceSize(int largestResourceSize) {
    this.largestResourceSize = largestResourceSize;
    setLargestResourceSizeIsSet(true);
  }

  public void unsetLargestResourceSize() {
    __isset_vector[__LARGESTRESOURCESIZE_ISSET_ID] = false;
  }

  /** Returns true if field largestResourceSize is set (has been asigned a value) and false otherwise */
  public boolean isSetLargestResourceSize() {
    return __isset_vector[__LARGESTRESOURCESIZE_ISSET_ID];
  }

  public void setLargestResourceSizeIsSet(boolean value) {
    __isset_vector[__LARGESTRESOURCESIZE_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof NoteMetadata)
      return this.equals((NoteMetadata)that);
    return false;
  }

  public boolean equals(NoteMetadata that) {
    if (that == null)
      return false;

    boolean this_present_guid = true && this.isSetGuid();
    boolean that_present_guid = true && that.isSetGuid();
    if (this_present_guid || that_present_guid) {
      if (!(this_present_guid && that_present_guid))
        return false;
      if (!this.guid.equals(that.guid))
        return false;
    }

    boolean this_present_title = true && this.isSetTitle();
    boolean that_present_title = true && that.isSetTitle();
    if (this_present_title || that_present_title) {
      if (!(this_present_title && that_present_title))
        return false;
      if (!this.title.equals(that.title))
        return false;
    }

    boolean this_present_contentLength = true && this.isSetContentLength();
    boolean that_present_contentLength = true && that.isSetContentLength();
    if (this_present_contentLength || that_present_contentLength) {
      if (!(this_present_contentLength && that_present_contentLength))
        return false;
      if (this.contentLength != that.contentLength)
        return false;
    }

    boolean this_present_created = true && this.isSetCreated();
    boolean that_present_created = true && that.isSetCreated();
    if (this_present_created || that_present_created) {
      if (!(this_present_created && that_present_created))
        return false;
      if (this.created != that.created)
        return false;
    }

    boolean this_present_updated = true && this.isSetUpdated();
    boolean that_present_updated = true && that.isSetUpdated();
    if (this_present_updated || that_present_updated) {
      if (!(this_present_updated && that_present_updated))
        return false;
      if (this.updated != that.updated)
        return false;
    }

    boolean this_present_updateSequenceNum = true && this.isSetUpdateSequenceNum();
    boolean that_present_updateSequenceNum = true && that.isSetUpdateSequenceNum();
    if (this_present_updateSequenceNum || that_present_updateSequenceNum) {
      if (!(this_present_updateSequenceNum && that_present_updateSequenceNum))
        return false;
      if (this.updateSequenceNum != that.updateSequenceNum)
        return false;
    }

    boolean this_present_notebookGuid = true && this.isSetNotebookGuid();
    boolean that_present_notebookGuid = true && that.isSetNotebookGuid();
    if (this_present_notebookGuid || that_present_notebookGuid) {
      if (!(this_present_notebookGuid && that_present_notebookGuid))
        return false;
      if (!this.notebookGuid.equals(that.notebookGuid))
        return false;
    }

    boolean this_present_tagGuids = true && this.isSetTagGuids();
    boolean that_present_tagGuids = true && that.isSetTagGuids();
    if (this_present_tagGuids || that_present_tagGuids) {
      if (!(this_present_tagGuids && that_present_tagGuids))
        return false;
      if (!this.tagGuids.equals(that.tagGuids))
        return false;
    }

    boolean this_present_attributes = true && this.isSetAttributes();
    boolean that_present_attributes = true && that.isSetAttributes();
    if (this_present_attributes || that_present_attributes) {
      if (!(this_present_attributes && that_present_attributes))
        return false;
      if (!this.attributes.equals(that.attributes))
        return false;
    }

    boolean this_present_largestResourceMime = true && this.isSetLargestResourceMime();
    boolean that_present_largestResourceMime = true && that.isSetLargestResourceMime();
    if (this_present_largestResourceMime || that_present_largestResourceMime) {
      if (!(this_present_largestResourceMime && that_present_largestResourceMime))
        return false;
      if (!this.largestResourceMime.equals(that.largestResourceMime))
        return false;
    }

    boolean this_present_largestResourceSize = true && this.isSetLargestResourceSize();
    boolean that_present_largestResourceSize = true && that.isSetLargestResourceSize();
    if (this_present_largestResourceSize || that_present_largestResourceSize) {
      if (!(this_present_largestResourceSize && that_present_largestResourceSize))
        return false;
      if (this.largestResourceSize != that.largestResourceSize)
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    NoteMetadata other = (NoteMetadata)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetGuid(), other.isSetGuid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetGuid()) {
      lastComparison = TBaseHelper.compareTo(this.guid, other.guid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetTitle(), other.isSetTitle());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetTitle()) {
      lastComparison = TBaseHelper.compareTo(this.title, other.title);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetContentLength(), other.isSetContentLength());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetContentLength()) {
      lastComparison = TBaseHelper.compareTo(this.contentLength, other.contentLength);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreated(), other.isSetCreated());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreated()) {
      lastComparison = TBaseHelper.compareTo(this.created, other.created);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUpdated(), other.isSetUpdated());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdated()) {
      lastComparison = TBaseHelper.compareTo(this.updated, other.updated);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUpdateSequenceNum(), other.isSetUpdateSequenceNum());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdateSequenceNum()) {
      lastComparison = TBaseHelper.compareTo(this.updateSequenceNum, other.updateSequenceNum);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetNotebookGuid(), other.isSetNotebookGuid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetNotebookGuid()) {
      lastComparison = TBaseHelper.compareTo(this.notebookGuid, other.notebookGuid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetTagGuids(), other.isSetTagGuids());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetTagGuids()) {
      lastComparison = TBaseHelper.compareTo(this.tagGuids, other.tagGuids);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetAttributes(), other.isSetAttributes());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAttributes()) {
      lastComparison = this.attributes.compareTo(other.attributes);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetLargestResourceMime(), other.isSetLargestResourceMime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetLargestResourceMime()) {
      lastComparison = TBaseHelper.compareTo(this.largestResourceMime, other.largestResourceMime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetLargestResourceSize(), other.isSetLargestResourceSize());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetLargestResourceSize()) {
      lastComparison = TBaseHelper.compareTo(this.largestResourceSize, other.largestResourceSize);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 1: // GUID
          if (field.type == TType.STRING) {
            this.guid = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // TITLE
          if (field.type == TType.STRING) {
            this.title = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 5: // CONTENT_LENGTH
          if (field.type == TType.I32) {
            this.contentLength = iprot.readI32();
            setContentLengthIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 6: // CREATED
          if (field.type == TType.I64) {
            this.created = iprot.readI64();
            setCreatedIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 7: // UPDATED
          if (field.type == TType.I64) {
            this.updated = iprot.readI64();
            setUpdatedIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 10: // UPDATE_SEQUENCE_NUM
          if (field.type == TType.I32) {
            this.updateSequenceNum = iprot.readI32();
            setUpdateSequenceNumIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 11: // NOTEBOOK_GUID
          if (field.type == TType.STRING) {
            this.notebookGuid = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 12: // TAG_GUIDS
          if (field.type == TType.LIST) {
            {
              TList _list60 = iprot.readListBegin();
              this.tagGuids = new Vector(_list60.size);
              for (int _i61 = 0; _i61 < _list60.size; ++_i61)
              {
                String _elem62;
                _elem62 = iprot.readString();
                this.tagGuids.addElement(_elem62);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 14: // ATTRIBUTES
          if (field.type == TType.STRUCT) {
            this.attributes = new com.evernote.edam.type.NoteAttributes();
            this.attributes.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 20: // LARGEST_RESOURCE_MIME
          if (field.type == TType.STRING) {
            this.largestResourceMime = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 21: // LARGEST_RESOURCE_SIZE
          if (field.type == TType.I32) {
            this.largestResourceSize = iprot.readI32();
            setLargestResourceSizeIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.guid != null) {
      oprot.writeFieldBegin(GUID_FIELD_DESC);
      oprot.writeString(this.guid);
      oprot.writeFieldEnd();
    }
    if (this.title != null) {
      if (isSetTitle()) {
        oprot.writeFieldBegin(TITLE_FIELD_DESC);
        oprot.writeString(this.title);
        oprot.writeFieldEnd();
      }
    }
    if (isSetContentLength()) {
      oprot.writeFieldBegin(CONTENT_LENGTH_FIELD_DESC);
      oprot.writeI32(this.contentLength);
      oprot.writeFieldEnd();
    }
    if (isSetCreated()) {
      oprot.writeFieldBegin(CREATED_FIELD_DESC);
      oprot.writeI64(this.created);
      oprot.writeFieldEnd();
    }
    if (isSetUpdated()) {
      oprot.writeFieldBegin(UPDATED_FIELD_DESC);
      oprot.writeI64(this.updated);
      oprot.writeFieldEnd();
    }
    if (isSetUpdateSequenceNum()) {
      oprot.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
      oprot.writeI32(this.updateSequenceNum);
      oprot.writeFieldEnd();
    }
    if (this.notebookGuid != null) {
      if (isSetNotebookGuid()) {
        oprot.writeFieldBegin(NOTEBOOK_GUID_FIELD_DESC);
        oprot.writeString(this.notebookGuid);
        oprot.writeFieldEnd();
      }
    }
    if (this.tagGuids != null) {
      if (isSetTagGuids()) {
        oprot.writeFieldBegin(TAG_GUIDS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRING, this.tagGuids.size()));
          for (Enumeration _iter63_enum = this.tagGuids.elements(); _iter63_enum.hasMoreElements(); )           {
            String _iter63 = (String)_iter63_enum.nextElement();
            oprot.writeString(_iter63);
          }
          oprot.writeListEnd();
        }
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
    if (this.largestResourceMime != null) {
      if (isSetLargestResourceMime()) {
        oprot.writeFieldBegin(LARGEST_RESOURCE_MIME_FIELD_DESC);
        oprot.writeString(this.largestResourceMime);
        oprot.writeFieldEnd();
      }
    }
    if (isSetLargestResourceSize()) {
      oprot.writeFieldBegin(LARGEST_RESOURCE_SIZE_FIELD_DESC);
      oprot.writeI32(this.largestResourceSize);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("NoteMetadata(");
    boolean first = true;

    sb.append("guid:");
    if (this.guid == null) {
      sb.append("null");
    } else {
      sb.append(this.guid);
    }
    first = false;
    if (isSetTitle()) {
      if (!first) sb.append(", ");
      sb.append("title:");
      if (this.title == null) {
        sb.append("null");
      } else {
        sb.append(this.title);
      }
      first = false;
    }
    if (isSetContentLength()) {
      if (!first) sb.append(", ");
      sb.append("contentLength:");
      sb.append(this.contentLength);
      first = false;
    }
    if (isSetCreated()) {
      if (!first) sb.append(", ");
      sb.append("created:");
      sb.append(this.created);
      first = false;
    }
    if (isSetUpdated()) {
      if (!first) sb.append(", ");
      sb.append("updated:");
      sb.append(this.updated);
      first = false;
    }
    if (isSetUpdateSequenceNum()) {
      if (!first) sb.append(", ");
      sb.append("updateSequenceNum:");
      sb.append(this.updateSequenceNum);
      first = false;
    }
    if (isSetNotebookGuid()) {
      if (!first) sb.append(", ");
      sb.append("notebookGuid:");
      if (this.notebookGuid == null) {
        sb.append("null");
      } else {
        sb.append(this.notebookGuid);
      }
      first = false;
    }
    if (isSetTagGuids()) {
      if (!first) sb.append(", ");
      sb.append("tagGuids:");
      if (this.tagGuids == null) {
        sb.append("null");
      } else {
        sb.append(this.tagGuids);
      }
      first = false;
    }
    if (isSetAttributes()) {
      if (!first) sb.append(", ");
      sb.append("attributes:");
      if (this.attributes == null) {
        sb.append("null");
      } else {
        sb.append(this.attributes);
      }
      first = false;
    }
    if (isSetLargestResourceMime()) {
      if (!first) sb.append(", ");
      sb.append("largestResourceMime:");
      if (this.largestResourceMime == null) {
        sb.append("null");
      } else {
        sb.append(this.largestResourceMime);
      }
      first = false;
    }
    if (isSetLargestResourceSize()) {
      if (!first) sb.append(", ");
      sb.append("largestResourceSize:");
      sb.append(this.largestResourceSize);
      first = false;
    }
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    if (!isSetGuid()) {
      throw new TProtocolException("Required field 'guid' is unset! Struct:" + toString());
    }

  }

}

