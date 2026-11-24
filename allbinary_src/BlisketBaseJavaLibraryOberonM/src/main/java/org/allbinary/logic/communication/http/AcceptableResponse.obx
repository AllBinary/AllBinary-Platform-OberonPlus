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
// package org.allbinary.logic.communication.http
unit AcceptableResponse;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TAcceptableResponse = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(candidate: string; tagName: string; index: Integer);
  end;

implementation
uses
  AcceptableResponseUtil;


{AB:CODE}

procedure TAcceptableResponse.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TAcceptableResponse.Create(candidate: string; tagName: string; index: Integer);
var
  acceptableResponseUtil_: TAcceptableResponseUtil;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(tagName, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        acceptableResponseUtil_ := TAcceptableResponseUtil.getInstance();
        acceptableResponseUtil_.candidateVector.addAt(index, candidate);
        acceptableResponseUtil_.tagNameVector.addAt(index, tagName);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

