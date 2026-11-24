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
// package org.allbinary.game.ai.path
unit BasicDirectionAIHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, AngleInfo;

type
  {AB:TYPES}
  TBasicDirectionAIHelper = class(TObject)
  public
    name: string;
    angleInfo: TAngleInfo;
    procedure InitFields;
        constructor Create(name: string; angleInfo_: TAngleInfo);
        function turnAI(frame: Integer): Integer;
        function getAIKeyPressed(frame: Integer): Integer;
        function getAIKeyPressedFromDirection(geographicMapDirectionData: TDirection): Integer; virtual;
        function getAngleInfoP: TAngleInfo; virtual;
        function getName: string; virtual;
  end;

implementation
uses
  Canvas, DirectionFactory, AngleIncrementInfo;


{AB:CODE}

procedure TBasicDirectionAIHelper.InitFields;
begin
  
  
end;
    

constructor TBasicDirectionAIHelper.Create(name: string; angleInfo_: TAngleInfo);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.angleInfo := angleInfo_;
end;
    

function TBasicDirectionAIHelper.turnAI(frame: Integer): Integer;
var
  keyDirection: Integer;
  directionAngle: Integer;
  angle: SmallInt;
  degrees: Integer;
begin
        keyDirection := -1;
        directionAngle := Self.angleInfo.getAngleIncrementInfo().getFrameAngle(frame);
        angle := Self.angleInfo.getAngle();
        degrees := Abs((directionAngle) - (Integer(angle)));
        if (degrees) < (180) then begin
            if (Integer(angle)) > (directionAngle) then begin
                keyDirection := TCanvas.LEFT;
            end else if (Integer(angle)) < (directionAngle) then begin
                keyDirection := TCanvas.RIGHT;
            end;
        end else begin
            if (Integer(angle)) > (directionAngle) then begin
                keyDirection := TCanvas.RIGHT;
            end else if (Integer(angle)) < (directionAngle) then begin
                keyDirection := TCanvas.LEFT;
            end;
        end;
        Exit(keyDirection);
end;
    

function TBasicDirectionAIHelper.getAIKeyPressed(frame: Integer): Integer;
var
  angle: SmallInt;
begin
        angle := SmallInt(Trunc(Self.angleInfo.getAngleIncrementInfo().getFrameAngle(frame)));
        if (Self.angleInfo.getAngle()) <> (angle) then begin
            Exit(Self.turnAI(frame));
        end else begin
            Exit(TCanvas.UP);
        end;
end;
    

function TBasicDirectionAIHelper.getAIKeyPressedFromDirection(geographicMapDirectionData: TDirection): Integer;
var
  keyDirection: Integer;
  angleIncrementInfo_: TAngleIncrementInfo;
  directionFactory_: TDirectionFactory;
begin
        keyDirection := -1;
        angleIncrementInfo_ := Self.angleInfo.getAngleIncrementInfo();
        directionFactory_ := TDirectionFactory.getInstance();
        if (geographicMapDirectionData) = (directionFactory_.DOWN) then begin
            keyDirection := Self.getAIKeyPressed(angleIncrementInfo_.DOWN_FRAME);
        end else if (geographicMapDirectionData) = (directionFactory_.UP) then begin
            keyDirection := Self.getAIKeyPressed(angleIncrementInfo_.UP_FRAME);
        end else if (geographicMapDirectionData) = (directionFactory_.LEFT) then begin
            keyDirection := Self.getAIKeyPressed(angleIncrementInfo_.LEFT_FRAME);
        end else if (geographicMapDirectionData) = (directionFactory_.RIGHT) then begin
            keyDirection := Self.getAIKeyPressed(angleIncrementInfo_.RIGHT_FRAME);
        end;
        Exit(keyDirection);
end;
    

function TBasicDirectionAIHelper.getAngleInfoP: TAngleInfo;
begin
        Exit(Self.angleInfo);
end;
    

function TBasicDirectionAIHelper.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

