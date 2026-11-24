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
unit CustomLoaderHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TCustomLoaderHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface): TObject; overload; virtual;
  end;

implementation
uses
  HelperFactory, LicensingException, ServiceClientInformationInterfaceFactory;


{AB:CODE}

function TCustomLoaderHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomLoaderHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TCustomLoaderHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
var
  abeClientInformation: IAbeClientInformationInterface;
begin
        abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
        Exit(TJava.Box(THelperFactory.getInstance(abeClientInformation, TCustomLoaderHelperFactory.FACTORYNAME, TCustomLoaderHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;
    

// throws LicensingException
function TCustomLoaderHelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(abeClientInformation, TCustomLoaderHelperFactory.FACTORYNAME, TCustomLoaderHelperFactory.CLASSNAME)));
end;

initialization
  {AB:INITIALIZATION}
  TCustomLoaderHelperFactory.CLASSNAME := 'admin.taghelpers.CustomLoaderHelper';
  TCustomLoaderHelperFactory.FACTORYNAME := 'CustomLoaderHelperFactory';
  {AB:END}

end.

