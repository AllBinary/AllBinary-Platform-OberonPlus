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
// package org.allbinary.input.automation.module
unit MotionRectangleConstraints;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionRectangleConstraintsInterface, Dimension, Rectangle;

type
  {AB:TYPES}
  TMotionRectangleConstraints = class(TInterfacedObject, IMotionRectangleConstraintsInterface)
  public
    minDimension: TDimension;
    maxDimension: TDimension;
    maxMotionRectangles: Integer;
    minArea: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getMinDimension: TDimension; virtual;
        function getMaxDimension: TDimension; virtual;
        function isTooSmall(rectangle_: TRectangle): Boolean; virtual;
        function isAreaTooSmall(rectangle_: TRectangle): Boolean; virtual;
        function isTooBig(rectangle_: TRectangle): Boolean; virtual;
        function isValid(frame: Int64; bufferedImage_: TBufferedImage; rectangle_: TRectangle): Boolean; virtual;
        procedure setMinDimension(minDimension: TDimension); virtual;
        procedure setMaxDimension(maxDimension: TDimension); virtual;
        function getMaxMotionRectangles: Integer; virtual;
        procedure setMaxMotionRectangles(maxMotionRectangles: Integer); virtual;
        function getMinArea: Integer; virtual;
        procedure setMinArea(minArea: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TMotionRectangleConstraints.InitFields;
begin
  
  
  
  
end;

function TMotionRectangleConstraints.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMotionRectangleConstraints.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TMotionRectangleConstraints.getMinDimension: TDimension;
begin
        Exit(Self.minDimension);
end;
    

function TMotionRectangleConstraints.getMaxDimension: TDimension;
begin
        Exit(Self.maxDimension);
end;
    

function TMotionRectangleConstraints.isTooSmall(rectangle_: TRectangle): Boolean;
begin
        if ((rectangle_.width) < (Self.getMinDimension().width)) or ((rectangle_.height) < (Self.getMinDimension().height)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TMotionRectangleConstraints.isAreaTooSmall(rectangle_: TRectangle): Boolean;
begin
        if ((rectangle_.width) * (rectangle_.height)) < (Self.getMinArea()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TMotionRectangleConstraints.isTooBig(rectangle_: TRectangle): Boolean;
begin
        if ((rectangle_.width) > (Self.getMaxDimension().width)) or ((rectangle_.height) > (Self.getMaxDimension().height)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TMotionRectangleConstraints.isValid(frame: Int64; bufferedImage_: TBufferedImage; rectangle_: TRectangle): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TMotionRectangleConstraints.setMinDimension(minDimension: TDimension);
begin
        Self.minDimension := minDimension;
end;
    

procedure TMotionRectangleConstraints.setMaxDimension(maxDimension: TDimension);
begin
        Self.maxDimension := maxDimension;
end;
    

function TMotionRectangleConstraints.getMaxMotionRectangles: Integer;
begin
        Exit(Self.maxMotionRectangles);
end;
    

procedure TMotionRectangleConstraints.setMaxMotionRectangles(maxMotionRectangles: Integer);
begin
        Self.maxMotionRectangles := maxMotionRectangles;
end;
    

function TMotionRectangleConstraints.getMinArea: Integer;
begin
        Exit(Self.minArea);
end;
    

procedure TMotionRectangleConstraints.setMinArea(minArea: Integer);
begin
        Self.minArea := minArea;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

