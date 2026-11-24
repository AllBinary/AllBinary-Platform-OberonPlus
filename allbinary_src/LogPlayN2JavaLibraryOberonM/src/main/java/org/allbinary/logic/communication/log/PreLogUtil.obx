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
// package org.allbinary.logic.communication.log
unit PreLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TPreLogUtil = class(TObject)
  public
    class var LOG_SUCCESS: string;
        constructor Create;
        class procedure put(specialMessage: string; anyType: TObject; functionName: string); static;
        class procedure putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); static;
        class procedure putS(specialMessage: string; className: string; functionName: string); static;
        class procedure putSE(specialMessage: string; className: string; functionName: string; exception: TObject); static;
        class function getClassName(anyType: TObject): string; static;
  end;

implementation
uses
  LogFormatUtil, JsType, CommonSeps, CommonStrings, StringMaker, StringUtil, PlayN;


{AB:CODE}
    

constructor TPreLogUtil.Create;
begin
    inherited Create;
end;
    

class procedure TPreLogUtil.put(specialMessage: string; anyType: TObject; functionName: string);
var
  className: string;
  message: string;
begin
        className := TPreLogUtil.getClassName(TJava.Box(anyType));
        if (className) = ('') then begin
            className := TCommonStrings.getInstance().EMPTY;
        end;
        className := TStringMaker.Create().append(className).append(TCommonSeps.getInstance().FORWARD_SLASH).append(TStringUtil.getInstance().toString(anyType)).toString();
        message := TLogFormatUtil.getInstance().getS(className, functionName, specialMessage);
        TPlayN.getInstance().log().debug(TJava.ToString(TPreLogUtil.LOG_SUCCESS) + message);
end;
    

class procedure TPreLogUtil.putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  message: string;
begin
        className := TPreLogUtil.getClassName(TJava.Box(anyType));
        if (className) = ('') then begin
            className := TCommonStrings.getInstance().EMPTY;
        end;
        className := TStringMaker.Create().append(className).append(TCommonSeps.getInstance().FORWARD_SLASH).append(TStringUtil.getInstance().toString(anyType)).toString();
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        TPlayN.getInstance().log().error(TJava.ToString(TPreLogUtil.LOG_SUCCESS) + message, SysUtils.Exception(exception));
end;
    

class procedure TPreLogUtil.putS(specialMessage: string; className: string; functionName: string);
var
  message: string;
begin
        message := TLogFormatUtil.getInstance().getS(className, functionName, specialMessage);
        TPlayN.getInstance().log().debug(TJava.ToString(TPreLogUtil.LOG_SUCCESS) + message);
end;
    

class procedure TPreLogUtil.putSE(specialMessage: string; className: string; functionName: string; exception: TObject);
var
  message: string;
begin
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        TPlayN.getInstance().log().error(TJava.ToString(TPreLogUtil.LOG_SUCCESS) + message, SysUtils.Exception(exception));
end;
    

initialization
  {AB:INITIALIZATION}
  TPreLogUtil.LOG_SUCCESS := 'org.allbinary: ';
  {AB:END}

end.

