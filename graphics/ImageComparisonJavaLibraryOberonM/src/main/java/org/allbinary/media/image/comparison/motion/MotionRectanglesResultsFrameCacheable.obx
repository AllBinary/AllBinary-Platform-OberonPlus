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
unit MotionRectanglesResultsFrameCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, MotionRectangles;

type
  {AB:TYPES}
  TMotionRectanglesResultsFrameCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    motionRectangles: TMotionRectangles;
    frame: Int64;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(motionRectangles_: TMotionRectangles; frame: Int64);
        function getKey: TObject; virtual;
        function getMotionRectangles: TMotionRectangles; virtual;
        procedure setMotionRectangles(motionRectangles_: TMotionRectangles); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TMotionRectanglesResultsFrameCacheable.InitFields;
begin
  
  
end;

function TMotionRectanglesResultsFrameCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMotionRectanglesResultsFrameCacheable.Create(motionRectangles_: TMotionRectangles; frame: Int64);
begin
    inherited Create;
    InitFields;
        Self.frame := frame;
        Self.setMotionRectangles(motionRectangles_);
end;
    

function TMotionRectanglesResultsFrameCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.frame));
end;
    

function TMotionRectanglesResultsFrameCacheable.getMotionRectangles: TMotionRectangles;
begin
        Exit(Self.motionRectangles);
end;
    

procedure TMotionRectanglesResultsFrameCacheable.setMotionRectangles(motionRectangles_: TMotionRectangles);
begin
        Self.motionRectangles := motionRectangles_;
end;
    

function TMotionRectanglesResultsFrameCacheable.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(' Frame: ');
        stringBuffer.append(Self.getKey().toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

