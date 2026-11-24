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
// package org.allbinary.data.tables.workflow
unit WorkFlowEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, WorkFlowEntity;

type
  {AB:TYPES}
  TWorkFlowEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TWorkFlowEntityFactory;
    procedure InitFields;
        class function getInstance: TWorkFlowEntityFactory; static;
        constructor Create;
        function create2: TWorkFlowEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TWorkFlowEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TWorkFlowEntityFactory.getInstance: TWorkFlowEntityFactory;
begin
        Exit(TWorkFlowEntityFactory.instance);
end;
    

constructor TWorkFlowEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TWorkFlowEntityFactory.create2: TWorkFlowEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TWorkFlowEntity.Create());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TWorkFlowEntityFactory.instance := TWorkFlowEntityFactory.Create();
  {AB:END}

end.

