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
// package org.allbinary.business.context
unit AbContext;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSessionInterface, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TAbContext = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getWeblisketSession: IWeblisketSessionInterface; virtual;
        function getPageContext: TPageContext; virtual;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  WeblisketSession;


{AB:CODE}

procedure TAbContext.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

constructor TAbContext.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.propertiesHashMap := propertiesHashMap;
        Self.pageContext := pageContext_;
end;
    

function TAbContext.getWeblisketSession: IWeblisketSessionInterface;
begin
        Exit(TWeblisketSession.Create(Self.propertiesHashMap, Self.pageContext));
end;
    

function TAbContext.getPageContext: TPageContext;
begin
        Exit(Self.pageContext);
end;
    

function TAbContext.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.propertiesHashMap);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

