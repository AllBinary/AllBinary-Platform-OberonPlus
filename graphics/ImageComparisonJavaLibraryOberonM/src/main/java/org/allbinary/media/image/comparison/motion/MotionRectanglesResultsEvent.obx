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
unit MotionRectanglesResultsEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, MotionRectangles;

type
  {AB:TYPES}
  TMotionRectanglesResultsEvent = class(TAllBinaryEventObject)
  public
    frame: Int64;
    motionRectangles: TMotionRectangles;
    procedure InitFields;
        constructor Create(anyType: TObject; frame: Int64; motionRectangles_: TMotionRectangles);
        function getMotionRectangles: TMotionRectangles; virtual;
        procedure setMotionRectangles(motionRectangles_: TMotionRectangles); virtual;
        function getFrame: Int64; virtual;
  end;

implementation

{AB:CODE}

procedure TMotionRectanglesResultsEvent.InitFields;
begin
  
  
end;
    

constructor TMotionRectanglesResultsEvent.Create(anyType: TObject; frame: Int64; motionRectangles_: TMotionRectangles);
begin
        inherited Create(anyType);
        InitFields;
        Self.frame := frame;
        Self.setMotionRectangles(motionRectangles_);
end;
    

function TMotionRectanglesResultsEvent.getMotionRectangles: TMotionRectangles;
begin
        Exit(Self.motionRectangles);
end;
    

procedure TMotionRectanglesResultsEvent.setMotionRectangles(motionRectangles_: TMotionRectangles);
begin
        Self.motionRectangles := motionRectangles_;
end;
    

function TMotionRectanglesResultsEvent.getFrame: Int64;
begin
        Exit(Self.frame);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

