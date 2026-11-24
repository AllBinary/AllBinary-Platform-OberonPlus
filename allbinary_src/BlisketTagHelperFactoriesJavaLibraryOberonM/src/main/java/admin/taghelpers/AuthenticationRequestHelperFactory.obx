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
// package admin.taghelpers
unit AuthenticationRequestHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TagHelperFactory;

type
  {AB:TYPES}
  TAuthenticationRequestHelperFactory = class(TTagHelperFactory)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; overload; virtual;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject; overload; virtual;
  end;

implementation
uses
  AuthenticationRequestHelper, LicensingException;


{AB:CODE}

procedure TAuthenticationRequestHelperFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TAuthenticationRequestHelperFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException
function TAuthenticationRequestHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        try
            Exit(TJava.Box(TAuthenticationRequestHelper.Create(hashMap_, pageContext_)));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationRequestHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject;
begin
        try
            Exit(TJava.Box(TAuthenticationRequestHelper.Create(hashMap_, httpServletRequest_)));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

