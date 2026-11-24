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
// package org.allbinary.logic.visual.transform.info.data
unit TransformInfoDataData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTransformInfoDataData = class(TObject)
  public
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TTransformInfoDataData;
    procedure InitFields;
        class function getInstance: TTransformInfoDataData; static;
        constructor Create;
  end;

implementation
uses
  CommonDataFileStrings;


{AB:CODE}

procedure TTransformInfoDataData.InitFields;
begin
  Self.UNCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
  Self.ENCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
end;
    

class function TTransformInfoDataData.getInstance: TTransformInfoDataData;
begin
        Exit(TTransformInfoDataData.instance);
end;
    

constructor TTransformInfoDataData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoDataData.instance := TTransformInfoDataData.Create();
  {AB:END}

end.

