{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.string
unit SpecialCharacterUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSpecialCharacterUtil = class(TObject)
  public
    constructor Create;
        class function getHashMap: TJavaHashMap<TObject, TObject>; static;
  end;

implementation
uses
  StringUtil, StdUtil, AbPathData, MathData, CommonPhoneStrings, CommonSeps;


{AB:CODE}

constructor TSpecialCharacterUtil.Create;
begin
  inherited Create;
end;
    

class function TSpecialCharacterUtil.getHashMap: TJavaHashMap<TObject, TObject>;
var
  commonSeps_: TCommonSeps;
  commonPhoneStrings_: TCommonPhoneStrings;
  stringUtil_: TStringUtil;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        commonSeps_ := TCommonSeps.getInstance();
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        stringUtil_ := TStringUtil.getInstance();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box('!'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('@'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonPhoneStrings_.POUND), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('$'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('%'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('^'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.AMPERSAND), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonPhoneStrings_.STAR), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.PARENTHESIS_OPEN), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.PARENTHESIS_CLOSE), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.DASH), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.UNDERSCORE), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(TMathData.getInstance().PLUS), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(commonSeps_.EQUALS), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('\'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('|'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(TAbPathData.getInstance().EXTENSION_SEP), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(','), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('<'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('>'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('?'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box(TAbPathData.getInstance().SEPARATOR), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('~'), TJava.Box(stringUtil_.EMPTY_STRING));
        hashMap_.put(TJava.Box('`'), TJava.Box(stringUtil_.EMPTY_STRING));
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

