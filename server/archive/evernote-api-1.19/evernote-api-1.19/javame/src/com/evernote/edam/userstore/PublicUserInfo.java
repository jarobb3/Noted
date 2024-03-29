/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.userstore;

import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

/**
 *  This structure is used to provide publicly-available user information
 *  about a particular account.
 * <dl>
 *  <dt>userId:</dt>
 *    <dd>
 *    The unique numeric user identifier for the user account.
 *    </dd>
 *  <dt>shardId:</dt>
 *    <dd>
 *    The name of the virtual server that manages the state of
 *    this user. This value is used internally to determine which system should
 *    service requests about this user's data.  It is also used to construct
 *    the appropriate URL to make requests from the NoteStore.
 *    </dd>
 *  <dt>privilege:</dt>
 *    <dd>
 *    The privilege level of the account, to determine whether
 *    this is a Premium or Free account.
 *    </dd>
 *  </dl>
 */
public class PublicUserInfo implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("PublicUserInfo");

  private static final TField USER_ID_FIELD_DESC = new TField("userId", TType.I32, (short)1);
  private static final TField SHARD_ID_FIELD_DESC = new TField("shardId", TType.STRING, (short)2);
  private static final TField PRIVILEGE_FIELD_DESC = new TField("privilege", TType.I32, (short)3);
  private static final TField USERNAME_FIELD_DESC = new TField("username", TType.STRING, (short)4);

  private int userId;
  private String shardId;
  private com.evernote.edam.type.PrivilegeLevel privilege;
  private String username;

  // isset id assignments
  private static final int __USERID_ISSET_ID = 0;
  private boolean[] __isset_vector = new boolean[1];

  public PublicUserInfo() {
  }

  public PublicUserInfo(
    int userId,
    String shardId)
  {
    this();
    this.userId = userId;
    setUserIdIsSet(true);
    this.shardId = shardId;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public PublicUserInfo(PublicUserInfo other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.userId = other.userId;
    if (other.isSetShardId()) {
      this.shardId = other.shardId;
    }
    if (other.isSetPrivilege()) {
      this.privilege = other.privilege;
    }
    if (other.isSetUsername()) {
      this.username = other.username;
    }
  }

  public PublicUserInfo deepCopy() {
    return new PublicUserInfo(this);
  }

  public PublicUserInfo clone() {
    return new PublicUserInfo(this);
  }

  public void clear() {
    setUserIdIsSet(false);
    this.userId = 0;
    this.shardId = null;
    this.privilege = null;
    this.username = null;
  }

  public int getUserId() {
    return this.userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
    setUserIdIsSet(true);
  }

  public void unsetUserId() {
    __isset_vector[__USERID_ISSET_ID] = false;
  }

  /** Returns true if field userId is set (has been asigned a value) and false otherwise */
  public boolean isSetUserId() {
    return __isset_vector[__USERID_ISSET_ID];
  }

  public void setUserIdIsSet(boolean value) {
    __isset_vector[__USERID_ISSET_ID] = value;
  }

  public String getShardId() {
    return this.shardId;
  }

  public void setShardId(String shardId) {
    this.shardId = shardId;
  }

  public void unsetShardId() {
    this.shardId = null;
  }

  /** Returns true if field shardId is set (has been asigned a value) and false otherwise */
  public boolean isSetShardId() {
    return this.shardId != null;
  }

  public void setShardIdIsSet(boolean value) {
    if (!value) {
      this.shardId = null;
    }
  }

  /**
   * 
   * @see com.evernote.edam.type.PrivilegeLevel
   */
  public com.evernote.edam.type.PrivilegeLevel getPrivilege() {
    return this.privilege;
  }

  /**
   * 
   * @see com.evernote.edam.type.PrivilegeLevel
   */
  public void setPrivilege(com.evernote.edam.type.PrivilegeLevel privilege) {
    this.privilege = privilege;
  }

  public void unsetPrivilege() {
    this.privilege = null;
  }

  /** Returns true if field privilege is set (has been asigned a value) and false otherwise */
  public boolean isSetPrivilege() {
    return this.privilege != null;
  }

  public void setPrivilegeIsSet(boolean value) {
    if (!value) {
      this.privilege = null;
    }
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public void unsetUsername() {
    this.username = null;
  }

  /** Returns true if field username is set (has been asigned a value) and false otherwise */
  public boolean isSetUsername() {
    return this.username != null;
  }

  public void setUsernameIsSet(boolean value) {
    if (!value) {
      this.username = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof PublicUserInfo)
      return this.equals((PublicUserInfo)that);
    return false;
  }

  public boolean equals(PublicUserInfo that) {
    if (that == null)
      return false;

    boolean this_present_userId = true;
    boolean that_present_userId = true;
    if (this_present_userId || that_present_userId) {
      if (!(this_present_userId && that_present_userId))
        return false;
      if (this.userId != that.userId)
        return false;
    }

    boolean this_present_shardId = true && this.isSetShardId();
    boolean that_present_shardId = true && that.isSetShardId();
    if (this_present_shardId || that_present_shardId) {
      if (!(this_present_shardId && that_present_shardId))
        return false;
      if (!this.shardId.equals(that.shardId))
        return false;
    }

    boolean this_present_privilege = true && this.isSetPrivilege();
    boolean that_present_privilege = true && that.isSetPrivilege();
    if (this_present_privilege || that_present_privilege) {
      if (!(this_present_privilege && that_present_privilege))
        return false;
      if (!this.privilege.equals(that.privilege))
        return false;
    }

    boolean this_present_username = true && this.isSetUsername();
    boolean that_present_username = true && that.isSetUsername();
    if (this_present_username || that_present_username) {
      if (!(this_present_username && that_present_username))
        return false;
      if (!this.username.equals(that.username))
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

    PublicUserInfo other = (PublicUserInfo)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetUserId(), other.isSetUserId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUserId()) {
      lastComparison = TBaseHelper.compareTo(this.userId, other.userId);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetShardId(), other.isSetShardId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetShardId()) {
      lastComparison = TBaseHelper.compareTo(this.shardId, other.shardId);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetPrivilege(), other.isSetPrivilege());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetPrivilege()) {
      lastComparison = TBaseHelper.compareTo(this.privilege, other.privilege);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUsername(), other.isSetUsername());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUsername()) {
      lastComparison = TBaseHelper.compareTo(this.username, other.username);
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
        case 1: // USER_ID
          if (field.type == TType.I32) {
            this.userId = iprot.readI32();
            setUserIdIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // SHARD_ID
          if (field.type == TType.STRING) {
            this.shardId = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // PRIVILEGE
          if (field.type == TType.I32) {
            this.privilege = com.evernote.edam.type.PrivilegeLevel.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // USERNAME
          if (field.type == TType.STRING) {
            this.username = iprot.readString();
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
    oprot.writeFieldBegin(USER_ID_FIELD_DESC);
    oprot.writeI32(this.userId);
    oprot.writeFieldEnd();
    if (this.shardId != null) {
      oprot.writeFieldBegin(SHARD_ID_FIELD_DESC);
      oprot.writeString(this.shardId);
      oprot.writeFieldEnd();
    }
    if (this.privilege != null) {
      if (isSetPrivilege()) {
        oprot.writeFieldBegin(PRIVILEGE_FIELD_DESC);
        oprot.writeI32(this.privilege.getValue());
        oprot.writeFieldEnd();
      }
    }
    if (this.username != null) {
      if (isSetUsername()) {
        oprot.writeFieldBegin(USERNAME_FIELD_DESC);
        oprot.writeString(this.username);
        oprot.writeFieldEnd();
      }
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("PublicUserInfo(");
    boolean first = true;

    sb.append("userId:");
    sb.append(this.userId);
    first = false;
    if (!first) sb.append(", ");
    sb.append("shardId:");
    if (this.shardId == null) {
      sb.append("null");
    } else {
      sb.append(this.shardId);
    }
    first = false;
    if (isSetPrivilege()) {
      if (!first) sb.append(", ");
      sb.append("privilege:");
      if (this.privilege == null) {
        sb.append("null");
      } else {
        sb.append(this.privilege);
      }
      first = false;
    }
    if (isSetUsername()) {
      if (!first) sb.append(", ");
      sb.append("username:");
      if (this.username == null) {
        sb.append("null");
      } else {
        sb.append(this.username);
      }
      first = false;
    }
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    if (!isSetUserId()) {
      throw new TProtocolException("Required field 'userId' is unset! Struct:" + toString());
    }

    if (!isSetShardId()) {
      throw new TProtocolException("Required field 'shardId' is unset! Struct:" + toString());
    }

  }

}

