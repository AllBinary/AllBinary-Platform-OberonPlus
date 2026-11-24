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
// package org.allbinary.data.tables.user.commerce.money.payment.transaction
unit TransactionResultEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransactionResultEntity;

type
  {AB:TYPES}
  TTransactionResultEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransactionResultEntityFactory;
    procedure InitFields;
        class function getInstance: TTransactionResultEntityFactory; static;
        constructor Create;
        function getTransactionResultEntityInstance: TTransactionResultEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TTransactionResultEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransactionResultEntityFactory.getInstance: TTransactionResultEntityFactory;
begin
        Exit(TTransactionResultEntityFactory.instance);
end;
    

constructor TTransactionResultEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TTransactionResultEntityFactory.getTransactionResultEntityInstance: TTransactionResultEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TTransactionResultEntity.Create());
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
  TTransactionResultEntityFactory.instance := TTransactionResultEntityFactory.Create();
  {AB:END}

end.

