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
// package org.allbinary.media.graphics.geography.map.racetrack
unit RaceTrackFrictionProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRaceTrackFrictionProperties = class(TObject)
  public
    ROAD_FRICTION_NOMINATOR: Integer;
    GROUND_FRICTION_NOMINATOR: Integer;
    procedure InitFields;
        constructor Create(roadFriction: Integer; groundFriction: Integer);
        function getRoadFrictionNominator: Integer; virtual;
        function getGroundFrictionNominator: Integer; virtual;
  end;

implementation
uses
  FrictionData;


{AB:CODE}

procedure TRaceTrackFrictionProperties.InitFields;
begin
  
  
end;
    

constructor TRaceTrackFrictionProperties.Create(roadFriction: Integer; groundFriction: Integer);
begin
    inherited Create;
    InitFields;
        Self.ROAD_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (roadFriction);
        Self.GROUND_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (groundFriction);
end;
    

function TRaceTrackFrictionProperties.getRoadFrictionNominator: Integer;
begin
        Exit(Self.ROAD_FRICTION_NOMINATOR);
end;
    

function TRaceTrackFrictionProperties.getGroundFrictionNominator: Integer;
begin
        Exit(Self.GROUND_FRICTION_NOMINATOR);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

