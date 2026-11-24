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
// package org.allbinary.logic.communication.log.config.type
unit LogConfigTypesData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogConfigTypesData = class(TObject)
  public
    NAME: string;
    DESCRIPTION: string;
    class var instance: TLogConfigTypesData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLogConfigTypesData; static;
  end;

implementation

{AB:CODE}

procedure TLogConfigTypesData.InitFields;
begin
  Self.NAME := 'LOG_CONFIG_TYPES_NAME';
  Self.DESCRIPTION := 'LOG_CONFIG_TYPES_DESCRIPTION';
end;

constructor TLogConfigTypesData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLogConfigTypesData.getInstance: TLogConfigTypesData;
begin
        Exit(TLogConfigTypesData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypesData.instance := TLogConfigTypesData.Create();
  {AB:END}

end.

