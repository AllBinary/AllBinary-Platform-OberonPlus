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
    class var LABEL_: string;
        constructor Create;
        class procedure put(specialMessage: string; anyType: TObject; functionName: string); static;
        class procedure putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); static;
        class procedure putS(specialMessage: string; className: string; functionName: string); static;
        class procedure putSE(specialMessage: string; className: string; functionName: string; exception: TObject); static;
  end;

implementation
uses
  NullUtil, LogFormatUtil;


{AB:CODE}
    

constructor TPreLogUtil.Create;
begin
    inherited Create;
end;
    

class procedure TPreLogUtil.put(specialMessage: string; anyType: TObject; functionName: string);
begin
        TPreLogUtil.putOE(specialMessage, TJava.Box(anyType), functionName, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

class procedure TPreLogUtil.putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  actualClassName: string;
  message: string;
begin
        className := TPreLogUtil.LABEL_;
        actualClassName := TJava.ToObject(anyType).ClassType.ClassName;
        if (actualClassName) <> ('') then begin
            className := actualClassName;
        end;
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        Tandroid.util.Log.i(TPreLogUtil.LABEL_, message);
end;
    

class procedure TPreLogUtil.putS(specialMessage: string; className: string; functionName: string);
begin
        TPreLogUtil.putSE(specialMessage, className, functionName, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

class procedure TPreLogUtil.putSE(specialMessage: string; className: string; functionName: string; exception: TObject);
var
  message: string;
begin
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        Tandroid.util.Log.i(className, message);
end;

initialization
  {AB:INITIALIZATION}
  TPreLogUtil.LABEL_ := 'org.allbinary';
  {AB:END}

end.

