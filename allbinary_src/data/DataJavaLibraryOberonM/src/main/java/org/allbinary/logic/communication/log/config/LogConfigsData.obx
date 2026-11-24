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
// package org.allbinary.logic.communication.log.config
unit LogConfigsData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogConfigsData = class(TObject)
  public
    NAME: string;
    class var instance: TLogConfigsData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLogConfigsData; static;
  end;

implementation

{AB:CODE}

procedure TLogConfigsData.InitFields;
begin
  Self.NAME := 'LOG_CONFIGS_NAME';
end;

constructor TLogConfigsData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLogConfigsData.getInstance: TLogConfigsData;
begin
        Exit(TLogConfigsData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigsData.instance := TLogConfigsData.Create();
  {AB:END}

end.

