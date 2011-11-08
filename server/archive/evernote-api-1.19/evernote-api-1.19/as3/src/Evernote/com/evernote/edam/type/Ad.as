/**
 * Autogenerated by Thrift Compiler (0.7.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type {

import org.apache.thrift.Set;
import org.apache.thrift.type.BigInteger;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


  /**
   * An advertisement that may be displayed within an Evernote client.
   * Advertisements are either a snippet of HTML or else they
   * are an image (of type: JPEG, GIF, PNG) with an associated destination URL.
   * 
   * <dl>
   *   <dt>id</dt>
   *   <dd>The unique identifier of this advertisement within Evernote's ad
   *   inventory.
   *   </dd>
   * 
   *   <dt>width</dt>
   *   <dd>This ad should be displayed within a rectangle that is this wide,
   *   in pixels.
   *   </dd>
   * 
   *   <dt>height</dt>
   *   <dd>This ad should be displayed within a rectangle that is this high,
   *   in pixels.
   *   </dd>
   * 
   *   <dt>advertiserName</dt>
   *   <dd>A string containing a readable version of the name of this advertiser.
   *   </dd>
   * 
   *   <dt>imageUrl</dt>
   *   <dd>The location of the image to display for this ad.</dd>
   * 
   *   <dt>destinationUrl</dt>
   *   <dd>When a user clicks on the ad, this is the destination they should be
   *   sent to in a browser.</dd>
   * 
   *   <dt>displaySeconds</dt>
   *   <dd>The number of seconds that the ad should be displayed before it is
   *   replaced with a different ad.</dd>
   * 
   *   <dt>score</dt>
   *   <dd>A numeric indicator of the relative value of this ad, which can be
   *   compared against other ads from the same day.
   *   </dd>
   * 
   *   <dt>image</dt>
   *   <dd>If present, this is the raw image bits of the image file to display
   *   for the ad.  If not present, the imageUrl should be retrieved directly.
   *   </dd>
   * 
   *   <dt>imageMime</dt>
   *   <dd>The MIME type of the 'image' bytes, if those are set.</dd>
   * 
   *   <dt>html</dt>
   *   <dd>The exact HTML to display for this ad, to support rich or external
   *   advertisements.</dd>
   * 
   *   <dt>displayFrequency</dt>
   *   <dd>If this value is set, this is the relatively frequency that this
   *   ad should be displayed in the daily set of ads, relative to a base
   *   frequency of 1.0.  I.e. an ad with a frequency of 3.0 should be displayed
   *   three times more frequently than an ad with a frequency of 1.0.</dd>
   * </dl>
   */
  public class Ad implements TBase   {
    private static const STRUCT_DESC:TStruct = new TStruct("Ad");
    private static const ID_FIELD_DESC:TField = new TField("id", TType.I32, 1);
    private static const WIDTH_FIELD_DESC:TField = new TField("width", TType.I16, 2);
    private static const HEIGHT_FIELD_DESC:TField = new TField("height", TType.I16, 3);
    private static const ADVERTISER_NAME_FIELD_DESC:TField = new TField("advertiserName", TType.STRING, 4);
    private static const IMAGE_URL_FIELD_DESC:TField = new TField("imageUrl", TType.STRING, 5);
    private static const DESTINATION_URL_FIELD_DESC:TField = new TField("destinationUrl", TType.STRING, 6);
    private static const DISPLAY_SECONDS_FIELD_DESC:TField = new TField("displaySeconds", TType.I16, 7);
    private static const SCORE_FIELD_DESC:TField = new TField("score", TType.DOUBLE, 8);
    private static const IMAGE_FIELD_DESC:TField = new TField("image", TType.STRING, 9);
    private static const IMAGE_MIME_FIELD_DESC:TField = new TField("imageMime", TType.STRING, 10);
    private static const HTML_FIELD_DESC:TField = new TField("html", TType.STRING, 11);
    private static const DISPLAY_FREQUENCY_FIELD_DESC:TField = new TField("displayFrequency", TType.DOUBLE, 12);

    private var _id:int;
    public static const ID:int = 1;
    private var _width:int;
    public static const WIDTH:int = 2;
    private var _height:int;
    public static const HEIGHT:int = 3;
    private var _advertiserName:String;
    public static const ADVERTISERNAME:int = 4;
    private var _imageUrl:String;
    public static const IMAGEURL:int = 5;
    private var _destinationUrl:String;
    public static const DESTINATIONURL:int = 6;
    private var _displaySeconds:int;
    public static const DISPLAYSECONDS:int = 7;
    private var _score:Number;
    public static const SCORE:int = 8;
    private var _image:ByteArray;
    public static const IMAGE:int = 9;
    private var _imageMime:String;
    public static const IMAGEMIME:int = 10;
    private var _html:String;
    public static const HTML:int = 11;
    private var _displayFrequency:Number;
    public static const DISPLAYFREQUENCY:int = 12;

    private var __isset_id:Boolean = false;
    private var __isset_width:Boolean = false;
    private var __isset_height:Boolean = false;
    private var __isset_displaySeconds:Boolean = false;
    private var __isset_score:Boolean = false;
    private var __isset_displayFrequency:Boolean = false;

    public static const metaDataMap:Dictionary = new Dictionary();
    {
      metaDataMap[ID] = new FieldMetaData("id", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I32));
      metaDataMap[WIDTH] = new FieldMetaData("width", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[HEIGHT] = new FieldMetaData("height", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[ADVERTISERNAME] = new FieldMetaData("advertiserName", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[IMAGEURL] = new FieldMetaData("imageUrl", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[DESTINATIONURL] = new FieldMetaData("destinationUrl", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[DISPLAYSECONDS] = new FieldMetaData("displaySeconds", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.I16));
      metaDataMap[SCORE] = new FieldMetaData("score", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.DOUBLE));
      metaDataMap[IMAGE] = new FieldMetaData("image", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[IMAGEMIME] = new FieldMetaData("imageMime", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[HTML] = new FieldMetaData("html", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.STRING));
      metaDataMap[DISPLAYFREQUENCY] = new FieldMetaData("displayFrequency", TFieldRequirementType.OPTIONAL, 
          new FieldValueMetaData(TType.DOUBLE));
    }
    {
      FieldMetaData.addStructMetaDataMap(Ad, metaDataMap);
    }

    public function Ad() {
    }

    public function get id():int {
      return this._id;
    }

    public function set id(id:int):void {
      this._id = id;
      this.__isset_id = true;
    }

    public function unsetId():void {
      this.__isset_id = false;
    }

    // Returns true if field id is set (has been assigned a value) and false otherwise
    public function isSetId():Boolean {
      return this.__isset_id;
    }

    public function get width():int {
      return this._width;
    }

    public function set width(width:int):void {
      this._width = width;
      this.__isset_width = true;
    }

    public function unsetWidth():void {
      this.__isset_width = false;
    }

    // Returns true if field width is set (has been assigned a value) and false otherwise
    public function isSetWidth():Boolean {
      return this.__isset_width;
    }

    public function get height():int {
      return this._height;
    }

    public function set height(height:int):void {
      this._height = height;
      this.__isset_height = true;
    }

    public function unsetHeight():void {
      this.__isset_height = false;
    }

    // Returns true if field height is set (has been assigned a value) and false otherwise
    public function isSetHeight():Boolean {
      return this.__isset_height;
    }

    public function get advertiserName():String {
      return this._advertiserName;
    }

    public function set advertiserName(advertiserName:String):void {
      this._advertiserName = advertiserName;
    }

    public function unsetAdvertiserName():void {
      this.advertiserName = null;
    }

    // Returns true if field advertiserName is set (has been assigned a value) and false otherwise
    public function isSetAdvertiserName():Boolean {
      return this.advertiserName != null;
    }

    public function get imageUrl():String {
      return this._imageUrl;
    }

    public function set imageUrl(imageUrl:String):void {
      this._imageUrl = imageUrl;
    }

    public function unsetImageUrl():void {
      this.imageUrl = null;
    }

    // Returns true if field imageUrl is set (has been assigned a value) and false otherwise
    public function isSetImageUrl():Boolean {
      return this.imageUrl != null;
    }

    public function get destinationUrl():String {
      return this._destinationUrl;
    }

    public function set destinationUrl(destinationUrl:String):void {
      this._destinationUrl = destinationUrl;
    }

    public function unsetDestinationUrl():void {
      this.destinationUrl = null;
    }

    // Returns true if field destinationUrl is set (has been assigned a value) and false otherwise
    public function isSetDestinationUrl():Boolean {
      return this.destinationUrl != null;
    }

    public function get displaySeconds():int {
      return this._displaySeconds;
    }

    public function set displaySeconds(displaySeconds:int):void {
      this._displaySeconds = displaySeconds;
      this.__isset_displaySeconds = true;
    }

    public function unsetDisplaySeconds():void {
      this.__isset_displaySeconds = false;
    }

    // Returns true if field displaySeconds is set (has been assigned a value) and false otherwise
    public function isSetDisplaySeconds():Boolean {
      return this.__isset_displaySeconds;
    }

    public function get score():Number {
      return this._score;
    }

    public function set score(score:Number):void {
      this._score = score;
      this.__isset_score = true;
    }

    public function unsetScore():void {
      this.__isset_score = false;
    }

    // Returns true if field score is set (has been assigned a value) and false otherwise
    public function isSetScore():Boolean {
      return this.__isset_score;
    }

    public function get image():ByteArray {
      return this._image;
    }

    public function set image(image:ByteArray):void {
      this._image = image;
    }

    public function unsetImage():void {
      this.image = null;
    }

    // Returns true if field image is set (has been assigned a value) and false otherwise
    public function isSetImage():Boolean {
      return this.image != null;
    }

    public function get imageMime():String {
      return this._imageMime;
    }

    public function set imageMime(imageMime:String):void {
      this._imageMime = imageMime;
    }

    public function unsetImageMime():void {
      this.imageMime = null;
    }

    // Returns true if field imageMime is set (has been assigned a value) and false otherwise
    public function isSetImageMime():Boolean {
      return this.imageMime != null;
    }

    public function get html():String {
      return this._html;
    }

    public function set html(html:String):void {
      this._html = html;
    }

    public function unsetHtml():void {
      this.html = null;
    }

    // Returns true if field html is set (has been assigned a value) and false otherwise
    public function isSetHtml():Boolean {
      return this.html != null;
    }

    public function get displayFrequency():Number {
      return this._displayFrequency;
    }

    public function set displayFrequency(displayFrequency:Number):void {
      this._displayFrequency = displayFrequency;
      this.__isset_displayFrequency = true;
    }

    public function unsetDisplayFrequency():void {
      this.__isset_displayFrequency = false;
    }

    // Returns true if field displayFrequency is set (has been assigned a value) and false otherwise
    public function isSetDisplayFrequency():Boolean {
      return this.__isset_displayFrequency;
    }

    public function setFieldValue(fieldID:int, value:*):void {
      switch (fieldID) {
      case ID:
        if (value == null) {
          unsetId();
        } else {
          this.id = value;
        }
        break;

      case WIDTH:
        if (value == null) {
          unsetWidth();
        } else {
          this.width = value;
        }
        break;

      case HEIGHT:
        if (value == null) {
          unsetHeight();
        } else {
          this.height = value;
        }
        break;

      case ADVERTISERNAME:
        if (value == null) {
          unsetAdvertiserName();
        } else {
          this.advertiserName = value;
        }
        break;

      case IMAGEURL:
        if (value == null) {
          unsetImageUrl();
        } else {
          this.imageUrl = value;
        }
        break;

      case DESTINATIONURL:
        if (value == null) {
          unsetDestinationUrl();
        } else {
          this.destinationUrl = value;
        }
        break;

      case DISPLAYSECONDS:
        if (value == null) {
          unsetDisplaySeconds();
        } else {
          this.displaySeconds = value;
        }
        break;

      case SCORE:
        if (value == null) {
          unsetScore();
        } else {
          this.score = value;
        }
        break;

      case IMAGE:
        if (value == null) {
          unsetImage();
        } else {
          this.image = value;
        }
        break;

      case IMAGEMIME:
        if (value == null) {
          unsetImageMime();
        } else {
          this.imageMime = value;
        }
        break;

      case HTML:
        if (value == null) {
          unsetHtml();
        } else {
          this.html = value;
        }
        break;

      case DISPLAYFREQUENCY:
        if (value == null) {
          unsetDisplayFrequency();
        } else {
          this.displayFrequency = value;
        }
        break;

      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    public function getFieldValue(fieldID:int):* {
      switch (fieldID) {
      case ID:
        return this.id;
      case WIDTH:
        return this.width;
      case HEIGHT:
        return this.height;
      case ADVERTISERNAME:
        return this.advertiserName;
      case IMAGEURL:
        return this.imageUrl;
      case DESTINATIONURL:
        return this.destinationUrl;
      case DISPLAYSECONDS:
        return this.displaySeconds;
      case SCORE:
        return this.score;
      case IMAGE:
        return this.image;
      case IMAGEMIME:
        return this.imageMime;
      case HTML:
        return this.html;
      case DISPLAYFREQUENCY:
        return this.displayFrequency;
      default:
        throw new ArgumentError("Field " + fieldID + " doesn't exist!");
      }
    }

    // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
    public function isSet(fieldID:int):Boolean {
      switch (fieldID) {
      case ID:
        return isSetId();
      case WIDTH:
        return isSetWidth();
      case HEIGHT:
        return isSetHeight();
      case ADVERTISERNAME:
        return isSetAdvertiserName();
      case IMAGEURL:
        return isSetImageUrl();
      case DESTINATIONURL:
        return isSetDestinationUrl();
      case DISPLAYSECONDS:
        return isSetDisplaySeconds();
      case SCORE:
        return isSetScore();
      case IMAGE:
        return isSetImage();
      case IMAGEMIME:
        return isSetImageMime();
      case HTML:
        return isSetHtml();
      case DISPLAYFREQUENCY:
        return isSetDisplayFrequency();
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
          case ID:
            if (field.type == TType.I32) {
              this.id = iprot.readI32();
              this.__isset_id = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case WIDTH:
            if (field.type == TType.I16) {
              this.width = iprot.readI16();
              this.__isset_width = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case HEIGHT:
            if (field.type == TType.I16) {
              this.height = iprot.readI16();
              this.__isset_height = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case ADVERTISERNAME:
            if (field.type == TType.STRING) {
              this.advertiserName = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case IMAGEURL:
            if (field.type == TType.STRING) {
              this.imageUrl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case DESTINATIONURL:
            if (field.type == TType.STRING) {
              this.destinationUrl = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case DISPLAYSECONDS:
            if (field.type == TType.I16) {
              this.displaySeconds = iprot.readI16();
              this.__isset_displaySeconds = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case SCORE:
            if (field.type == TType.DOUBLE) {
              this.score = iprot.readDouble();
              this.__isset_score = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case IMAGE:
            if (field.type == TType.STRING) {
              this.image = iprot.readBinary();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case IMAGEMIME:
            if (field.type == TType.STRING) {
              this.imageMime = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case HTML:
            if (field.type == TType.STRING) {
              this.html = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
            break;
          case DISPLAYFREQUENCY:
            if (field.type == TType.DOUBLE) {
              this.displayFrequency = iprot.readDouble();
              this.__isset_displayFrequency = true;
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
      if (isSetId()) {
        oprot.writeFieldBegin(ID_FIELD_DESC);
        oprot.writeI32(this.id);
        oprot.writeFieldEnd();
      }
      if (isSetWidth()) {
        oprot.writeFieldBegin(WIDTH_FIELD_DESC);
        oprot.writeI16(this.width);
        oprot.writeFieldEnd();
      }
      if (isSetHeight()) {
        oprot.writeFieldBegin(HEIGHT_FIELD_DESC);
        oprot.writeI16(this.height);
        oprot.writeFieldEnd();
      }
      if (this.advertiserName != null) {
        if (isSetAdvertiserName()) {
          oprot.writeFieldBegin(ADVERTISER_NAME_FIELD_DESC);
          oprot.writeString(this.advertiserName);
          oprot.writeFieldEnd();
        }
      }
      if (this.imageUrl != null) {
        if (isSetImageUrl()) {
          oprot.writeFieldBegin(IMAGE_URL_FIELD_DESC);
          oprot.writeString(this.imageUrl);
          oprot.writeFieldEnd();
        }
      }
      if (this.destinationUrl != null) {
        if (isSetDestinationUrl()) {
          oprot.writeFieldBegin(DESTINATION_URL_FIELD_DESC);
          oprot.writeString(this.destinationUrl);
          oprot.writeFieldEnd();
        }
      }
      if (isSetDisplaySeconds()) {
        oprot.writeFieldBegin(DISPLAY_SECONDS_FIELD_DESC);
        oprot.writeI16(this.displaySeconds);
        oprot.writeFieldEnd();
      }
      if (isSetScore()) {
        oprot.writeFieldBegin(SCORE_FIELD_DESC);
        oprot.writeDouble(this.score);
        oprot.writeFieldEnd();
      }
      if (this.image != null) {
        if (isSetImage()) {
          oprot.writeFieldBegin(IMAGE_FIELD_DESC);
          oprot.writeBinary(this.image);
          oprot.writeFieldEnd();
        }
      }
      if (this.imageMime != null) {
        if (isSetImageMime()) {
          oprot.writeFieldBegin(IMAGE_MIME_FIELD_DESC);
          oprot.writeString(this.imageMime);
          oprot.writeFieldEnd();
        }
      }
      if (this.html != null) {
        if (isSetHtml()) {
          oprot.writeFieldBegin(HTML_FIELD_DESC);
          oprot.writeString(this.html);
          oprot.writeFieldEnd();
        }
      }
      if (isSetDisplayFrequency()) {
        oprot.writeFieldBegin(DISPLAY_FREQUENCY_FIELD_DESC);
        oprot.writeDouble(this.displayFrequency);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

    public function toString():String {
      var ret:String = new String("Ad(");
      var first:Boolean = true;

      if (isSetId()) {
        ret += "id:";
        ret += this.id;
        first = false;
      }
      if (isSetWidth()) {
        if (!first) ret +=  ", ";
        ret += "width:";
        ret += this.width;
        first = false;
      }
      if (isSetHeight()) {
        if (!first) ret +=  ", ";
        ret += "height:";
        ret += this.height;
        first = false;
      }
      if (isSetAdvertiserName()) {
        if (!first) ret +=  ", ";
        ret += "advertiserName:";
        if (this.advertiserName == null) {
          ret += "null";
        } else {
          ret += this.advertiserName;
        }
        first = false;
      }
      if (isSetImageUrl()) {
        if (!first) ret +=  ", ";
        ret += "imageUrl:";
        if (this.imageUrl == null) {
          ret += "null";
        } else {
          ret += this.imageUrl;
        }
        first = false;
      }
      if (isSetDestinationUrl()) {
        if (!first) ret +=  ", ";
        ret += "destinationUrl:";
        if (this.destinationUrl == null) {
          ret += "null";
        } else {
          ret += this.destinationUrl;
        }
        first = false;
      }
      if (isSetDisplaySeconds()) {
        if (!first) ret +=  ", ";
        ret += "displaySeconds:";
        ret += this.displaySeconds;
        first = false;
      }
      if (isSetScore()) {
        if (!first) ret +=  ", ";
        ret += "score:";
        ret += this.score;
        first = false;
      }
      if (isSetImage()) {
        if (!first) ret +=  ", ";
        ret += "image:";
        if (this.image == null) {
          ret += "null";
        } else {
            ret += "BINARY";
        }
        first = false;
      }
      if (isSetImageMime()) {
        if (!first) ret +=  ", ";
        ret += "imageMime:";
        if (this.imageMime == null) {
          ret += "null";
        } else {
          ret += this.imageMime;
        }
        first = false;
      }
      if (isSetHtml()) {
        if (!first) ret +=  ", ";
        ret += "html:";
        if (this.html == null) {
          ret += "null";
        } else {
          ret += this.html;
        }
        first = false;
      }
      if (isSetDisplayFrequency()) {
        if (!first) ret +=  ", ";
        ret += "displayFrequency:";
        ret += this.displayFrequency;
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
