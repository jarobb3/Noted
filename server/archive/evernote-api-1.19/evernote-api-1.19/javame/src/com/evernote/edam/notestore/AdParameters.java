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
 * Parameters that will be given by a client to the service when it requests
 * a set of advertisements to display.  If any of these values are omitted,
 * the service will use default values.
 * 
 * <dl>
 *  <dt>clientLanguage</dt>
 *    <dd>
 *      The ISO 639-1 language code for the primary language for the client.
 *      If omitted, English will be assumed ('en').
 *    </dd>
 * 
 *  <dt>impressions</dt>
 *    <dd>
 *      A list of the impression counts and total display time for the ads
 *      that were displayed in the last day.
 *    </dd>
 * 
 *  <dt>supportHtml</dt>
 *    <dd>
 *      If true, the client requesting the ads supports ads specified via
 *      general HTML (with rich media, Javascript, etc.).
 *    </dd>
 * 
 *  <dt>clientProperties</dt>
 *    <dd>
 *      If provided, this may contain a set of key/value pairs that identify
 *      the characteristics of a particular client that may be used to help
 *      determine appropriate ads for that client.  These tuples may be used
 *      either to reduce or increase the likelihood that each ad will be
 *      returned.
 *    </dd>
 * </dl>
 */
public class AdParameters implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("AdParameters");

  private static final TField CLIENT_LANGUAGE_FIELD_DESC = new TField("clientLanguage", TType.STRING, (short)2);
  private static final TField IMPRESSIONS_FIELD_DESC = new TField("impressions", TType.LIST, (short)4);
  private static final TField SUPPORT_HTML_FIELD_DESC = new TField("supportHtml", TType.BOOL, (short)5);
  private static final TField CLIENT_PROPERTIES_FIELD_DESC = new TField("clientProperties", TType.MAP, (short)6);

  private String clientLanguage;
  private Vector impressions;
  private boolean supportHtml;
  private Hashtable clientProperties;

  // isset id assignments
  private static final int __SUPPORTHTML_ISSET_ID = 0;
  private boolean[] __isset_vector = new boolean[1];

  public AdParameters() {
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public AdParameters(AdParameters other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    if (other.isSetClientLanguage()) {
      this.clientLanguage = other.clientLanguage;
    }
    if (other.isSetImpressions()) {
      Vector __this__impressions = new Vector();
      for (Enumeration other_enum = other.impressions.elements(); other_enum.hasMoreElements(); ) {
        AdImpressions other_element = (AdImpressions)other_enum.nextElement();
        __this__impressions.addElement(new AdImpressions(other_element));
      }
      this.impressions = __this__impressions;
    }
    this.supportHtml = other.supportHtml;
    if (other.isSetClientProperties()) {
      Hashtable __this__clientProperties = new Hashtable();
      for (Enumeration other_enum = other.clientProperties.keys(); other_enum.hasMoreElements(); ) {

        String other_element_key = (String)other_enum.nextElement();
        String other_element_value = (String)other.clientProperties.get(other_element_key);

        String __this__clientProperties_copy_key = other_element_key;

        String __this__clientProperties_copy_value = other_element_value;

        __this__clientProperties.put(__this__clientProperties_copy_key, __this__clientProperties_copy_value);
      }
      this.clientProperties = __this__clientProperties;
    }
  }

  public AdParameters deepCopy() {
    return new AdParameters(this);
  }

  public AdParameters clone() {
    return new AdParameters(this);
  }

  public void clear() {
    this.clientLanguage = null;
    this.impressions = null;
    setSupportHtmlIsSet(false);
    this.supportHtml = false;
    this.clientProperties = null;
  }

  public String getClientLanguage() {
    return this.clientLanguage;
  }

  public void setClientLanguage(String clientLanguage) {
    this.clientLanguage = clientLanguage;
  }

  public void unsetClientLanguage() {
    this.clientLanguage = null;
  }

  /** Returns true if field clientLanguage is set (has been asigned a value) and false otherwise */
  public boolean isSetClientLanguage() {
    return this.clientLanguage != null;
  }

  public void setClientLanguageIsSet(boolean value) {
    if (!value) {
      this.clientLanguage = null;
    }
  }

  public int getImpressionsSize() {
    return (this.impressions == null) ? 0 : this.impressions.size();
  }

  public Enumeration getImpressionsEnumeration() {
    return (this.impressions == null) ? null : this.impressions.elements();
  }

  public void addToImpressions(AdImpressions elem) {
    if (this.impressions == null) {
      this.impressions = new Vector();
    }
    this.impressions.addElement(elem);
  }

  public Vector getImpressions() {
    return this.impressions;
  }

  public void setImpressions(Vector impressions) {
    this.impressions = impressions;
  }

  public void unsetImpressions() {
    this.impressions = null;
  }

  /** Returns true if field impressions is set (has been asigned a value) and false otherwise */
  public boolean isSetImpressions() {
    return this.impressions != null;
  }

  public void setImpressionsIsSet(boolean value) {
    if (!value) {
      this.impressions = null;
    }
  }

  public boolean isSupportHtml() {
    return this.supportHtml;
  }

  public void setSupportHtml(boolean supportHtml) {
    this.supportHtml = supportHtml;
    setSupportHtmlIsSet(true);
  }

  public void unsetSupportHtml() {
    __isset_vector[__SUPPORTHTML_ISSET_ID] = false;
  }

  /** Returns true if field supportHtml is set (has been asigned a value) and false otherwise */
  public boolean isSetSupportHtml() {
    return __isset_vector[__SUPPORTHTML_ISSET_ID];
  }

  public void setSupportHtmlIsSet(boolean value) {
    __isset_vector[__SUPPORTHTML_ISSET_ID] = value;
  }

  public int getClientPropertiesSize() {
    return (this.clientProperties == null) ? 0 : this.clientProperties.size();
  }

  public void putToClientProperties(String key, String val) {
    if (this.clientProperties == null) {
      this.clientProperties = new Hashtable();
    }
    this.clientProperties.put(key, val);
  }

  public Hashtable getClientProperties() {
    return this.clientProperties;
  }

  public void setClientProperties(Hashtable clientProperties) {
    this.clientProperties = clientProperties;
  }

  public void unsetClientProperties() {
    this.clientProperties = null;
  }

  /** Returns true if field clientProperties is set (has been asigned a value) and false otherwise */
  public boolean isSetClientProperties() {
    return this.clientProperties != null;
  }

  public void setClientPropertiesIsSet(boolean value) {
    if (!value) {
      this.clientProperties = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof AdParameters)
      return this.equals((AdParameters)that);
    return false;
  }

  public boolean equals(AdParameters that) {
    if (that == null)
      return false;

    boolean this_present_clientLanguage = true && this.isSetClientLanguage();
    boolean that_present_clientLanguage = true && that.isSetClientLanguage();
    if (this_present_clientLanguage || that_present_clientLanguage) {
      if (!(this_present_clientLanguage && that_present_clientLanguage))
        return false;
      if (!this.clientLanguage.equals(that.clientLanguage))
        return false;
    }

    boolean this_present_impressions = true && this.isSetImpressions();
    boolean that_present_impressions = true && that.isSetImpressions();
    if (this_present_impressions || that_present_impressions) {
      if (!(this_present_impressions && that_present_impressions))
        return false;
      if (!this.impressions.equals(that.impressions))
        return false;
    }

    boolean this_present_supportHtml = true && this.isSetSupportHtml();
    boolean that_present_supportHtml = true && that.isSetSupportHtml();
    if (this_present_supportHtml || that_present_supportHtml) {
      if (!(this_present_supportHtml && that_present_supportHtml))
        return false;
      if (this.supportHtml != that.supportHtml)
        return false;
    }

    boolean this_present_clientProperties = true && this.isSetClientProperties();
    boolean that_present_clientProperties = true && that.isSetClientProperties();
    if (this_present_clientProperties || that_present_clientProperties) {
      if (!(this_present_clientProperties && that_present_clientProperties))
        return false;
      if (!this.clientProperties.equals(that.clientProperties))
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

    AdParameters other = (AdParameters)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetClientLanguage(), other.isSetClientLanguage());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetClientLanguage()) {
      lastComparison = TBaseHelper.compareTo(this.clientLanguage, other.clientLanguage);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetImpressions(), other.isSetImpressions());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImpressions()) {
      lastComparison = TBaseHelper.compareTo(this.impressions, other.impressions);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetSupportHtml(), other.isSetSupportHtml());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSupportHtml()) {
      lastComparison = TBaseHelper.compareTo(this.supportHtml, other.supportHtml);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetClientProperties(), other.isSetClientProperties());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetClientProperties()) {
      lastComparison = TBaseHelper.compareTo(this.clientProperties, other.clientProperties);
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
        case 2: // CLIENT_LANGUAGE
          if (field.type == TType.STRING) {
            this.clientLanguage = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // IMPRESSIONS
          if (field.type == TType.LIST) {
            {
              TList _list86 = iprot.readListBegin();
              this.impressions = new Vector(_list86.size);
              for (int _i87 = 0; _i87 < _list86.size; ++_i87)
              {
                AdImpressions _elem88;
                _elem88 = new AdImpressions();
                _elem88.read(iprot);
                this.impressions.addElement(_elem88);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 5: // SUPPORT_HTML
          if (field.type == TType.BOOL) {
            this.supportHtml = iprot.readBool();
            setSupportHtmlIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 6: // CLIENT_PROPERTIES
          if (field.type == TType.MAP) {
            {
              TMap _map89 = iprot.readMapBegin();
              this.clientProperties = new Hashtable(2*_map89.size);
              for (int _i90 = 0; _i90 < _map89.size; ++_i90)
              {
                String _key91;
                String _val92;
                _key91 = iprot.readString();
                _val92 = iprot.readString();
                this.clientProperties.put(_key91, _val92);
              }
              iprot.readMapEnd();
            }
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
    if (this.clientLanguage != null) {
      if (isSetClientLanguage()) {
        oprot.writeFieldBegin(CLIENT_LANGUAGE_FIELD_DESC);
        oprot.writeString(this.clientLanguage);
        oprot.writeFieldEnd();
      }
    }
    if (this.impressions != null) {
      if (isSetImpressions()) {
        oprot.writeFieldBegin(IMPRESSIONS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.impressions.size()));
          for (Enumeration _iter93_enum = this.impressions.elements(); _iter93_enum.hasMoreElements(); )           {
            AdImpressions _iter93 = (AdImpressions)_iter93_enum.nextElement();
            _iter93.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
    }
    if (isSetSupportHtml()) {
      oprot.writeFieldBegin(SUPPORT_HTML_FIELD_DESC);
      oprot.writeBool(this.supportHtml);
      oprot.writeFieldEnd();
    }
    if (this.clientProperties != null) {
      if (isSetClientProperties()) {
        oprot.writeFieldBegin(CLIENT_PROPERTIES_FIELD_DESC);
        {
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRING, this.clientProperties.size()));
          for (Enumeration _iter94_enum = this.clientProperties.keys(); _iter94_enum.hasMoreElements(); )           {
            String _iter94 = (String)_iter94_enum.nextElement();
            oprot.writeString(_iter94);
            oprot.writeString((String)this.clientProperties.get(_iter94));
          }
          oprot.writeMapEnd();
        }
        oprot.writeFieldEnd();
      }
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("AdParameters(");
    boolean first = true;

    if (isSetClientLanguage()) {
      sb.append("clientLanguage:");
      if (this.clientLanguage == null) {
        sb.append("null");
      } else {
        sb.append(this.clientLanguage);
      }
      first = false;
    }
    if (isSetImpressions()) {
      if (!first) sb.append(", ");
      sb.append("impressions:");
      if (this.impressions == null) {
        sb.append("null");
      } else {
        sb.append(this.impressions);
      }
      first = false;
    }
    if (isSetSupportHtml()) {
      if (!first) sb.append(", ");
      sb.append("supportHtml:");
      sb.append(this.supportHtml);
      first = false;
    }
    if (isSetClientProperties()) {
      if (!first) sb.append(", ");
      sb.append("clientProperties:");
      if (this.clientProperties == null) {
        sb.append("null");
      } else {
        sb.append(this.clientProperties);
      }
      first = false;
    }
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

