/**
 * Autogenerated by Thrift Compiler (0.7.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.evernote.edam.type 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class QueryFormat   {
    public static const USER:int = 1;
    public static const SEXP:int = 2;

    public static const VALID_VALUES:Set = new Set(USER, SEXP);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[USER] = "USER";
      VALUES_TO_NAMES[SEXP] = "SEXP";

    }
  }
}