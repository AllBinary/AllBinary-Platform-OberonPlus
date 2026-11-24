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
unit InputRobot;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Robot, GraphicsDevice, Point, Rectangle, Color, InputRobotInterface;

type
  {AB:TYPES}
  TInputRobot = class(TInterfacedObject, IInputRobotInterface)
  public
    logUtil: TLogUtil;
    robot: TRobot;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(graphicsDevice_: TGraphicsDevice);
        function getName: string; virtual;
        function getHelpSet: THelpSet; virtual;
        function getMousePoint: TPoint; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer); overload; virtual;
        procedure mouseMove(point_: TPoint); overload; virtual;
        procedure mouseMove(x: Integer; y: Integer); overload; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle); overload; virtual;
        function createScreenCapture(screenRect: TRectangle): TBufferedImage; virtual;
        procedure delay(ms: Integer); virtual;
        function getAutoDelay: Integer; virtual;
        function getPixelColor(x: Integer; y: Integer): TColor; virtual;
        function isAutoWaitForIdle: Boolean; virtual;
        procedure keyPress(keycode: Integer); virtual;
        procedure keyRelease(keycode: Integer); virtual;
        procedure mouseMove(x: Integer; y: Integer); overload; virtual;
        procedure mousePress(buttons: Integer); virtual;
        procedure mouseRelease(buttons: Integer); virtual;
        procedure mouseWheel(wheelAmt: Integer); virtual;
        procedure setAutoDelay(ms: Integer); virtual;
        procedure setAutoWaitForIdle(isOn: Boolean); virtual;
        function toString: string; virtual;
        procedure waitForIdle; virtual;
        procedure on_; virtual;
        procedure off; virtual;
  end;

implementation
uses
  MouseInfo, PointHelper, StringMaker, StringUtil;


{AB:CODE}

procedure TInputRobot.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TInputRobot.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputRobot.Create(graphicsDevice_: TGraphicsDevice);
begin
    inherited Create;
    InitFields;
        Self.robot := TRobot.Create(graphicsDevice_);
end;
    

function TInputRobot.getName: string;
begin
        Exit(TInputRobot.NAME);
end;
    

function TInputRobot.getHelpSet: THelpSet;
begin
        Exit(nil);
end;
    

function TInputRobot.getMousePoint: TPoint;
var
  point_: TPoint;
begin
        point_ := TMouseInfo.getPointerInfo().getLocation();
        Exit(point_);
end;
    

// throws Exception
procedure TInputRobot.mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer);
var
  point_: TPoint;
  message: string;
begin
        point_ := TPointHelper.getCenterPoint(rectangle_);
        Self.robot.mouseMove((point_.x) + (x), (point_.y) + (y));
        message := TStringMaker.Create().append('Moved Mouse To: x: ').appendint(Integer(Trunc(point_.x))).append(' y: ').appendint(Integer(Trunc(point_.y))).append(' in the middle of: ').append(TStringUtil.getInstance().toString(rectangle_)).toString();
        Self.logUtil.putF(message, TJava.Box(Self), 'moveMouseToTarget');
end;
    

procedure TInputRobot.mouseMove(point_: TPoint);
begin
        Self.mouseMove(point_.x, point_.y);
end;
    

procedure TInputRobot.mouseMove(x: Integer; y: Integer);
var
  message: string;
begin
        Self.robot.mouseMove(x, y);
        message := TStringMaker.Create().append('Moved Mouse To: x: ').appendint(x).append(' y: ').appendint(y).toString();
        Self.logUtil.putF(message, TJava.Box(Self), 'moveMouse');
end;
    

// throws Exception
procedure TInputRobot.mouseMoveToTarget(rectangle_: TRectangle);
begin
        Self.mouseMoveToTarget(rectangle_, 0, 0);
end;
    

function TInputRobot.createScreenCapture(screenRect: TRectangle): TBufferedImage;
begin
        Exit(Self.robot.createScreenCapture(screenRect));
end;
    

procedure TInputRobot.delay(ms: Integer);
begin
        Self.robot.delay(ms);
end;
    

function TInputRobot.getAutoDelay: Integer;
begin
        Exit(Self.robot.getAutoDelay());
end;
    

function TInputRobot.getPixelColor(x: Integer; y: Integer): TColor;
begin
        Exit(Self.robot.getPixelColor(x, y));
end;
    

function TInputRobot.isAutoWaitForIdle: Boolean;
begin
        Exit(Self.robot.isAutoWaitForIdle());
end;
    

procedure TInputRobot.keyPress(keycode: Integer);
begin
        Self.robot.keyPress(keycode);
end;
    

procedure TInputRobot.keyRelease(keycode: Integer);
begin
        Self.robot.keyRelease(keycode);
end;
    

procedure TInputRobot.mouseMove(x: Integer; y: Integer);
begin
        Self.robot.mouseMove(x, y);
end;
    

procedure TInputRobot.mousePress(buttons: Integer);
begin
        Self.robot.mousePress(buttons);
end;
    

procedure TInputRobot.mouseRelease(buttons: Integer);
begin
        Self.robot.mouseRelease(buttons);
end;
    

procedure TInputRobot.mouseWheel(wheelAmt: Integer);
begin
        Self.robot.mouseWheel(wheelAmt);
end;
    

procedure TInputRobot.setAutoDelay(ms: Integer);
begin
        Self.robot.setAutoDelay(ms);
end;
    

procedure TInputRobot.setAutoWaitForIdle(isOn: Boolean);
begin
        Self.robot.setAutoWaitForIdle(isOn);
end;
    

function TInputRobot.toString: string;
begin
        Exit(Self.robot.toString());
end;
    

procedure TInputRobot.waitForIdle;
begin
        Self.robot.waitForIdle();
end;
    

procedure TInputRobot.on_;
begin
end;
    

procedure TInputRobot.off;
begin
end;

initialization
  {AB:INITIALIZATION}
  TInputRobot.NAME := 'Java Robot';
  {AB:END}

end.

