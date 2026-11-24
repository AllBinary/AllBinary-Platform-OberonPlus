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
unit ConstrainedMotionRectangles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, MotionRectangleConstraintsInterface, MotionRectangles;

type
  {AB:TYPES}
  TConstrainedMotionRectangles = class(TMotionRectangles)
  public
    logUtil: TLogUtil;
    motionRectangleConstraintsInterface: IMotionRectangleConstraintsInterface;
    class var NAME: string;
    procedure InitFields;
        constructor Create(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface; motionRectangles_: TMotionRectangles);
        procedure applyMotionRectangleConstraints(motionRectangles_: TMotionRectangles); virtual;
        function getMotionRectangleConstraintsInterface: IMotionRectangleConstraintsInterface; virtual;
        procedure setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface); virtual;
  end;

implementation
uses
  MotionRectangle, BasicArrayList, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TConstrainedMotionRectangles.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TConstrainedMotionRectangles.Create(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface; motionRectangles_: TMotionRectangles);
begin
        inherited Create(TConstrainedMotionRectangles.NAME, motionRectangles_.getImageComparisonResult());
        InitFields;
        Self.setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface_);
end;
    

// throws Exception
procedure TConstrainedMotionRectangles.applyMotionRectangleConstraints(motionRectangles_: TMotionRectangles);
var
  bufferedImageArray: TArray<TBufferedImage>;
  bufferedImage_: TBufferedImage;
  vector: TBasicArrayList;
  vector2: TBasicArrayList;
  size: Integer;
  motionRectangle_: TMotionRectangle;
  rectangle_: TRectangle;
  isTooSmall: Boolean;
  isAreaTooSmall: Boolean;
  isTooBig: Boolean;
  isValid: Boolean;
  index: Integer;
begin
        Self.logUtil.putF('Start - Size Before: ' + IntToStr(motionRectangles_.getVector().size()), TJava.Box(Self), 'applyMotionRectangleConstraints');
        bufferedImageArray := motionRectangles_.getImageComparisonResult().getBufferedImages();
        bufferedImage_ := bufferedImageArray[1];
        vector := TBasicArrayListD.Create();
        vector2 := motionRectangles_.getVector();
        size := vector2.size();
        for index := 0 to size - 1 do begin
            motionRectangle_ := TMotionRectangle(TJava.ToObject(vector2.get(index)));
            rectangle_ := motionRectangle_.getRectangle();
            isTooSmall := Self.getMotionRectangleConstraintsInterface().isTooSmall(rectangle_);
            if isTooSmall then begin
                Continue;
            end;
            isAreaTooSmall := Self.getMotionRectangleConstraintsInterface().isAreaTooSmall(rectangle_);
            if isAreaTooSmall then begin
                Continue;
            end;
            isTooBig := Self.getMotionRectangleConstraintsInterface().isTooBig(rectangle_);
            if isTooBig then begin
                Continue;
            end;
            isValid := Self.getMotionRectangleConstraintsInterface().isValid(Self.getImageComparisonResult().getFrameTwo(), bufferedImage_, motionRectangle_.getRectangle());
            if not (isValid) then begin
                Continue;
            end;
            if (((not (isTooSmall)) and (not (isAreaTooSmall))) and (not (isTooBig))) and (isValid) then begin
                vector.add(TJava.Box(motionRectangle_));
            end;
        end;
        Self.setVector(vector);
end;
    

function TConstrainedMotionRectangles.getMotionRectangleConstraintsInterface: IMotionRectangleConstraintsInterface;
begin
        Exit(Self.motionRectangleConstraintsInterface);
end;
    

procedure TConstrainedMotionRectangles.setMotionRectangleConstraintsInterface(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
begin
        Self.motionRectangleConstraintsInterface := motionRectangleConstraintsInterface_;
end;

initialization
  {AB:INITIALIZATION}
  TConstrainedMotionRectangles.NAME := 'constrainedMotionRectangles_';
  {AB:END}

end.

