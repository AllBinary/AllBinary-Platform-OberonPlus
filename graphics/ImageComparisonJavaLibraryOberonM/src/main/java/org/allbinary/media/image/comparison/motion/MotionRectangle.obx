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
unit MotionRectangle;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TMotionRectangle = class(TObject)
  public
    rectangle: TRectangle;
    pixelDeltaVector: TBasicArrayList;
    procedure InitFields;
        constructor Create(rectangle_: TRectangle);
        function getRectangle: TRectangle; virtual;
        procedure setRectangle(rectangle_: TRectangle); virtual;
        function getPixelDeltaVector: TBasicArrayList; virtual;
        procedure setPixelDeltaVector(pixelDeltaVector: TBasicArrayList); virtual;
        function clone: TObject; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TMotionRectangle.InitFields;
begin
  
  
end;
    

constructor TMotionRectangle.Create(rectangle_: TRectangle);
begin
    inherited Create;
    InitFields;
        Self.setRectangle(rectangle_);
        Self.setPixelDeltaVector(TBasicArrayListD.Create());
end;
    

function TMotionRectangle.getRectangle: TRectangle;
begin
        Exit(Self.rectangle);
end;
    

procedure TMotionRectangle.setRectangle(rectangle_: TRectangle);
begin
        Self.rectangle := rectangle_;
end;
    

function TMotionRectangle.getPixelDeltaVector: TBasicArrayList;
begin
        Exit(Self.pixelDeltaVector);
end;
    

procedure TMotionRectangle.setPixelDeltaVector(pixelDeltaVector: TBasicArrayList);
begin
        Self.pixelDeltaVector := pixelDeltaVector;
end;
    

function TMotionRectangle.clone: TObject;
var
  motionRectangle_: TMotionRectangle;
begin
        motionRectangle_ := TMotionRectangle.Create(TRectangle(TJava.ToObject(Self.getRectangle().clone())));
        motionRectangle_.setPixelDeltaVector(TBasicArrayList(TJava.ToObject(Self.getPixelDeltaVector().clone())));
        Exit(TJava.Box(motionRectangle_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

