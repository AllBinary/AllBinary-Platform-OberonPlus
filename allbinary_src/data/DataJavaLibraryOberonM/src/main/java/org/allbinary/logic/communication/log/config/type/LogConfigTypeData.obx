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
unit LogConfigTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogConfigTypeData = class(TObject)
  public
    NAME: string;
    DESCRIPTION: string;
    class var instance: TLogConfigTypeData;
    procedure InitFields;
        class function getInstance: TLogConfigTypeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TLogConfigTypeData.InitFields;
begin
  Self.NAME := 'LOG_CONFIG_TYPE_NAME';
  Self.DESCRIPTION := 'LOG_CONFIG_TYPE_DESCRIPTION';
end;
    

class function TLogConfigTypeData.getInstance: TLogConfigTypeData;
begin
        Exit(TLogConfigTypeData.instance);
end;
    

constructor TLogConfigTypeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypeData.instance := TLogConfigTypeData.Create();
  {AB:END}

end.

