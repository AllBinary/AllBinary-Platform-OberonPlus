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
// package org.allbinary.input.automation.robot
unit NullInputRobot;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbstractInputRobot, LogUtil, Point, Rectangle, Color, InputRobotInterface;

type
  {AB:TYPES}
  TNullInputRobot = class(TAbstractInputRobot, IInputRobotInterface)
  public
    logUtil: TLogUtil;
    class var LIBRARY_NAME: string;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getName: string; virtual;
        function getHelpSet: THelpSet; virtual;
        function getMousePoint: TPoint; virtual;
        procedure keyPress(keycode: Integer); virtual;
        procedure keyRelease(keycode: Integer); virtual;
        procedure mouseMove(x: Integer; y: Integer); overload; virtual;
        procedure mousePress(buttons: Integer); virtual;
        procedure mouseRelease(buttons: Integer); virtual;
        function createScreenCapture(screenRect: TRectangle): TBufferedImage; virtual;
        procedure delay(ms: Integer); virtual;
        function getAutoDelay: Integer; virtual;
        function getPixelColor(x: Integer; y: Integer): TColor; virtual;
        function isAutoWaitForIdle: Boolean; virtual;
        procedure mouseWheel(wheelAmt: Integer); virtual;
        procedure setAutoDelay(ms: Integer); virtual;
        procedure setAutoWaitForIdle(isOn: Boolean); virtual;
        function toString: string; override;
        procedure waitForIdle; virtual;
        procedure mouseMove(point_: TPoint); overload; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle); overload; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer); overload; virtual;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

procedure TNullInputRobot.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TNullInputRobot.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullInputRobot.Create;
begin
        inherited Create(nil);
        InitFields;
end;
    

function TNullInputRobot.getName: string;
begin
        Exit(TNullInputRobot.NAME);
end;
    

function TNullInputRobot.getHelpSet: THelpSet;
begin
        Exit(nil);
end;
    

function TNullInputRobot.getMousePoint: TPoint;
begin
        Exit(TPointFactory.getInstance(0, 0));
end;
    

procedure TNullInputRobot.keyPress(keycode: Integer);
begin
        Self.logUtil.putF('KeyCode: ' + IntToStr(keycode), TJava.Box(Self), 'keyPress');
end;
    

procedure TNullInputRobot.keyRelease(keycode: Integer);
begin
        Self.logUtil.putF('KeyCode: ' + IntToStr(keycode), TJava.Box(Self), 'keyRelease');
end;
    

procedure TNullInputRobot.mouseMove(x: Integer; y: Integer);
begin
        Self.logUtil.putF('X: ' + IntToStr(x) + ' Y: ' + IntToStr(y), TJava.Box(Self), 'mouseMove');
end;
    

procedure TNullInputRobot.mousePress(buttons: Integer);
begin
        Self.logUtil.putF('Buttons: ' + IntToStr(buttons), TJava.Box(Self), 'mousePress');
end;
    

procedure TNullInputRobot.mouseRelease(buttons: Integer);
begin
        Self.logUtil.putF('Buttons: ' + IntToStr(buttons), TJava.Box(Self), 'mouseRelease');
end;
    

function TNullInputRobot.createScreenCapture(screenRect: TRectangle): TBufferedImage;
begin
        Exit(nil);
end;
    

procedure TNullInputRobot.delay(ms: Integer);
begin
end;
    

function TNullInputRobot.getAutoDelay: Integer;
begin
        Exit(-1);
end;
    

function TNullInputRobot.getPixelColor(x: Integer; y: Integer): TColor;
begin
        Exit(nil);
end;
    

function TNullInputRobot.isAutoWaitForIdle: Boolean;
begin
        Exit(False);
end;
    

procedure TNullInputRobot.mouseWheel(wheelAmt: Integer);
begin
end;
    

procedure TNullInputRobot.setAutoDelay(ms: Integer);
begin
end;
    

procedure TNullInputRobot.setAutoWaitForIdle(isOn: Boolean);
begin
end;
    

function TNullInputRobot.toString: string;
begin
        Exit('DirectXWindowsInputRobot');
end;
    

procedure TNullInputRobot.waitForIdle;
begin
end;
    

procedure TNullInputRobot.mouseMove(point_: TPoint);
begin
        inherited mouseMove(point_);
end;
    

// throws Exception
procedure TNullInputRobot.mouseMoveToTarget(rectangle_: TRectangle);
begin
        inherited mouseMoveToTarget(rectangle_);
end;
    

// throws Exception
procedure TNullInputRobot.mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer);
begin
        inherited mouseMoveToTarget(rectangle_, x, y);
end;

initialization
  {AB:INITIALIZATION}
  TNullInputRobot.LIBRARY_NAME := 'null';
  TNullInputRobot.NAME := 'NULL';
  {AB:END}

end.

