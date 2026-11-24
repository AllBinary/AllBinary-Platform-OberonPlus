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
// package taghelpers.transform.info
unit TransformInfoRequestHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface;

type
  {AB:TYPES}
  TTransformInfoRequestHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; virtual;
  end;

implementation
uses
  LicensingException, HelperFactory;


{AB:CODE}

function TTransformInfoRequestHelperFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoRequestHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TTransformInfoRequestHelperFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
begin
        Exit(TJava.Box(THelperFactory.getInstance(TTransformInfoRequestHelperFactory.FACTORYNAME, TTransformInfoRequestHelperFactory.CLASSNAME, hashMap_, pageContext_)));
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoRequestHelperFactory.CLASSNAME := 'taghelpers.transform.info.TransformInfoRequestHelper';
  TTransformInfoRequestHelperFactory.FACTORYNAME := 'TransformInfoRequestHelperFactory';
  {AB:END}

end.

