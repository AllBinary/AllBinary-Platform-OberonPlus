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
unit VehicleFrictionProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FrictionProperties;

type
  {AB:TYPES}
  TVehicleFrictionProperties = class(TFrictionProperties)
  public
    TIRE_FRICTION_NOMINATOR: Integer;
    BRAKE_FRICTION_NOMINATOR: Integer;
    AIR_FRICTION_NOMINATOR: Integer;
    CRASH_FRICTION_NOMINATOR: Integer;
    procedure InitFields;
        constructor Create(tireFriction: Integer; brakeFriction: Integer; airFriction: Integer; crashFriction: Integer);
        function getTireFrictionNominator: Integer; virtual;
        function getBrakeFrictionNominator: Integer; virtual;
        function getAirFrictionNominator: Integer; virtual;
        function getCrashFrictionNominator: Integer; virtual;
  end;

implementation
uses
  FrictionData;


{AB:CODE}

procedure TVehicleFrictionProperties.InitFields;
begin
  
  
  
  
end;
    

constructor TVehicleFrictionProperties.Create(tireFriction: Integer; brakeFriction: Integer; airFriction: Integer; crashFriction: Integer);
begin
    inherited Create;
    InitFields;
        Self.TIRE_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (tireFriction);
        Self.BRAKE_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (brakeFriction);
        Self.AIR_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (airFriction);
        Self.CRASH_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (crashFriction);
end;
    

function TVehicleFrictionProperties.getTireFrictionNominator: Integer;
begin
        Exit(Self.TIRE_FRICTION_NOMINATOR);
end;
    

function TVehicleFrictionProperties.getBrakeFrictionNominator: Integer;
begin
        Exit(Self.BRAKE_FRICTION_NOMINATOR);
end;
    

function TVehicleFrictionProperties.getAirFrictionNominator: Integer;
begin
        Exit(Self.AIR_FRICTION_NOMINATOR);
end;
    

function TVehicleFrictionProperties.getCrashFrictionNominator: Integer;
begin
        Exit(Self.CRASH_FRICTION_NOMINATOR);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

