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
// package org.allbinary.game.score.remote
unit RemoteHighScoresData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRemoteHighScoresData = class(TObject)
  public
    HIGH_SCORES: string;
    CUSTOMER_USER_NAME: string;
    DISPLAY_NAME: string;
    SCORE: string;
    GAME_INFO: string;
    GAME_CONFIGURATION: string;
    class var SINGLETON: TRemoteHighScoresData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRemoteHighScoresData; static;
  end;

implementation

{AB:CODE}

procedure TRemoteHighScoresData.InitFields;
begin
  Self.HIGH_SCORES := 'HIGH_SCORES';
  Self.CUSTOMER_USER_NAME := 'CUSTOMER_USER_NAME';
  Self.DISPLAY_NAME := 'DISPLAY_NAME';
  Self.SCORE := 'SCORE';
  Self.GAME_INFO := 'GAME_INFO';
  Self.GAME_CONFIGURATION := 'GAME_CONFIGURATION';
end;

constructor TRemoteHighScoresData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRemoteHighScoresData.getInstance: TRemoteHighScoresData;
begin
        Exit(TRemoteHighScoresData.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TRemoteHighScoresData.SINGLETON := TRemoteHighScoresData.Create();
  {AB:END}

end.

