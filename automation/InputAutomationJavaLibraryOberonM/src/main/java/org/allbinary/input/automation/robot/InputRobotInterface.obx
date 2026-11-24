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
unit InputRobotInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, Color, Point;

type
  {AB:TYPES}
  IInputRobotInterface = interface(IJavaObject) ['IInputRobotInterface']
        function getName: string;
        function getHelpSet: THelpSet;
        function createScreenCapture(screenRect: TRectangle): TBufferedImage;
        procedure delay(ms: Integer);
        function getAutoDelay: Integer;
        function getPixelColor(x: Integer; y: Integer): TColor;
        function isAutoWaitForIdle: Boolean;
        procedure keyPress(keycode: Integer);
        procedure keyRelease(keycode: Integer);
        function getMousePoint: TPoint;
        procedure mouseMove(x: Integer; y: Integer); overload;
        procedure mousePress(buttons: Integer);
        procedure mouseRelease(buttons: Integer);
        procedure mouseWheel(wheelAmt: Integer);
        procedure setAutoDelay(ms: Integer);
        procedure setAutoWaitForIdle(isOn: Boolean);
        function toString: string;
        procedure waitForIdle;
        procedure mouseMove(point_: TPoint); overload;
        procedure mouseMoveToTarget(rectangle_: TRectangle); overload;
        procedure mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer); overload;
  end;
  TInputRobotInterface = IInputRobotInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

