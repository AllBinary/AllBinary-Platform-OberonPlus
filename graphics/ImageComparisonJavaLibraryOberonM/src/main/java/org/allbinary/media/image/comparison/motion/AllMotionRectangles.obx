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
// package org.allbinary.media.image.comparison.motion
unit AllMotionRectangles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageComparisonResult, PixelDelta, MotionRectangle, MotionRectangles;

type
  {AB:TYPES}
  TAllMotionRectangles = class(TMotionRectangles)
  public
    class var NAME: string;
        constructor Create(imageComparisonResult_: TImageComparisonResult);
        procedure createMotionRectangles(imageComparisonInfo: TImageComparisonResult);
        function addPixelDeltaToExistingMotionRectangle(pixelDelta_: TPixelDelta): Boolean;
        procedure addPixelDeltaToAMotionRectangle(pixelDelta_: TPixelDelta);
        function shouldPixelDeltaPartOfMotionRectangle(motionRectangle_: TMotionRectangle; pixelDelta_: TPixelDelta): Boolean;
        function isPixelDeltaLikelyPartOfMotionRectangle(motionRectangle_: TMotionRectangle; pixelDelta_: TPixelDelta): Boolean;
  end;

implementation
uses
  Rectangle, BasicArrayList, BasicArrayListD;


{AB:CODE}
    

constructor TAllMotionRectangles.Create(imageComparisonResult_: TImageComparisonResult);
begin
        inherited Create(TAllMotionRectangles.NAME, imageComparisonResult_);
        Self.createMotionRectangles(imageComparisonResult_);
end;
    

// throws Exception
procedure TAllMotionRectangles.createMotionRectangles(imageComparisonInfo: TImageComparisonResult);
var
  vector: TBasicArrayList;
  size: Integer;
  pixelDelta_: TPixelDelta;
  index: Integer;
begin
        vector := imageComparisonInfo.getNonMatchingPixelVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            pixelDelta_ := TPixelDelta(TJava.ToObject(vector.get(index)));
            Self.addPixelDeltaToAMotionRectangle(pixelDelta_);
        end;
end;
    

// throws Exception
function TAllMotionRectangles.addPixelDeltaToExistingMotionRectangle(pixelDelta_: TPixelDelta): Boolean;
var
  vector: TBasicArrayList;
  size: Integer;
  motionRectangle_: TMotionRectangle;
  newWidth: Integer;
  newHeight: Integer;
  index: Integer;
begin
        vector := Self.getVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            motionRectangle_ := TMotionRectangle(TJava.ToObject(vector.get(index)));
            if Self.shouldPixelDeltaPartOfMotionRectangle(motionRectangle_, pixelDelta_) then begin
                newWidth := (pixelDelta_.getPoint().getX()) - (motionRectangle_.getRectangle().x);
                newHeight := (pixelDelta_.getPoint().getY()) - (motionRectangle_.getRectangle().y);
                if (newWidth) < (motionRectangle_.getRectangle().width) then begin
                    newWidth := motionRectangle_.getRectangle().width;
                end;
                if (newHeight) < (motionRectangle_.getRectangle().height) then begin
                    newHeight := motionRectangle_.getRectangle().height;
                end;
                motionRectangle_.getRectangle().setSize(newWidth, newHeight);
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TAllMotionRectangles.addPixelDeltaToAMotionRectangle(pixelDelta_: TPixelDelta);
var
  newRectangle: TRectangle;
  motionRectangle_: TMotionRectangle;
begin
        if not (Self.addPixelDeltaToExistingMotionRectangle(pixelDelta_)) then begin
            newRectangle := TRectangle.Create(pixelDelta_.getPoint().getX(), pixelDelta_.getPoint().getY(), 1, 1);
            motionRectangle_ := TMotionRectangle.Create(newRectangle);
            motionRectangle_.getPixelDeltaVector().add(pixelDelta_);
            Self.getVector().add(motionRectangle_);
        end;
end;
    

// throws Exception
function TAllMotionRectangles.shouldPixelDeltaPartOfMotionRectangle(motionRectangle_: TMotionRectangle; pixelDelta_: TPixelDelta): Boolean;
var
  isPixelLeftOfTheRectangle: Boolean;
begin
        isPixelLeftOfTheRectangle := False;
        if (motionRectangle_.getRectangle().y) > (pixelDelta_.getPoint().getY()) then begin
            raise SysUtils.Exception.Create('PixelAboveTheRectangle');
        end;
        if (motionRectangle_.getRectangle().x) > (pixelDelta_.getPoint().getX()) then begin
            isPixelLeftOfTheRectangle := True;
        end;
        if not (isPixelLeftOfTheRectangle) then begin
            Exit(Self.isPixelDeltaLikelyPartOfMotionRectangle(motionRectangle_, pixelDelta_));
        end;
        Exit(False);
end;
    

// throws Exception
function TAllMotionRectangles.isPixelDeltaLikelyPartOfMotionRectangle(motionRectangle_: TMotionRectangle; pixelDelta_: TPixelDelta): Boolean;
var
  maxX: Integer;
  maxY: Integer;
  horizontalDistance: Integer;
  verticalDistance: Integer;
begin
        maxX := (motionRectangle_.getRectangle().x) + (motionRectangle_.getRectangle().width);
        maxY := (motionRectangle_.getRectangle().y) + (motionRectangle_.getRectangle().height);
        horizontalDistance := (pixelDelta_.getPoint().getX()) - (maxX);
        verticalDistance := (pixelDelta_.getPoint().getY()) - (maxY);
        if ((horizontalDistance) < (Self.MAX_PIXEL_DISTANCE_THRESHOLD)) and ((verticalDistance) < (Self.MAX_PIXEL_DISTANCE_THRESHOLD)) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TAllMotionRectangles.NAME := 'allMotionRectangles_';
  {AB:END}

end.

