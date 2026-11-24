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
// package org.allbinary.business.context.modules.storefront
unit StoreFrontViewFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil;

type
  {AB:TYPES}
  TStoreFrontViewFactory = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class function getInstance(storeName: string): IDomNodeInterface; static;
  end;

implementation
uses
  StoreFrontView, StoreFrontsEntity, StoreFrontsEntityFactory, CommonStrings;


{AB:CODE}

procedure TStoreFrontViewFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TStoreFrontViewFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TStoreFrontViewFactory.getInstance(storeName: string): IDomNodeInterface;
var
  logUtil_: TLogUtil;
  storeFronts: TStoreFrontsEntity;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            storeFronts := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance();
            Exit((TJava.ToObject(TStoreFrontView.Create(storeFronts.getStoreFrontInterface(storeName))) as IDomNodeInterface));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('StoreFrontFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

