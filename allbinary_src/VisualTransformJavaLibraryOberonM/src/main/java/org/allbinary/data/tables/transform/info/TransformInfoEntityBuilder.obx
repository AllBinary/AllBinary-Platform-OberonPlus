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
// package org.allbinary.data.tables.transform.info
unit TransformInfoEntityBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoEntity;

type
  {AB:TYPES}
  TTransformInfoEntityBuilder = class(TObject)
  public
    constructor Create;
        class function getInstance: TTransformInfoEntity; static;
  end;

implementation
uses
  TransformInfoEntityFactory, TransformInfoHttpStoreFactory, TransformInfoObjectConfigAndManipulatorFactory, TransformInfoObjectConfigGeneratorFactory;


{AB:CODE}

constructor TTransformInfoEntityBuilder.Create;
begin
  inherited Create;
end;
    

class function TTransformInfoEntityBuilder.getInstance: TTransformInfoEntity;
begin
        Exit(TTransformInfoEntityFactory.getInstance(TTransformInfoObjectConfigGeneratorFactory.getInstance(), TTransformInfoObjectConfigAndManipulatorFactory.getInstance(), TTransformInfoHttpStoreFactory.getInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

