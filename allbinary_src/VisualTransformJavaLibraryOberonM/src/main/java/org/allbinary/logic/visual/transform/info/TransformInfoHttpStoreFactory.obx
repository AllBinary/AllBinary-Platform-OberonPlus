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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoHttpStoreFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoInterface, TransformInfoFactoryInterface;

type
  {AB:TYPES}
  TTransformInfoHttpStoreFactory = class(TInterfacedObject, ITransformInfoFactoryInterface)
  public
    class var instance: TTransformInfoHttpStoreFactory;
    function JavaObject: TObject;
        class function getInstance: TTransformInfoHttpStoreFactory; overload; static;
        constructor Create;
        function getInstance(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface; overload; virtual;
  end;

implementation
uses
  TransformInfoHttpStore;


{AB:CODE}

function TTransformInfoHttpStoreFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TTransformInfoHttpStoreFactory.getInstance: TTransformInfoHttpStoreFactory;
begin
        Exit(TTransformInfoHttpStoreFactory.instance);
end;
    

constructor TTransformInfoHttpStoreFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TTransformInfoHttpStoreFactory.getInstance(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface;
begin
        Exit(TTransformInfoHttpStore.Create(databaseHashMap, propertiesHashMap, pageContext_));
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoHttpStoreFactory.instance := TTransformInfoHttpStoreFactory.Create();
  {AB:END}

end.

