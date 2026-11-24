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
// package org.allbinary.input.automation
unit AbstractInputRobot;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Point, Rectangle;

type
  {AB:TYPES}
  TAbstractInputRobot = class(TObject)
  public
    logUtil: TLogUtil;
    helpSet: THelpSet;
    procedure InitFields;
        constructor Create(helpSet_: THelpSet);
        function getHelpSet: THelpSet; virtual;
        procedure mouseMove(point_: TPoint); overload; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer); overload; virtual;
        procedure mouseMoveToTarget(rectangle_: TRectangle); overload; virtual;
        procedure mouseMove(x: Integer; y: Integer); overload; virtual;
        procedure setHelpSet(helpSet_: THelpSet);
  end;

implementation
uses
  PointHelper;


{AB:CODE}

procedure TAbstractInputRobot.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TAbstractInputRobot.Create(helpSet_: THelpSet);
begin
    inherited Create;
    InitFields;
        Self.setHelpSet(helpSet_);
end;
    

function TAbstractInputRobot.getHelpSet: THelpSet;
begin
        Exit(Self.helpSet);
end;
    

procedure TAbstractInputRobot.mouseMove(point_: TPoint);
begin
        Self.mouseMove(point_.x, point_.y);
        Self.logUtil.putF('Moved Mouse To: x: ' + TJava.ToString(point_.x) + ' y: ' + TJava.ToString(point_.y), TJava.Box(Self), 'moveMouse');
end;
    

// throws Exception
procedure TAbstractInputRobot.mouseMoveToTarget(rectangle_: TRectangle; x: Integer; y: Integer);
var
  point_: TPoint;
begin
        point_ := TPointHelper.getCenterPoint(rectangle_);
        Self.mouseMove((point_.x) + (x), (point_.y) + (y));
        Self.logUtil.putF('Moved Mouse To: x: ' + TJava.ToString(point_.x) + ' y: ' + TJava.ToString(point_.y) + ' in the middle of: ' + TJava.ToString(rectangle_), TJava.Box(Self), 'moveMouseToTarget');
end;
    

// throws Exception
procedure TAbstractInputRobot.mouseMoveToTarget(rectangle_: TRectangle);
begin
        Self.mouseMoveToTarget(rectangle_, 0, 0);
end;
    

procedure TAbstractInputRobot.mouseMove(x: Integer; y: Integer);
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TAbstractInputRobot.setHelpSet(helpSet_: THelpSet);
begin
        Self.helpSet := helpSet_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

