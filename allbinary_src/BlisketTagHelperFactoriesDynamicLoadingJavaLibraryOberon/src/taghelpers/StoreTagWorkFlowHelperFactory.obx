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
// package taghelpers
unit StoreTagWorkFlowHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TStoreTagWorkFlowHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; virtual;
  end;

implementation
uses
  HelperFactory, LicensingException;


{AB:CODE}

function TStoreTagWorkFlowHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreTagWorkFlowHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception, LicensingException
function TStoreTagWorkFlowHelperFactory.getInstance(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TStoreTagWorkFlowHelperFactory.FACTORYNAME, TStoreTagWorkFlowHelperFactory.CLASSNAME, propertiesHashMap, pageContext_)));
end;

initialization
  {AB:INITIALIZATION}
  TStoreTagWorkFlowHelperFactory.CLASSNAME := 'taghelpers.StoreTagWorkFlowHelper';
  TStoreTagWorkFlowHelperFactory.FACTORYNAME := 'taghelpers.StoreTagWorkFlowHelperFactory';
  {AB:END}

end.

