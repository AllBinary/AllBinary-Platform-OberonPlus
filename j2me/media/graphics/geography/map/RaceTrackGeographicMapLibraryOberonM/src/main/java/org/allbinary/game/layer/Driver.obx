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
// package org.allbinary.game.layer
unit Driver;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Aggression;

type
  {AB:TYPES}
  TDriver = class(TObject)
  public
    turnSpeed: Integer;
    trackPathSelectionSkill: Integer;
    aggression: TAggression;
    class var NULL_DRIVER: TDriver;
    procedure InitFields;
        constructor Create(turnSpeed: Integer; trackPathSelectionSkill: Integer; aggression_: TAggression);
        function getTurnSpeed: Integer; virtual;
        procedure setTurnSpeed(turnSpeed: Integer); virtual;
        function getTrackPathSelectionSkill: Integer; virtual;
        procedure setTrackPathSelectionSkill(trackPathSelectionSkill: Integer); virtual;
        function getAggression: TAggression; virtual;
        procedure setAggression(aggression_: TAggression); virtual;
  end;

implementation
uses
  SmallIntegerSingletonFactory;


{AB:CODE}

procedure TDriver.InitFields;
begin
  Self.turnSpeed := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  Self.trackPathSelectionSkill := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  
end;
    

constructor TDriver.Create(turnSpeed: Integer; trackPathSelectionSkill: Integer; aggression_: TAggression);
begin
    inherited Create;
    InitFields;
        Self.setTurnSpeed(turnSpeed);
        Self.setTrackPathSelectionSkill(trackPathSelectionSkill);
        Self.aggression := aggression_;
end;
    

function TDriver.getTurnSpeed: Integer;
begin
        Exit(Self.turnSpeed);
end;
    

procedure TDriver.setTurnSpeed(turnSpeed: Integer);
begin
        Self.turnSpeed := turnSpeed;
end;
    

function TDriver.getTrackPathSelectionSkill: Integer;
begin
        Exit(Self.trackPathSelectionSkill);
end;
    

procedure TDriver.setTrackPathSelectionSkill(trackPathSelectionSkill: Integer);
begin
        Self.trackPathSelectionSkill := trackPathSelectionSkill;
end;
    

function TDriver.getAggression: TAggression;
begin
        Exit(Self.aggression);
end;
    

procedure TDriver.setAggression(aggression_: TAggression);
begin
        Self.aggression := aggression_;
end;

initialization
  {AB:INITIALIZATION}
  TDriver.NULL_DRIVER := TDriver.Create(TSmallIntegerSingletonFactory.getInstance().getAt(0), TSmallIntegerSingletonFactory.getInstance().getAt(0), TAggression.Create(TSmallIntegerSingletonFactory.getInstance().getAt(0), TSmallIntegerSingletonFactory.getInstance().getAt(0), TSmallIntegerSingletonFactory.getInstance().getAt(0)));
  {AB:END}

end.

