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
// package org.allbinary.bundle.logic.system.loader
unit CryptServiceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle, ServiceFactory, ServiceRegistration, LogUtil, CommonStrings, CryptService;

type
  {AB:TYPES}
  TCryptServiceFactory = class(TInterfacedObject, IServiceFactory)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    cryptService: TCryptService;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getService(bundle_: TBundle; registration: TServiceRegistration): TObject; virtual;
        procedure ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject); virtual;
  end;

implementation

{AB:CODE}

procedure TCryptServiceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.cryptService := TCryptService.Create();
end;

function TCryptServiceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCryptServiceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCryptServiceFactory.getService(bundle_: TBundle; registration: TServiceRegistration): TObject;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getService');
        Exit(TJava.Box(Self.cryptService));
end;
    

procedure TCryptServiceFactory.ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

