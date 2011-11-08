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
 *  This structure encapsulates the information about the state of the
 *  user's account for the purpose of "state based" synchronization.
 * <dl>
 *  <dt>currentTime</dt>
 *    <dd>
 *    The server's current date and time.
 *    </dd>
 * 
 *  <dt>fullSyncBefore</dt>
 *    <dd>
 *    The cutoff date and time for client caches to be
 *    updated via incremental synchronization.  Any clients that were last
 *    synched with the server before this date/time must do a full resync of all
 *    objects.  This cutoff point will change over time as archival data is
 *    deleted or special circumstances on the service require resynchronization.
 *    </dd>
 * 
 *  <dt>updateCount</dt>
 *    <dd>
 *    Indicates the total number of transactions that have
 *    been committed within the account.  This reflects (for example) the
 *    number of discrete additions or modifications that have been made to
 *    the data in this account (tags, notes, resources, etc.).
 *    This number is the "high water mark" for Update Sequence Numbers (USN)
 *    within the account.
 *    </dd>
 * 
 *  <dt>uploaded</dt>
 *    <dd>
 *    The total number of bytes that have been uploaded to
 *    this account in the current monthly period.  This can be compared against
 *    Accounting.uploadLimit (from the UserStore) to determine how close the user
 *    is to their monthly upload limit.
 *    This value may not be present if the SyncState has been retrieved by
 *    a caller that only has read access to the account.
 *    </dd>
 *  </dl>
 */
