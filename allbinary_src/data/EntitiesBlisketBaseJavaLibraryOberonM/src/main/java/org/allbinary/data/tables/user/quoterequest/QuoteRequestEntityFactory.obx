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
// package org.allbinary.data.tables.user.quoterequest
unit QuoteRequestEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, QuoteRequestEntity;

type
  {AB:TYPES}
  TQuoteRequestEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TQuoteRequestEntityFactory;
    procedure InitFields;
        class function getInstance: TQuoteRequestEntityFactory; static;
        constructor Create;
        function getQuoteRequestEntityInstance: TQuoteRequestEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TQuoteRequestEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TQuoteRequestEntityFactory.getInstance: TQuoteRequestEntityFactory;
begin
        Exit(TQuoteRequestEntityFactory.instance);
end;
    

constructor TQuoteRequestEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TQuoteRequestEntityFactory.getQuoteRequestEntityInstance: TQuoteRequestEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TQuoteRequestEntity.Create());
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
  TQuoteRequestEntityFactory.instance := TQuoteRequestEntityFactory.Create();
  {AB:END}

end.

