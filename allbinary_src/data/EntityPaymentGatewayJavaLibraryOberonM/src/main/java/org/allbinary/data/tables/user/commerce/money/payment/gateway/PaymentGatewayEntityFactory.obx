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
// package org.allbinary.data.tables.user.commerce.money.payment.gateway
unit PaymentGatewayEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaymentGatewayEntity;

type
  {AB:TYPES}
  TPaymentGatewayEntityFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: TPaymentGatewayEntity; static;
  end;

implementation
uses
  LogUtil, CommonStrings;


{AB:CODE}
    

constructor TPaymentGatewayEntityFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TPaymentGatewayEntityFactory.getInstance: TPaymentGatewayEntity;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit(TPaymentGatewayEntity.Create());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('PaymentGatewayEntityFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

