{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit LayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable;

type
  {AB:TYPES}
  TLayerUtil = class(TObject)
  public
    class var HASHTABLE: string;
    constructor Create;
        class function toString(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): string; static;
  end;

implementation
uses
  CommonSeps, StringMaker, StringUtil, PositionStrings;


{AB:CODE}

constructor TLayerUtil.Create;
begin
  inherited Create;
end;
    

class function TLayerUtil.toString(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): string;
var
  commonSeps_: TCommonSeps;
  positionStrings_: TPositionStrings;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        positionStrings_ := TPositionStrings.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TLayerUtil.HASHTABLE);
        stringBuffer.append(TStringUtil.getInstance().toString(hashtable));
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.appendint(z);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TLayerUtil.HASHTABLE := 'Hashtable: ';
  {AB:END}

end.