public class SyncState implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SyncState");

  private static final TField CURRENT_TIME_FIELD_DESC = new TField("currentTime", TType.I64, (short)1);
  private static final TField FULL_SYNC_BEFORE_FIELD_DESC = new TField("fullSyncBefore", TType.I64, (short)2);
  private static final TField UPDATE_COUNT_FIELD_DESC = new TField("updateCount", TType.I32, (short)3);
  private static final TField UPLOADED_FIELD_DESC = new TField("uploaded", TType.I64, (short)4);

  private long currentTime;
  private long fullSyncBefore;
  private int updateCount;
  private long uploaded;

  // isset id assignments
  private static final int __CURRENTTIME_ISSET_ID = 0;
  private static final int __FULLSYNCBEFORE_ISSET_ID = 1;
  private static final int __UPDATECOUNT_ISSET_ID = 2;
  private static final int __UPLOADED_ISSET_ID = 3;
  private boolean[] __isset_vector = new boolean[4];

  public SyncState() {
  }

  public SyncState(
    long currentTime,
    long fullSyncBefore,
    int updateCount)
  {
    this();
    this.currentTime = currentTime;
    setCurrentTimeIsSet(true);
    this.fullSyncBefore = fullSyncBefore;
    setFullSyncBeforeIsSet(true);
    this.updateCount = updateCount;
    setUpdateCountIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SyncState(SyncState other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.currentTime = other.currentTime;
    this.fullSyncBefore = other.fullSyncBefore;
    this.updateCount = other.updateCount;
    this.uploaded = other.uploaded;
  }

  public SyncState deepCopy() {
    return new SyncState(this);
  }

  public SyncState clone() {
    return new SyncState(this);
  }

  public void clear() {
    setCurrentTimeIsSet(false);
    this.currentTime = 0;
    setFullSyncBeforeIsSet(false);
    this.fullSyncBefore = 0;
    setUpdateCountIsSet(false);
    this.updateCount = 0;
    setUploadedIsSet(false);
    this.uploaded = 0;
  }

  public long getCurrentTime() {
    return this.currentTime;
  }

  public void setCurrentTime(long currentTime) {
    this.currentTime = currentTime;
    setCurrentTimeIsSet(true);
  }

  public void unsetCurrentTime() {
    __isset_vector[__CURRENTTIME_ISSET_ID] = false;
  }

  /** Returns true if field currentTime is set (has been asigned a value) and false otherwise */
  public boolean isSetCurrentTime() {
    return __isset_vector[__CURRENTTIME_ISSET_ID];
  }

  public void setCurrentTimeIsSet(boolean value) {
    __isset_vector[__CURRENTTIME_ISSET_ID] = value;
  }

  public long getFullSyncBefore() {
    return this.fullSyncBefore;
  }

  public void setFullSyncBefore(long fullSyncBefore) {
    this.fullSyncBefore = fullSyncBefore;
    setFullSyncBeforeIsSet(true);
  }

  public void unsetFullSyncBefore() {
    __isset_vector[__FULLSYNCBEFORE_ISSET_ID] = false;
  }

  /** Returns true if field fullSyncBefore is set (has been asigned a value) and false otherwise */
  public boolean isSetFullSyncBefore() {
    return __isset_vector[__FULLSYNCBEFORE_ISSET_ID];
  }

  public void setFullSyncBeforeIsSet(boolean value) {
    __isset_vector[__FULLSYNCBEFORE_ISSET_ID] = value;
  }

  public int getUpdateCount() {
    return this.updateCount;
  }

  public void setUpdateCount(int updateCount) {
    this.updateCount = updateCount;
    setUpdateCountIsSet(true);
  }

  public void unsetUpdateCount() {
    __isset_vector[__UPDATECOUNT_ISSET_ID] = false;
  }

  /** Returns true if field updateCount is set (has been asigned a value) and false otherwise */
  public boolean isSetUpdateCount() {
    return __isset_vector[__UPDATECOUNT_ISSET_ID];
  }

  public void setUpdateCountIsSet(boolean value) {
    __isset_vector[__UPDATECOUNT_ISSET_ID] = value;
  }

  public long getUploaded() {
    return this.uploaded;
  }

  public void setUploaded(long uploaded) {
    this.uploaded = uploaded;
    setUploadedIsSet(true);
  }

  public void unsetUploaded() {
    __isset_vector[__UPLOADED_ISSET_ID] = false;
  }

  /** Returns true if field uploaded is set (has been asigned a value) and false otherwise */
  public boolean isSetUploaded() {
    return __isset_vector[__UPLOADED_ISSET_ID];
  }

  public void setUploadedIsSet(boolean value) {
    __isset_vector[__UPLOADED_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SyncState)
      return this.equals((SyncState)that);
    return false;
  }

  public boolean equals(SyncState that) {
    if (that == null)
      return false;

    boolean this_present_currentTime = true;
    boolean that_present_currentTime = true;
    if (this_present_currentTime || that_present_currentTime) {
      if (!(this_present_currentTime && that_present_currentTime))
        return false;
      if (this.currentTime != that.currentTime)
        return false;
    }

    boolean this_present_fullSyncBefore = true;
    boolean that_present_fullSyncBefore = true;
    if (this_present_fullSyncBefore || that_present_fullSyncBefore) {
      if (!(this_present_fullSyncBefore && that_present_fullSyncBefore))
        return false;
      if (this.fullSyncBefore != that.fullSyncBefore)
        return false;
    }

    boolean this_present_updateCount = true;
    boolean that_present_updateCount = true;
    if (this_present_updateCount || that_present_updateCount) {
      if (!(this_present_updateCount && that_present_updateCount))
        return false;
      if (this.updateCount != that.updateCount)
        return false;
    }

    boolean this_present_uploaded = true && this.isSetUploaded();
    boolean that_present_uploaded = true && that.isSetUploaded();
    if (this_present_uploaded || that_present_uploaded) {
      if (!(this_present_uploaded && that_present_uploaded))
        return false;
      if (this.uploaded != that.uploaded)
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

    SyncState other = (SyncState)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetCurrentTime(), other.isSetCurrentTime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCurrentTime()) {
      lastComparison = TBaseHelper.compareTo(this.currentTime, other.currentTime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetFullSyncBefore(), other.isSetFullSyncBefore());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetFullSyncBefore()) {
      lastComparison = TBaseHelper.compareTo(this.fullSyncBefore, other.fullSyncBefore);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUpdateCount(), other.isSetUpdateCount());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdateCount()) {
      lastComparison = TBaseHelper.compareTo(this.updateCount, other.updateCount);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUploaded(), other.isSetUploaded());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUploaded()) {
      lastComparison = TBaseHelper.compareTo(this.uploaded, other.uploaded);
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
        case 1: // CURRENT_TIME
          if (field.type == TType.I64) {
            this.currentTime = iprot.readI64();
            setCurrentTimeIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // FULL_SYNC_BEFORE
          if (field.type == TType.I64) {
            this.fullSyncBefore = iprot.readI64();
            setFullSyncBeforeIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // UPDATE_COUNT
          if (field.type == TType.I32) {
            this.updateCount = iprot.readI32();
            setUpdateCountIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // UPLOADED
          if (field.type == TType.I64) {
            this.uploaded = iprot.readI64();
            setUploadedIsSet(true);
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
    oprot.writeFieldBegin(CURRENT_TIME_FIELD_DESC);
    oprot.writeI64(this.currentTime);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(FULL_SYNC_BEFORE_FIELD_DESC);
    oprot.writeI64(this.fullSyncBefore);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(UPDATE_COUNT_FIELD_DESC);
    oprot.writeI32(this.updateCount);
    oprot.writeFieldEnd();
    if (isSetUploaded()) {
      oprot.writeFieldBegin(UPLOADED_FIELD_DESC);
      oprot.writeI64(this.uploaded);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SyncState(");
    boolean first = true;

    sb.append("currentTime:");
    sb.append(this.currentTime);
    first = false;
    if (!first) sb.append(", ");
    sb.append("fullSyncBefore:");
    sb.append(this.fullSyncBefore);
    first = false;
    if (!first) sb.append(", ");
    sb.append("updateCount:");
    sb.append(this.updateCount);
    first = false;
    if (isSetUploaded()) {
      if (!first) sb.append(", ");
      sb.append("uploaded:");
      sb.append(this.uploaded);
      first = false;
    }
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    if (!isSetCurrentTime()) {
      throw new TProtocolException("Required field 'currentTime' is unset! Struct:" + toString());
    }

    if (!isSetFullSyncBefore()) {
      throw new TProtocolException("Required field 'fullSyncBefore' is unset! Struct:" + toString());
    }

    if (!isSetUpdateCount()) {
      throw new TProtocolException("Required field 'updateCount' is unset! Struct:" + toString());
    }

  }

}

