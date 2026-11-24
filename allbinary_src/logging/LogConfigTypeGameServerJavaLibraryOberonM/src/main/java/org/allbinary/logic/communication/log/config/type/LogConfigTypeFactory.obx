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
unit LogConfigTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogConfigTypeFactory, LogConfigType;

type
  {AB:TYPES}
  TLogConfigTypeFactory = class(TObject)
  public
    NO_DESCRIPTION: string;
    INIT_SERVER: TLogConfigType;
    LOBBY_SERVER: TLogConfigType;
    GAME_SERVER: TLogConfigType;
    GAME_SIMULATOR: TLogConfigType;
    CUSTOM_TYPES: TLogConfigType;
    class var instance: TLogConfigTypeFactory;
    procedure InitFields;
        class function getInstance: TLogConfigTypeFactory; static;
        constructor Create;
  end;

implementation
uses
  LogConfigTypes;


{AB:CODE}

procedure TLogConfigTypeFactory.InitFields;
begin
  Self.NO_DESCRIPTION := 'No Description';
  Self.INIT_SERVER := TLogConfigType.Create('Init Server', Self.NO_DESCRIPTION);
  Self.LOBBY_SERVER := TLogConfigType.Create('Lobby Server', Self.NO_DESCRIPTION);
  Self.GAME_SERVER := TLogConfigType.Create('Game Server', Self.NO_DESCRIPTION);
  Self.GAME_SIMULATOR := TLogConfigType.Create('Game Simulator', Self.NO_DESCRIPTION);
  Self.CUSTOM_TYPES := TLogConfigType.Create('Custom Types', Self.NO_DESCRIPTION);
end;
    

class function TLogConfigTypeFactory.getInstance: TLogConfigTypeFactory;
begin
        Exit(TLogConfigTypeFactory.instance);
end;
    

constructor TLogConfigTypeFactory.Create;
begin
    inherited Create;
    InitFields;
        TLogConfigTypes.LOGGING.add(Self.INIT_SERVER);
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypeFactory.instance := TLogConfigTypeFactory.Create();
  {AB:END}

end.

