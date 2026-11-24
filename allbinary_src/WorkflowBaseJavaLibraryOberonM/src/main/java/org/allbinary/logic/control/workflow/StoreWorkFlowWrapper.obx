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
// package org.allbinary.logic.control.workflow
unit StoreWorkFlowWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, WorkFlowWrapper;

type
  {AB:TYPES}
  TStoreWorkFlowWrapper = class(TWorkFlowWrapper)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(anyType: TObject);
        function getStoreName: string; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TStoreWorkFlowWrapper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TStoreWorkFlowWrapper.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

// throws Exception
function TStoreWorkFlowWrapper.getStoreName: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
  commonStrings_: TCommonStrings;
begin
        try
            helperClass := TJava.ToObject(Self.getWorkFlowObject()).ClassType;
            method_ := helperClass.getMethod('getStoreName', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.getWorkFlowObject(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Reflection Exception';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getStoreName()', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

