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
// package org.allbinary.business.context.configuration
unit ContextConfigurationData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TContextConfigurationData = class(TObject)
  public
    NAME: string;
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TContextConfigurationData;
    procedure InitFields;
        class function getInstance: TContextConfigurationData; static;
        constructor Create;
  end;

implementation
uses
  CommonDataFileStrings;


{AB:CODE}

procedure TContextConfigurationData.InitFields;
begin
  Self.NAME := 'CONTEXT_CONFIGURATION_NAME';
  Self.UNCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
  Self.ENCRYPTED_EXTENSION := TCommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
end;
    

class function TContextConfigurationData.getInstance: TContextConfigurationData;
begin
        Exit(TContextConfigurationData.instance);
end;
    

constructor TContextConfigurationData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TContextConfigurationData.instance := TContextConfigurationData.Create();
  {AB:END}

end.

