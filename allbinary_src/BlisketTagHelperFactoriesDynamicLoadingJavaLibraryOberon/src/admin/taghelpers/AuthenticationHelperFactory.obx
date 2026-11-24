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
unit AuthenticationHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TAuthenticationHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; overload; virtual;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject; overload; virtual;
  end;

implementation
uses
  HelperFactory, LicensingException;


{AB:CODE}

function TAuthenticationHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAuthenticationHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TAuthenticationHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TAuthenticationHelperFactory.FACTORYNAME, TAuthenticationHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;
    

// throws LicensingException
function TAuthenticationHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TAuthenticationHelperFactory.FACTORYNAME, TAuthenticationHelperFactory.CLASSNAME, hashMap_, httpServletRequest_)));
end;

initialization
  {AB:INITIALIZATION}
  TAuthenticationHelperFactory.CLASSNAME := 'admin.taghelpers.AuthenticationHelper';
  TAuthenticationHelperFactory.FACTORYNAME := 'AuthenticationHelperFactory';
  {AB:END}

end.

