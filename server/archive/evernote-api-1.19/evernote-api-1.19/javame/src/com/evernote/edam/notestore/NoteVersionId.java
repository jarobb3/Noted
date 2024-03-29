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
 * Identfying information about previous versions of a note that are backed up
 * within Evernote's servers.  Used in the return value of the listNoteVersions
 * call.
 * 
 * <dl>
 *  <dt>updateSequenceNum</dt>
 *  <dd>
 *    The update sequence number for the Note when it last had this content.
 *    This serves to uniquely identify each version of the note, since USN
 *    values are unique within an account for each update.
 *  </dd>
 *  <dt>updated</dt>
 *  <dd>
 *    The 'updated' time that was set on the Note when it had this version
 *    of the content.  This is the user-modifiable modification time on the
 *    note, so it's not reliable for guaranteeing the order of various
 *    versions.  (E.g. if someone modifies the note, then changes this time
 *    manually into the past and then updates the note again.)
 *  </dd>
 *  <dt>saved</dt>
 *  <dd>
 *    A timestamp that holds the date and time when this version of the note
 *    was backed up by Evernote's servers.  This
 *  </dd>
 *  <dt>title</dt>
 *  <dd>
 *    The title of the note when this particular verison was saved.  (The
 *    current title of the note may differ from this value.)
 *  </dd>
 * </dl>
 */
public class NoteVersionId implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("NoteVersionId");

  private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", TType.I32, (short)1);
  private static final TField UPDATED_FIELD_DESC = new TField("updated", TType.I64, (short)2);
  private static final TField SAVED_FIELD_DESC = new TField("saved", TType.I64, (short)3);
  private static final TField TITLE_FIELD_DESC = new TField("title", TType.STRING, (short)4);

  private int updateSequenceNum;
  private long updated;
  private long saved;
  private String title;

  // isset id assignments
  private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
  private static final int __UPDATED_ISSET_ID = 1;
  private static final int __SAVED_ISSET_ID = 2;
  private boolean[] __isset_vector = new boolean[3];

  public NoteVersionId() {
  }

  public NoteVersionId(
    int updateSequenceNum,
    long updated,
    long saved,
    String title)
  {
    this();
    this.updateSequenceNum = updateSequenceNum;
    setUpdateSequenceNumIsSet(true);
    this.updated = updated;
    setUpdatedIsSet(true);
    this.saved = saved;
    setSavedIsSet(true);
    this.title = title;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public NoteVersionId(NoteVersionId other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.updateSequenceNum = other.updateSequenceNum;
    this.updated = other.updated;
    this.saved = other.saved;
    if (other.isSetTitle()) {
      this.title = other.title;
    }
  }

  public NoteVersionId deepCopy() {
    return new NoteVersionId(this);
  }

  public NoteVersionId clone() {
    return new NoteVersionId(this);
  }

  public void clear() {
    setUpdateSequenceNumIsSet(false);
    this.updateSequenceNum = 0;
    setUpdatedIsSet(false);
    this.updated = 0;
    setSavedIsSet(false);
    this.saved = 0;
    this.title = null;
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

  public long getSaved() {
    return this.saved;
  }

  public void setSaved(long saved) {
    this.saved = saved;
    setSavedIsSet(true);
  }

  public void unsetSaved() {
    __isset_vector[__SAVED_ISSET_ID] = false;
  }

  /** Returns true if field saved is set (has been asigned a value) and false otherwise */
  public boolean isSetSaved() {
    return __isset_vector[__SAVED_ISSET_ID];
  }

  public void setSavedIsSet(boolean value) {
    __isset_vector[__SAVED_ISSET_ID] = value;
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

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof NoteVersionId)
      return this.equals((NoteVersionId)that);
    return false;
  }

  public boolean equals(NoteVersionId that) {
    if (that == null)
      return false;

    boolean this_present_updateSequenceNum = true;
    boolean that_present_updateSequenceNum = true;
    if (this_present_updateSequenceNum || that_present_updateSequenceNum) {
      if (!(this_present_updateSequenceNum && that_present_updateSequenceNum))
        return false;
      if (this.updateSequenceNum != that.updateSequenceNum)
        return false;
    }

    boolean this_present_updated = true;
    boolean that_present_updated = true;
    if (this_present_updated || that_present_updated) {
      if (!(this_present_updated && that_present_updated))
        return false;
      if (this.updated != that.updated)
        return false;
    }

    boolean this_present_saved = true;
    boolean that_present_saved = true;
    if (this_present_saved || that_present_saved) {
      if (!(this_present_saved && that_present_saved))
        return false;
      if (this.saved != that.saved)
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

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    NoteVersionId other = (NoteVersionId)otherObject;    int lastComparison = 0;

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
    lastComparison = TBaseHelper.compareTo(isSetSaved(), other.isSetSaved());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSaved()) {
      lastComparison = TBaseHelper.compareTo(this.saved, other.saved);
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
        case 1: // UPDATE_SEQUENCE_NUM
          if (field.type == TType.I32) {
            this.updateSequenceNum = iprot.readI32();
            setUpdateSequenceNumIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // UPDATED
          if (field.type == TType.I64) {
            this.updated = iprot.readI64();
            setUpdatedIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // SAVED
          if (field.type == TType.I64) {
            this.saved = iprot.readI64();
            setSavedIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // TITLE
          if (field.type == TType.STRING) {
            this.title = iprot.readString();
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
    oprot.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
    oprot.writeI32(this.updateSequenceNum);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(UPDATED_FIELD_DESC);
    oprot.writeI64(this.updated);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(SAVED_FIELD_DESC);
    oprot.writeI64(this.saved);
    oprot.writeFieldEnd();
    if (this.title != null) {
      oprot.writeFieldBegin(TITLE_FIELD_DESC);
      oprot.writeString(this.title);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("NoteVersionId(");
    boolean first = true;

    sb.append("updateSequenceNum:");
    sb.append(this.updateSequenceNum);
    first = false;
    if (!first) sb.append(", ");
    sb.append("updated:");
    sb.append(this.updated);
    first = false;
    if (!first) sb.append(", ");
    sb.append("saved:");
    sb.append(this.saved);
    first = false;
    if (!first) sb.append(", ");
    sb.append("title:");
    if (this.title == null) {
      sb.append("null");
    } else {
      sb.append(this.title);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    if (!isSetUpdateSequenceNum()) {
      throw new TProtocolException("Required field 'updateSequenceNum' is unset! Struct:" + toString());
    }

    if (!isSetUpdated()) {
      throw new TProtocolException("Required field 'updated' is unset! Struct:" + toString());
    }

    if (!isSetSaved()) {
      throw new TProtocolException("Required field 'saved' is unset! Struct:" + toString());
    }

    if (!isSetTitle()) {
      throw new TProtocolException("Required field 'title' is unset! Struct:" + toString());
    }

  }

}

