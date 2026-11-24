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
unit MotionRectangles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, ImageComparisonResult;

type
  {AB:TYPES}
  TMotionRectangles = class(TObject)
  public
    name: string;
    rectangleVector: TBasicArrayList;
    imageComparisonResult: TImageComparisonResult;
    MAX_PIXEL_DISTANCE_THRESHOLD: Integer;
    procedure InitFields;
        constructor Create(name: string; imageComparisonResult_: TImageComparisonResult);
        function getVector: TBasicArrayList; virtual;
        procedure setVector(rectangleVector: TBasicArrayList); virtual;
        function getName: string; virtual;
        function getImageComparisonResult: TImageComparisonResult; virtual;
        procedure setImageComparisonResult(imageComparisonResult_: TImageComparisonResult); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TMotionRectangles.InitFields;
begin
  
  
  
  Self.MAX_PIXEL_DISTANCE_THRESHOLD := 2;
end;
    

constructor TMotionRectangles.Create(name: string; imageComparisonResult_: TImageComparisonResult);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.setImageComparisonResult(imageComparisonResult_);
        Self.setVector(TBasicArrayListD.Create());
end;
    

function TMotionRectangles.getVector: TBasicArrayList;
begin
        Exit(Self.rectangleVector);
end;
    

procedure TMotionRectangles.setVector(rectangleVector: TBasicArrayList);
begin
        Self.rectangleVector := rectangleVector;
end;
    

function TMotionRectangles.getName: string;
begin
        Exit(Self.name);
end;
    

function TMotionRectangles.getImageComparisonResult: TImageComparisonResult;
begin
        Exit(Self.imageComparisonResult);
end;
    

procedure TMotionRectangles.setImageComparisonResult(imageComparisonResult_: TImageComparisonResult);
begin
        Self.imageComparisonResult := imageComparisonResult_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

