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
unit TransformInfoHttpStoreNoManipulation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoHttpStore;

type
  {AB:TYPES}
  TTransformInfoHttpStoreNoManipulation = class(TTransformInfoHttpStore)
  public
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure setObjectConfigFile(value: string); virtual;
        procedure setObjectConfig(value: string); virtual;
  end;

implementation
uses
  TransformInfoObjectConfigNoManipulationFactory;


{AB:CODE}
    

constructor TTransformInfoHttpStoreNoManipulation.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
end;
    

// throws Exception
procedure TTransformInfoHttpStoreNoManipulation.setObjectConfigFile(value: string);
begin
        Self.setObjectConfigFileName(value);
        Self.setObjectConfigInterface(TTransformInfoObjectConfigNoManipulationFactory.getInstance().getInstance(Self, Self.getObjectConfigFilePath()));
end;
    

// throws Exception
procedure TTransformInfoHttpStoreNoManipulation.setObjectConfig(value: string);
begin
        raise SysUtils.Exception.Create('Should not set from config');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

