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
// package org.allbinary.game.displayable.canvas
unit EndGameInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, MyCanvas;

type
  {AB:TYPES}
  TEndGameInfo = class(TObject)
  public
    NORMAL_GAME_OVER: string;
    NORMAL_GAME_OVER_WIN: string;
    gameOverStr: string;
    winStr: string;
    procedure InitFields;
        constructor Create;
        procedure update(gameInfo_: TGameInfo; myCanvas_: TMyCanvas); virtual;
        function getGameOverStr: string; virtual;
        procedure setGameOverStr(gameOverStr: string); virtual;
        function getWinStr: string; virtual;
        procedure setWinStr(winStr: string); virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TEndGameInfo.InitFields;
begin
  Self.NORMAL_GAME_OVER := 'Game Over';
  Self.NORMAL_GAME_OVER_WIN := 'You Won';
  Self.gameOverStr := TStringUtil.getInstance().EMPTY_STRING;
  Self.winStr := Self.gameOverStr;
end;
    

constructor TEndGameInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TEndGameInfo.update(gameInfo_: TGameInfo; myCanvas_: TMyCanvas);
begin
        Self.setGameOverStr(Self.NORMAL_GAME_OVER);
        Self.setWinStr(Self.NORMAL_GAME_OVER_WIN);
end;
    

function TEndGameInfo.getGameOverStr: string;
begin
        Exit(Self.gameOverStr);
end;
    

procedure TEndGameInfo.setGameOverStr(gameOverStr: string);
begin
        Self.gameOverStr := gameOverStr;
end;
    

function TEndGameInfo.getWinStr: string;
begin
        Exit(Self.winStr);
end;
    

procedure TEndGameInfo.setWinStr(winStr: string);
begin
        Self.winStr := winStr;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

