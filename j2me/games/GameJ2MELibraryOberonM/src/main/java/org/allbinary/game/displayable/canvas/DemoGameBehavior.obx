{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit DemoGameBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TDemoGameBehavior = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TDemoGameBehavior;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDemoGameBehavior; static;
        procedure init; virtual;
        procedure pause(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure run(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean); virtual;
  end;

implementation
uses
  GameTypeFactory, NullPaintable, CommonStrings;


{AB:CODE}

procedure TDemoGameBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TDemoGameBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDemoGameBehavior.getInstance: TDemoGameBehavior;
begin
        Exit(TDemoGameBehavior.instance);
end;
    

// throws Exception
procedure TDemoGameBehavior.init;
begin
end;
    

procedure TDemoGameBehavior.pause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TDemoGameBehavior.unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.setTouchPaintableP(TNullPaintable.getInstance());
end;
    

// throws Exception
procedure TDemoGameBehavior.setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TDemoGameBehavior.removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.run(allBinaryGameCanvas_: TAllBinaryGameCanvas);
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TGameTypeFactory.getInstance().BOT.toString(), TJava.Box(Self), commonStrings_.RUN);
end;
    

// throws Exception
procedure TDemoGameBehavior.setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  TDemoGameBehavior.instance := TDemoGameBehavior.Create();
  {AB:END}

end.

