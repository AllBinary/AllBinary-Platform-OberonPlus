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
unit ConsolidateMotionRectangles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, MotionRectangles;

type
  {AB:TYPES}
  TConsolidateMotionRectangles = class(TMotionRectangles)
  public
    logUtil: TLogUtil;
    class var NAME: string;
    procedure InitFields;
        constructor Create(motionRectangles_: TMotionRectangles);
        procedure consolidateMotionRectangles;
        procedure remove(removeVector: TBasicArrayList);
  end;

implementation
uses
  MotionRectangle, Rectangle, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TConsolidateMotionRectangles.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TConsolidateMotionRectangles.Create(motionRectangles_: TMotionRectangles);
var
  vector: TBasicArrayList;
  size: Integer;
  motionRectangle_: TMotionRectangle;
  index: Integer;
begin
        inherited Create(TConsolidateMotionRectangles.NAME, motionRectangles_.getImageComparisonResult());
        InitFields;
        vector := motionRectangles_.getVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            motionRectangle_ := TMotionRectangle(TJava.ToObject(vector.get(index)));
            vector.add(TJava.Box(motionRectangle_.clone()));
        end;
        Self.consolidateMotionRectangles();
end;
    

procedure TConsolidateMotionRectangles.consolidateMotionRectangles;
var
  vector: TBasicArrayList;
  removeVector: TBasicArrayList;
  size: Integer;
  motionRectangle_: TMotionRectangle;
  motionRectangle2: TMotionRectangle;
  rectangle_: TRectangle;
  rectangle2: TRectangle;
  x2: Integer;
  y2: Integer;
  rightX: Integer;
  bottomY: Integer;
  i: Integer;
  index: Integer;
begin
        vector := Self.getVector();
        Self.logUtil.putF('Start - Size Before: ' + IntToStr(vector.size()), TJava.Box(Self), 'consolidateMotionRectangleConstraints');
        removeVector := TBasicArrayListD.Create();
        size := vector.size();
        for index := 0 to size - 1 do begin
            motionRectangle_ := TMotionRectangle(TJava.ToObject(vector.get(index)));
            for i := (index) + (1) to vector.size() - 1 do begin
                motionRectangle2 := TMotionRectangle(TJava.ToObject(vector.get(i)));
                rectangle_ := motionRectangle_.getRectangle();
                rectangle2 := motionRectangle2.getRectangle();
                x2 := (rectangle_.x) + (rectangle_.width);
                y2 := (rectangle_.y) + (rectangle_.height);
                rightX := (rectangle2.x) + (rectangle2.width);
                bottomY := (rectangle2.y) + (rectangle2.height);
                if ((((rectangle_.x) <= (rectangle2.x)) and ((rectangle_.y) <= (rectangle2.y))) and ((x2) >= (rightX))) and ((y2) >= (bottomY)) then begin
                    removeVector.add(TJava.Box(motionRectangle2));
                end;
            end;
        end;
        Self.remove(removeVector);
end;
    

procedure TConsolidateMotionRectangles.remove(removeVector: TBasicArrayList);
var
  vector: TBasicArrayList;
  size: Integer;
  index: Integer;
begin
        vector := Self.getVector();
        size := removeVector.size();
        for index := 0 to size - 1 do begin
            vector.remove(removeVector.get(index));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TConsolidateMotionRectangles.NAME := 'consolidatedMotionRectangles_';
  {AB:END}

end.

