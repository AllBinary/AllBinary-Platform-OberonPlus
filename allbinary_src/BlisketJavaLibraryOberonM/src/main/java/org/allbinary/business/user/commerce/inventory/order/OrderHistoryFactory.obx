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
// package org.allbinary.business.user.commerce.inventory.order
unit OrderHistoryFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, OrderHistory;

type
  {AB:TYPES}
  // Retrieves a single order for a user
  TOrderHistoryFactory = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class function getInstance(id: string): TOrderHistory; static;
  end;

implementation
uses
  OrderHistoryEntity, CommonStrings;


{AB:CODE}

procedure TOrderHistoryFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TOrderHistoryFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TOrderHistoryFactory.getInstance(id: string): TOrderHistory;
var
  logUtil_: TLogUtil;
  orderHistoryEntityInterface: TOrderHistoryEntity;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            orderHistoryEntityInterface := TOrderHistoryEntity.Create();
            Exit(TOrderHistory(TJava.ToObject(orderHistoryEntityInterface.getOrder(id))));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('OrderHistoryFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

