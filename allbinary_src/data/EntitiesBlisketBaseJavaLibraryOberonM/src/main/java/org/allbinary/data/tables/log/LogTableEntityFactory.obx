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
// package org.allbinary.data.tables.log
unit LogTableEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, LogTableEntity;

type
  {AB:TYPES}
  TLogTableEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TLogTableEntityFactory;
    procedure InitFields;
        class function getInstance: TLogTableEntityFactory; static;
        constructor Create;
        function getLogTableEntityInstance: TLogTableEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TLogTableEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TLogTableEntityFactory.getInstance: TLogTableEntityFactory;
begin
        Exit(TLogTableEntityFactory.instance);
end;
    

constructor TLogTableEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TLogTableEntityFactory.getLogTableEntityInstance: TLogTableEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TLogTableEntity.Create());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLogTableEntityFactory.instance := TLogTableEntityFactory.Create();
  {AB:END}

end.

