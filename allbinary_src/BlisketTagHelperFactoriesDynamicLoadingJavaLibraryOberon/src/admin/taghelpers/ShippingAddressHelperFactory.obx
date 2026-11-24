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
unit ShippingAddressHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TShippingAddressHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; virtual;
  end;

implementation
uses
  HelperFactory, LicensingException;


{AB:CODE}

function TShippingAddressHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShippingAddressHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TShippingAddressHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TShippingAddressHelperFactory.FACTORYNAME, TShippingAddressHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;

initialization
  {AB:INITIALIZATION}
  TShippingAddressHelperFactory.CLASSNAME := 'admin.taghelpers.ShippingAddressHelper';
  TShippingAddressHelperFactory.FACTORYNAME := 'ShippingAddressHelperFactory';
  {AB:END}

end.

