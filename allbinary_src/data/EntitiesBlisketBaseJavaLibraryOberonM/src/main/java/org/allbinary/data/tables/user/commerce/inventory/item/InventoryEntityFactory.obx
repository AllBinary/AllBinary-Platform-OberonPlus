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
// package org.allbinary.data.tables.user.commerce.inventory.item
unit InventoryEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, InventoryEntity;

type
  {AB:TYPES}
  TInventoryEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TInventoryEntityFactory;
    procedure InitFields;
        class function getInstance: TInventoryEntityFactory; static;
        constructor Create;
        function getInventoryEntityInstance: TInventoryEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TInventoryEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TInventoryEntityFactory.getInstance: TInventoryEntityFactory;
begin
        Exit(TInventoryEntityFactory.instance);
end;
    

constructor TInventoryEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInventoryEntityFactory.getInventoryEntityInstance: TInventoryEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TInventoryEntity.Create());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getInventoryEntityInstance()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInventoryEntityFactory.instance := TInventoryEntityFactory.Create();
  {AB:END}

end.

