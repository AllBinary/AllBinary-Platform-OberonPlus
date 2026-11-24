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
unit VehicleProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VelocityProperties, VehicleFrictionProperties;

type
  {AB:TYPES}
  TVehicleProperties = class(TObject)
  public
    velocityProperties: TVelocityProperties;
    vehicleFrictionProperties: TVehicleFrictionProperties;
    procedure InitFields;
        constructor Create(velocityProperties_: TVelocityProperties; vehicleFrictionProperties_: TVehicleFrictionProperties);
        function getVehicleFrictionProperties: TVehicleFrictionProperties; virtual;
        procedure setVehicleFrictionProperties(vehicleFrictionProperties_: TVehicleFrictionProperties); virtual;
        function getVelocityProperties: TVelocityProperties; virtual;
  end;

implementation

{AB:CODE}

procedure TVehicleProperties.InitFields;
begin
  
  
end;
    

constructor TVehicleProperties.Create(velocityProperties_: TVelocityProperties; vehicleFrictionProperties_: TVehicleFrictionProperties);
begin
    inherited Create;
    InitFields;
        Self.velocityProperties := velocityProperties_;
        Self.vehicleFrictionProperties := vehicleFrictionProperties_;
end;
    

function TVehicleProperties.getVehicleFrictionProperties: TVehicleFrictionProperties;
begin
        Exit(Self.vehicleFrictionProperties);
end;
    

procedure TVehicleProperties.setVehicleFrictionProperties(vehicleFrictionProperties_: TVehicleFrictionProperties);
begin
        Self.vehicleFrictionProperties := vehicleFrictionProperties_;
end;
    

function TVehicleProperties.getVelocityProperties: TVelocityProperties;
begin
        Exit(Self.velocityProperties);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

