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
// package org.allbinary.data.tables.context.module.storefronts
unit StoreFrontsEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreFrontsEntity;

type
  {AB:TYPES}
  TStoreFrontsEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TStoreFrontsEntityFactory;
    procedure InitFields;
        class function getInstance: TStoreFrontsEntityFactory; static;
        constructor Create;
        function getStoreFrontsEntityInstance: TStoreFrontsEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TStoreFrontsEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TStoreFrontsEntityFactory.getInstance: TStoreFrontsEntityFactory;
begin
        Exit(TStoreFrontsEntityFactory.instance);
end;
    

constructor TStoreFrontsEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TStoreFrontsEntityFactory.getStoreFrontsEntityInstance: TStoreFrontsEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TStoreFrontsEntity.Create());
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
  TStoreFrontsEntityFactory.instance := TStoreFrontsEntityFactory.Create();
  {AB:END}

end.

