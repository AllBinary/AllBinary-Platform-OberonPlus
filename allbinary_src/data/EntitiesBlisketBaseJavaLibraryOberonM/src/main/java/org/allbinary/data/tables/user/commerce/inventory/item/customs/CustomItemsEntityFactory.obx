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
// package org.allbinary.data.tables.user.commerce.inventory.item.customs
unit CustomItemsEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomItemsEntity;

type
  {AB:TYPES}
  TCustomItemsEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCustomItemsEntityFactory;
    procedure InitFields;
        class function getInstance: TCustomItemsEntityFactory; static;
        constructor Create;
        function getCustomItemsEntityInstance: TCustomItemsEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TCustomItemsEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TCustomItemsEntityFactory.getInstance: TCustomItemsEntityFactory;
begin
        Exit(TCustomItemsEntityFactory.instance);
end;
    

constructor TCustomItemsEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCustomItemsEntityFactory.getCustomItemsEntityInstance: TCustomItemsEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TCustomItemsEntity.Create());
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
  TCustomItemsEntityFactory.instance := TCustomItemsEntityFactory.Create();
  {AB:END}

end.

