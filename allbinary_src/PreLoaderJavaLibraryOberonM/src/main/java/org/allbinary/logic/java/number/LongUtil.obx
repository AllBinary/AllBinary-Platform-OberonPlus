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
// package org.allbinary.logic.java.number
unit LongUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLongUtil = class(TObject)
  public
        constructor Create;
        class function fillIn(end_: string): string; static;
  end;

implementation
uses
  LongData, StringMaker, CommonPhoneStrings;


{AB:CODE}
    

constructor TLongUtil.Create;
begin
    inherited Create;
end;
    

class function TLongUtil.fillIn(end_: string): string;
var
  frameStringBuffer: TStringMaker;
  commonPhoneStrings_: TCommonPhoneStrings;
  size: Integer;
  index: Integer;
begin
        frameStringBuffer := TStringMaker.Create();
        if (frameStringBuffer.length()) < (TLongData.MAX_LONG_LENGTH) then begin
            commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
            size := (TLongData.MAX_LONG_LENGTH) - (frameStringBuffer.length());
            for index := 0 to size - 1 do begin
                frameStringBuffer.append(commonPhoneStrings_.ZERO);
            end;
        end;
        frameStringBuffer.append(end_);
        Exit(frameStringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

