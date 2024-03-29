/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
#ifndef Limits_CONSTANTS_H
#define Limits_CONSTANTS_H

#include "Limits_types.h"

namespace evernote { namespace limits {

class LimitsConstants {
 public:
  LimitsConstants();

  int32_t EDAM_ATTRIBUTE_LEN_MIN;
  int32_t EDAM_ATTRIBUTE_LEN_MAX;
  std::string EDAM_ATTRIBUTE_REGEX;
  int32_t EDAM_ATTRIBUTE_LIST_MAX;
  int32_t EDAM_GUID_LEN_MIN;
  int32_t EDAM_GUID_LEN_MAX;
  std::string EDAM_GUID_REGEX;
  int32_t EDAM_EMAIL_LEN_MIN;
  int32_t EDAM_EMAIL_LEN_MAX;
  std::string EDAM_EMAIL_LOCAL_REGEX;
  std::string EDAM_EMAIL_DOMAIN_REGEX;
  std::string EDAM_EMAIL_REGEX;
  int32_t EDAM_TIMEZONE_LEN_MIN;
  int32_t EDAM_TIMEZONE_LEN_MAX;
  std::string EDAM_TIMEZONE_REGEX;
  int32_t EDAM_MIME_LEN_MIN;
  int32_t EDAM_MIME_LEN_MAX;
  std::string EDAM_MIME_REGEX;
  std::string EDAM_MIME_TYPE_GIF;
  std::string EDAM_MIME_TYPE_JPEG;
  std::string EDAM_MIME_TYPE_PNG;
  std::string EDAM_MIME_TYPE_WAV;
  std::string EDAM_MIME_TYPE_MP3;
  std::string EDAM_MIME_TYPE_AMR;
  std::string EDAM_MIME_TYPE_INK;
  std::string EDAM_MIME_TYPE_PDF;
  std::string EDAM_MIME_TYPE_DEFAULT;
  std::set<std::string>  EDAM_MIME_TYPES;
  std::string EDAM_COMMERCE_SERVICE_GOOGLE;
  std::string EDAM_COMMERCE_SERVICE_PAYPAL;
  std::string EDAM_COMMERCE_SERVICE_GIFT;
  std::string EDAM_COMMERCE_SERVICE_TRIALPAY;
  std::string EDAM_COMMERCE_SERVICE_TRIAL;
  std::string EDAM_COMMERCE_SERVICE_GROUP;
  std::string EDAM_COMMERCE_SERVICE_CYBERSOURCE;
  std::string EDAM_COMMERCE_DEFAULT_CURRENCY_COUNTRY_CODE;
  int32_t EDAM_SEARCH_QUERY_LEN_MIN;
  int32_t EDAM_SEARCH_QUERY_LEN_MAX;
  std::string EDAM_SEARCH_QUERY_REGEX;
  int32_t EDAM_HASH_LEN;
  int32_t EDAM_USER_USERNAME_LEN_MIN;
  int32_t EDAM_USER_USERNAME_LEN_MAX;
  std::string EDAM_USER_USERNAME_REGEX;
  int32_t EDAM_USER_NAME_LEN_MIN;
  int32_t EDAM_USER_NAME_LEN_MAX;
  std::string EDAM_USER_NAME_REGEX;
  int32_t EDAM_TAG_NAME_LEN_MIN;
  int32_t EDAM_TAG_NAME_LEN_MAX;
  std::string EDAM_TAG_NAME_REGEX;
  int32_t EDAM_NOTE_TITLE_LEN_MIN;
  int32_t EDAM_NOTE_TITLE_LEN_MAX;
  std::string EDAM_NOTE_TITLE_REGEX;
  int32_t EDAM_NOTE_CONTENT_LEN_MIN;
  int32_t EDAM_NOTE_CONTENT_LEN_MAX;
  int32_t EDAM_NOTEBOOK_NAME_LEN_MIN;
  int32_t EDAM_NOTEBOOK_NAME_LEN_MAX;
  std::string EDAM_NOTEBOOK_NAME_REGEX;
  int32_t EDAM_NOTEBOOK_STACK_LEN_MIN;
  int32_t EDAM_NOTEBOOK_STACK_LEN_MAX;
  std::string EDAM_NOTEBOOK_STACK_REGEX;
  int32_t EDAM_PUBLISHING_URI_LEN_MIN;
  int32_t EDAM_PUBLISHING_URI_LEN_MAX;
  std::string EDAM_PUBLISHING_URI_REGEX;
  std::set<std::string>  EDAM_PUBLISHING_URI_PROHIBITED;
  int32_t EDAM_PUBLISHING_DESCRIPTION_LEN_MIN;
  int32_t EDAM_PUBLISHING_DESCRIPTION_LEN_MAX;
  std::string EDAM_PUBLISHING_DESCRIPTION_REGEX;
  int32_t EDAM_SAVED_SEARCH_NAME_LEN_MIN;
  int32_t EDAM_SAVED_SEARCH_NAME_LEN_MAX;
  std::string EDAM_SAVED_SEARCH_NAME_REGEX;
  int32_t EDAM_USER_PASSWORD_LEN_MIN;
  int32_t EDAM_USER_PASSWORD_LEN_MAX;
  std::string EDAM_USER_PASSWORD_REGEX;
  int32_t EDAM_NOTE_TAGS_MAX;
  int32_t EDAM_NOTE_RESOURCES_MAX;
  int32_t EDAM_USER_TAGS_MAX;
  int32_t EDAM_USER_SAVED_SEARCHES_MAX;
  int32_t EDAM_USER_NOTES_MAX;
  int32_t EDAM_USER_NOTEBOOKS_MAX;
  int32_t EDAM_USER_RECENT_MAILED_ADDRESSES_MAX;
  int32_t EDAM_USER_MAIL_LIMIT_DAILY_FREE;
  int32_t EDAM_USER_MAIL_LIMIT_DAILY_PREMIUM;
  int64_t EDAM_USER_UPLOAD_LIMIT_FREE;
  int64_t EDAM_USER_UPLOAD_LIMIT_PREMIUM;
  int32_t EDAM_NOTE_SIZE_MAX_FREE;
  int32_t EDAM_NOTE_SIZE_MAX_PREMIUM;
  int32_t EDAM_RESOURCE_SIZE_MAX_FREE;
  int32_t EDAM_RESOURCE_SIZE_MAX_PREMIUM;
  int32_t EDAM_USER_LINKED_NOTEBOOK_MAX;
  int32_t EDAM_NOTEBOOK_SHARED_NOTEBOOK_MAX;
};

extern const LimitsConstants g_Limits_constants;

}} // namespace

#endif
