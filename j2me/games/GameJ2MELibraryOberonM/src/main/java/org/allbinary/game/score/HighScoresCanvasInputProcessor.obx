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
// package org.allbinary.game.score
unit HighScoresCanvasInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, PlayerGameInput, GameKeyEvent, HighScoresCanvas;

type
  {AB:TYPES}
  THighScoresCanvasInputProcessor = class(TPlayerGameInput)
  public
    highScoresCanvas: THighScoresCanvas;
    procedure InitFields;
        constructor Create(highScoresCanvas_: THighScoresCanvas);
        procedure open; virtual;
        procedure close; virtual;
        procedure onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure paint(graphics_: TGraphics); virtual;
        function getHighScoresCanvas: THighScoresCanvas; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure THighScoresCanvasInputProcessor.InitFields;
begin
  
end;
    

constructor THighScoresCanvasInputProcessor.Create(highScoresCanvas_: THighScoresCanvas);
begin
        inherited Create(TBasicArrayListD.Create(), TBasicArrayListD.Create(), -1);
        InitFields;
        Self.highScoresCanvas := highScoresCanvas_;
end;
    

procedure THighScoresCanvasInputProcessor.open;
begin
end;
    

procedure THighScoresCanvasInputProcessor.close;
begin
end;
    

procedure THighScoresCanvasInputProcessor.onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onPressGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onDownGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onUpGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.paint(graphics_: TGraphics);
begin
end;
    

function THighScoresCanvasInputProcessor.getHighScoresCanvas: THighScoresCanvas;
begin
        Exit(Self.highScoresCanvas);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

