/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
#include "UserStore_types.h"

namespace evernote { namespace edam {

const char* PublicUserInfo::ascii_fingerprint = "724DFF4FFFB8A87B3EDA5AEF78D412EB";
const uint8_t PublicUserInfo::binary_fingerprint[16] = {0x72,0x4D,0xFF,0x4F,0xFF,0xB8,0xA8,0x7B,0x3E,0xDA,0x5A,0xEF,0x78,0xD4,0x12,0xEB};

uint32_t PublicUserInfo::read(::apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  ::apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using ::apache::thrift::protocol::TProtocolException;

  bool isset_userId = false;
  bool isset_shardId = false;

  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == ::apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 1:
        if (ftype == ::apache::thrift::protocol::T_I32) {
          xfer += iprot->readI32(this->userId);
          isset_userId = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 2:
        if (ftype == ::apache::thrift::protocol::T_STRING) {
          xfer += iprot->readString(this->shardId);
          isset_shardId = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 3:
        if (ftype == ::apache::thrift::protocol::T_I32) {
          int32_t ecast0;
          xfer += iprot->readI32(ecast0);
          this->privilege = (evernote::edam::PrivilegeLevel)ecast0;
          this->__isset.privilege = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 4:
        if (ftype == ::apache::thrift::protocol::T_STRING) {
          xfer += iprot->readString(this->username);
          this->__isset.username = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  if (!isset_userId)
    throw TProtocolException(TProtocolException::INVALID_DATA);
  if (!isset_shardId)
    throw TProtocolException(TProtocolException::INVALID_DATA);
  return xfer;
}

uint32_t PublicUserInfo::write(::apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("PublicUserInfo");
  xfer += oprot->writeFieldBegin("userId", ::apache::thrift::protocol::T_I32, 1);
  xfer += oprot->writeI32(this->userId);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldBegin("shardId", ::apache::thrift::protocol::T_STRING, 2);
  xfer += oprot->writeString(this->shardId);
  xfer += oprot->writeFieldEnd();
  if (this->__isset.privilege) {
    xfer += oprot->writeFieldBegin("privilege", ::apache::thrift::protocol::T_I32, 3);
    xfer += oprot->writeI32((int32_t)this->privilege);
    xfer += oprot->writeFieldEnd();
  }
  if (this->__isset.username) {
    xfer += oprot->writeFieldBegin("username", ::apache::thrift::protocol::T_STRING, 4);
    xfer += oprot->writeString(this->username);
    xfer += oprot->writeFieldEnd();
  }
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

const char* AuthenticationResult::ascii_fingerprint = "1B3F4F8424E32630F5A30B0B5798E8DF";
const uint8_t AuthenticationResult::binary_fingerprint[16] = {0x1B,0x3F,0x4F,0x84,0x24,0xE3,0x26,0x30,0xF5,0xA3,0x0B,0x0B,0x57,0x98,0xE8,0xDF};

uint32_t AuthenticationResult::read(::apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  ::apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using ::apache::thrift::protocol::TProtocolException;

  bool isset_currentTime = false;
  bool isset_authenticationToken = false;
  bool isset_expiration = false;

  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == ::apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 1:
        if (ftype == ::apache::thrift::protocol::T_I64) {
          xfer += iprot->readI64(this->currentTime);
          isset_currentTime = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 2:
        if (ftype == ::apache::thrift::protocol::T_STRING) {
          xfer += iprot->readString(this->authenticationToken);
          isset_authenticationToken = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 3:
        if (ftype == ::apache::thrift::protocol::T_I64) {
          xfer += iprot->readI64(this->expiration);
          isset_expiration = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 4:
        if (ftype == ::apache::thrift::protocol::T_STRUCT) {
          xfer += this->user.read(iprot);
          this->__isset.user = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      case 5:
        if (ftype == ::apache::thrift::protocol::T_STRUCT) {
          xfer += this->publicUserInfo.read(iprot);
          this->__isset.publicUserInfo = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  if (!isset_currentTime)
    throw TProtocolException(TProtocolException::INVALID_DATA);
  if (!isset_authenticationToken)
    throw TProtocolException(TProtocolException::INVALID_DATA);
  if (!isset_expiration)
    throw TProtocolException(TProtocolException::INVALID_DATA);
  return xfer;
}

uint32_t AuthenticationResult::write(::apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("AuthenticationResult");
  xfer += oprot->writeFieldBegin("currentTime", ::apache::thrift::protocol::T_I64, 1);
  xfer += oprot->writeI64(this->currentTime);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldBegin("authenticationToken", ::apache::thrift::protocol::T_STRING, 2);
  xfer += oprot->writeString(this->authenticationToken);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldBegin("expiration", ::apache::thrift::protocol::T_I64, 3);
  xfer += oprot->writeI64(this->expiration);
  xfer += oprot->writeFieldEnd();
  if (this->__isset.user) {
    xfer += oprot->writeFieldBegin("user", ::apache::thrift::protocol::T_STRUCT, 4);
    xfer += this->user.write(oprot);
    xfer += oprot->writeFieldEnd();
  }
  if (this->__isset.publicUserInfo) {
    xfer += oprot->writeFieldBegin("publicUserInfo", ::apache::thrift::protocol::T_STRUCT, 5);
    xfer += this->publicUserInfo.write(oprot);
    xfer += oprot->writeFieldEnd();
  }
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

}} // namespace
