{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.behavior.topview
unit CharacterFrictionProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FrictionProperties;

type
  {AB:TYPES}
  TCharacterFrictionProperties = class(TFrictionProperties)
  public
    WATER_FRICTION_NOMINATOR: Integer;
    AIR_FRICTION_NOMINATOR: Integer;
    COLLISION_FRICTION_NOMINATOR: Integer;
    procedure InitFields;
        constructor Create(airFriction: Integer; waterFriction: Integer; collisionFriction: Integer);
        function getWATER_FRICTION_NOMINATOR: Integer; virtual;
        function getAIR_FRICTION_NOMINATOR: Integer; virtual;
        function getCOLLISION_FRICTION_NOMINATOR: Integer; virtual;
  end;

implementation
uses
  FrictionData;


{AB:CODE}

procedure TCharacterFrictionProperties.InitFields;
begin
  
  
  
end;
    

constructor TCharacterFrictionProperties.Create(airFriction: Integer; waterFriction: Integer; collisionFriction: Integer);
begin
    inherited Create;
    InitFields;
        Self.AIR_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (airFriction);
        Self.COLLISION_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (collisionFriction);
        Self.WATER_FRICTION_NOMINATOR := (TFrictionData.getFrictionDenominator()) - (waterFriction);
end;
    

function TCharacterFrictionProperties.getWATER_FRICTION_NOMINATOR: Integer;
begin
        Exit(Self.WATER_FRICTION_NOMINATOR);
end;
    

function TCharacterFrictionProperties.getAIR_FRICTION_NOMINATOR: Integer;
begin
        Exit(Self.AIR_FRICTION_NOMINATOR);
end;
    

function TCharacterFrictionProperties.getCOLLISION_FRICTION_NOMINATOR: Integer;
begin
        Exit(Self.COLLISION_FRICTION_NOMINATOR);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

