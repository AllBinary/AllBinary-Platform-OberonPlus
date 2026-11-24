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
unit UpdateOrderHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TUpdateOrderHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
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

function TUpdateOrderHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUpdateOrderHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TUpdateOrderHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TUpdateOrderHelperFactory.FACTORYNAME, TUpdateOrderHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;

initialization
  {AB:INITIALIZATION}
  TUpdateOrderHelperFactory.CLASSNAME := 'admin.taghelpers.UpdateOrderHelper';
  TUpdateOrderHelperFactory.FACTORYNAME := 'UpdateOrderHelperFactory';
  {AB:END}

end.

