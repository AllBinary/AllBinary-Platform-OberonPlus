{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.behavior.topview
unit TopViewGameLayerBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameLayerBehavior, BasicAccelerationProperties, VelocityProperties, InitialJumpBehavior;

type
  {AB:TYPES}
  TTopViewGameLayerBehavior = class(TGameLayerBehavior)
  public
    maxGravityActionIndex: Integer;
    isJumpAction: Boolean;
    isJumpOver: Boolean;
    isFallingWithoutJumpAttempt: Boolean;
    gravityActionIndex: Integer;
    procedure InitFields;
        constructor Create(maxGravityActionIndex: Integer);
        procedure gravity; virtual;
        procedure land(velocityProperties_: TVelocityProperties); virtual;
        procedure landReset; virtual;
        procedure up(velocityProperties_: TVelocityProperties; acceleration: TBasicAccelerationProperties; jumpBehavior: TInitialJumpBehavior; accelerationMultiplier: Integer); virtual;
        procedure inputFrames(velocityProperties_: TVelocityProperties); virtual;
  end;

implementation

{AB:CODE}

procedure TTopViewGameLayerBehavior.InitFields;
begin
  
  Self.isJumpAction := True;
  Self.isJumpOver := False;
  Self.isFallingWithoutJumpAttempt := False;
  Self.gravityActionIndex := 0;
end;
    

constructor TTopViewGameLayerBehavior.Create(maxGravityActionIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.maxGravityActionIndex := maxGravityActionIndex;
end;
    

procedure TTopViewGameLayerBehavior.gravity;
begin
        if (Self.gravityActionIndex) = (0) then begin
            Inc(Self.gravityActionIndex);
            Self.isFallingWithoutJumpAttempt := True;
        end;
end;
    

procedure TTopViewGameLayerBehavior.land(velocityProperties_: TVelocityProperties);
begin
        velocityProperties_.getVelocityYBasicDecimalP().setint(0);
        Self.landReset();
end;
    

procedure TTopViewGameLayerBehavior.landReset;
begin
        Self.gravityActionIndex := 0;
        Self.isFallingWithoutJumpAttempt := False;
        Self.isJumpAction := True;
        Self.isJumpOver := False;
end;
    

procedure TTopViewGameLayerBehavior.up(velocityProperties_: TVelocityProperties; acceleration: TBasicAccelerationProperties; jumpBehavior: TInitialJumpBehavior; accelerationMultiplier: Integer);
var
  acceleration2: Integer;
begin
        if not (Self.isJumpOver) then begin
            if (Self.gravityActionIndex) < (Self.maxGravityActionIndex) then begin
                acceleration2 := (-acceleration.getForward()) * (accelerationMultiplier);
                velocityProperties_.getVelocityYBasicDecimalP().addint(acceleration2);
                velocityProperties_.limitXYToForwardAndReverseMaxVelocity();
                Inc(Self.gravityActionIndex);
            end else begin
            end;
        end else begin
        end;
        if Self.isJumpAction then begin
            jumpBehavior.process();
            Self.isJumpAction := False;
        end;
end;
    

procedure TTopViewGameLayerBehavior.inputFrames(velocityProperties_: TVelocityProperties);
begin
        if ((Self.gravityActionIndex) > (0)) and ((velocityProperties_.getVelocityYBasicDecimalP().getUnscaled()) > (0)) then begin
            Self.isJumpOver := True;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

