{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.state
unit RaceGameStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameState;

type
  {AB:TYPES}
  TRaceGameStateFactory = class(TObject)
  public
    START_GAME_STATE: TGameState;
    YELLOW_LIGHT_GAME_STATE: TGameState;
    RED_LIGHT_GAME_STATE: TGameState;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRaceGameStateFactory; static;
  end;

implementation
uses
  GameStateFactory, NullUtil;


{AB:CODE}

procedure TRaceGameStateFactory.InitFields;
begin
  Self.START_GAME_STATE := TGameStateFactory.getInstance().createGameState('START_GAME_STATE');
  Self.YELLOW_LIGHT_GAME_STATE := TGameStateFactory.getInstance().createGameState('YELLOW_LIGHT_GAME_STATE');
  Self.RED_LIGHT_GAME_STATE := TGameStateFactory.getInstance().createGameState('RED_LIGHT_GAME_STATE');
end;

constructor TRaceGameStateFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRaceGameStateFactory.getInstance: TRaceGameStateFactory;
begin
        if (TRaceGameStateFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TRaceGameStateFactory.instance := TRaceGameStateFactory.Create();
        end;
        Exit(TRaceGameStateFactory(TJava.ToObject(TRaceGameStateFactory.instance)));
end;

initialization
  {AB:INITIALIZATION}
  TRaceGameStateFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

