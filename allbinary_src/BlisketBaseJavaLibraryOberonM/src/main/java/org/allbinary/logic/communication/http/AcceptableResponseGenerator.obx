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
unit AcceptableResponseGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TAcceptableResponseGenerator = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TAcceptableResponseGenerator;
    procedure InitFields;
        class function getInstance: TAcceptableResponseGenerator; static;
        constructor Create;
        function get(httpServletRequest_: THttpServletRequest): string; virtual;
  end;

implementation
uses
  AcceptableResponseUtil, CommonStrings;


{AB:CODE}

procedure TAcceptableResponseGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TAcceptableResponseGenerator.getInstance: TAcceptableResponseGenerator;
begin
        Exit(TAcceptableResponseGenerator.instance);
end;
    

constructor TAcceptableResponseGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAcceptableResponseGenerator.get(httpServletRequest_: THttpServletRequest): string;
var
  commonStrings_: TCommonStrings;
  acceptableResponseUtil_: TAcceptableResponseUtil;
  acceptable: string;
  result_: string;
  size: Integer;
  index: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            acceptableResponseUtil_ := TAcceptableResponseUtil.getInstance();
            acceptable := httpServletRequest_.getHeader('accept');
            result_ := acceptableResponseUtil_.getTagName(0);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTP) then begin
                Self.logUtil.putF('Request Type: ' + acceptable, TJava.Box(Self), commonStrings_.GET);
            end;
            if (acceptable) <> ('') then begin
                size := acceptableResponseUtil_.size();
                for index := 0 to size - 1 do begin
                    if (CompareStr(acceptable, acceptableResponseUtil_.get(index))) = (0) then begin
                        result_ := acceptableResponseUtil_.getTagName(index);
                    end;
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTP) then begin
                Self.logUtil.putF('Response Type: ' + result_, TJava.Box(Self), commonStrings_.GET);
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAcceptableResponseGenerator.instance := TAcceptableResponseGenerator.Create();
  {AB:END}

end.

