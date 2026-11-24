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
// package org.allbinary.business.context.modules.storefronts
unit BasicStoreFrontFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicStoreFrontInterface;

type
  {AB:TYPES}
  TBasicStoreFrontFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TBasicStoreFrontFactory;
    procedure InitFields;
        class function getInstance: TBasicStoreFrontFactory; overload; static;
        constructor Create;
        function getInstance(storeName: string): IBasicStoreFrontInterface; overload; virtual;
  end;

implementation
uses
  BasicStoreFrontsEntity, CommonStrings;


{AB:CODE}

procedure TBasicStoreFrontFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TBasicStoreFrontFactory.getInstance: TBasicStoreFrontFactory;
begin
        Exit(TBasicStoreFrontFactory.instance);
end;
    

constructor TBasicStoreFrontFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TBasicStoreFrontFactory.getInstance(storeName: string): IBasicStoreFrontInterface;
var
  storeFronts: TBasicStoreFrontsEntity;
  commonStrings_: TCommonStrings;
begin
        try
            storeFronts := TBasicStoreFrontsEntity.Create();
            Exit(storeFronts.getStoreFrontInterface(storeName));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicStoreFrontFactory.instance := TBasicStoreFrontFactory.Create();
  {AB:END}

end.

