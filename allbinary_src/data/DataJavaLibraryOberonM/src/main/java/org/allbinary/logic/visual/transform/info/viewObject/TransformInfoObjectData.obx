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
// package org.allbinary.logic.visual.transform.info.viewObject
unit TransformInfoObjectData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTransformInfoObjectData = class(TObject)
  public
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TTransformInfoObjectData;
    procedure InitFields;
        class function getInstance: TTransformInfoObjectData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTransformInfoObjectData.InitFields;
begin
  Self.UNCRYPTED_EXTENSION := 'class';
  Self.ENCRYPTED_EXTENSION := 'abw';
end;
    

class function TTransformInfoObjectData.getInstance: TTransformInfoObjectData;
begin
        Exit(TTransformInfoObjectData.instance);
end;
    

constructor TTransformInfoObjectData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoObjectData.instance := TTransformInfoObjectData.Create();
  {AB:END}

end.

