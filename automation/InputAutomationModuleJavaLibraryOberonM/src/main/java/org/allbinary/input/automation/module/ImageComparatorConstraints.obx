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
unit ImageComparatorConstraints;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GPoint, LogUtil, ImageComparatorConstraintsInterface;

type
  {AB:TYPES}
  TImageComparatorConstraints = class(TInterfacedObject, IImageComparatorConstraintsInterface)
  public
    logUtil: TLogUtil;
    avoidVector: TBasicArrayList;
    maxNonMatchingPixelDeltas: Integer;
    doImageComparisonEveryNthFrame: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(doImageComparisonEveryNthFrame: Integer);
        function getAvoidVector: TBasicArrayList; virtual;
        function isColorAllowed(frame: Integer; point: TGPoint; color_: TColor): Boolean; virtual;
        function isCollisionWithAvoidRectangles(rectangle_: TRectangle): Boolean; overload; virtual;
        function isCollisionWithAvoidRectangles(point: TGPoint): Boolean; overload; virtual;
        procedure setAvoidVector(avoidVector: TBasicArrayList); virtual;
        function getMaxNonMatchingPixelDeltas: Integer; virtual;
        procedure setMaxNonMatchingPixelDeltas(maxNonMatchingPixelDeltas: Integer); virtual;
        function isFrameAllowed(frame: Integer): Boolean; virtual;
        function isImageValid(bufferedImage_: TBufferedImage): Boolean; virtual;
        procedure log; virtual;
  end;

implementation
uses
  BasicArrayListD, RectangleCollisionUtil;


{AB:CODE}

procedure TImageComparatorConstraints.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TImageComparatorConstraints.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageComparatorConstraints.Create(doImageComparisonEveryNthFrame: Integer);
begin
    inherited Create;
    InitFields;
        Self.doImageComparisonEveryNthFrame := doImageComparisonEveryNthFrame;
        Self.setAvoidVector(TBasicArrayListD.Create());
end;
    

function TImageComparatorConstraints.getAvoidVector: TBasicArrayList;
begin
        Exit(Self.avoidVector);
end;
    

function TImageComparatorConstraints.isColorAllowed(frame: Integer; point: TGPoint; color_: TColor): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TImageComparatorConstraints.isCollisionWithAvoidRectangles(rectangle_: TRectangle): Boolean;
var
  isCollsionWithAvoidRectangles: Boolean;
  avoidVector: TBasicArrayList;
  size: Integer;
  avoidRectangle: TRectangle;
  index: Integer;
begin
        isCollsionWithAvoidRectangles := False;
        avoidVector := Self.getAvoidVector();
        size := avoidVector.size();
        for index := 0 to size - 1 do begin
            avoidRectangle := TRectangle(TJava.ToObject(avoidVector.get(index)));
            if TRectangleCollisionUtil.isCollision(avoidRectangle, rectangle_) then begin
                isCollsionWithAvoidRectangles := True;
            end;
        end;
        Exit(isCollsionWithAvoidRectangles);
end;
    

function TImageComparatorConstraints.isCollisionWithAvoidRectangles(point: TGPoint): Boolean;
var
  isCollsionWithAvoidRectangles: Boolean;
  avoidVector: TBasicArrayList;
  size: Integer;
  avoidRectangle: TRectangle;
  index: Integer;
begin
        isCollsionWithAvoidRectangles := False;
        avoidVector := Self.getAvoidVector();
        size := avoidVector.size();
        for index := 0 to size - 1 do begin
            avoidRectangle := TRectangle(TJava.ToObject(avoidVector.get(index)));
            if TRectangleCollisionUtil.isCollision(avoidRectangle, point) then begin
                isCollsionWithAvoidRectangles := True;
                Break;
            end;
        end;
        Exit(isCollsionWithAvoidRectangles);
end;
    

procedure TImageComparatorConstraints.setAvoidVector(avoidVector: TBasicArrayList);
begin
        Self.avoidVector := avoidVector;
end;
    

function TImageComparatorConstraints.getMaxNonMatchingPixelDeltas: Integer;
begin
        Exit(Self.maxNonMatchingPixelDeltas);
end;
    

procedure TImageComparatorConstraints.setMaxNonMatchingPixelDeltas(maxNonMatchingPixelDeltas: Integer);
begin
        Self.maxNonMatchingPixelDeltas := maxNonMatchingPixelDeltas;
end;
    

function TImageComparatorConstraints.isFrameAllowed(frame: Integer): Boolean;
var
  remainder: Integer;
begin
        remainder := ((((frame) + (1))) mod (Self.doImageComparisonEveryNthFrame));
        Self.logUtil.putF(' Frame: ' + IntToStr(frame) + ' remainder: ' + IntToStr(remainder) + ' this.doImageComparisonEveryNthFrame: ' + IntToStr(Self.doImageComparisonEveryNthFrame), TJava.Box(Self), 'isCollisionWithAvoidRectangles');
        if (remainder) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TImageComparatorConstraints.isImageValid(bufferedImage_: TBufferedImage): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TImageComparatorConstraints.log;
var
  avoidVector: TBasicArrayList;
  size: Integer;
  avoidRectangle: TRectangle;
  index: Integer;
begin
        avoidVector := Self.getAvoidVector();
        size := avoidVector.size();
        for index := 0 to size - 1 do begin
            avoidRectangle := TRectangle(TJava.ToObject(avoidVector.get(index)));
            Self.logUtil.putF('Avoid Rectangle: ' + TJava.ToString(avoidRectangle), TJava.Box(Self), 'log');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

