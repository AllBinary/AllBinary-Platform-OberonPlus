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
// package org.allbinary.globals
unit UrlGlobalsViewFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface;

type
  {AB:TYPES}
  TUrlGlobalsViewFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: IDomNodeInterface; static;
  end;

implementation
uses
  UrlGlobalsView, LogUtil, CommonStrings;


{AB:CODE}
    

constructor TUrlGlobalsViewFactory.Create;
begin
    inherited Create;
end;
    

class function TUrlGlobalsViewFactory.getInstance: IDomNodeInterface;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit((TJava.ToObject(TUrlGlobalsView.Create()) as IDomNodeInterface));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('GlobalsViewFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

