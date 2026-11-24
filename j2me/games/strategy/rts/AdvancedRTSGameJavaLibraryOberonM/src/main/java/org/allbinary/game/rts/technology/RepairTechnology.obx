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
// package org.allbinary.game.rts.technology
unit RepairTechnology;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSInterface;

type
  {AB:TYPES}
  TRepairTechnology = class(TInterfacedObject, IRTSInterface)
  public
    level: Integer;
    maxLevel: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(maxLevel: Integer);
        function isCompleted: Boolean; virtual;
        function getPercentComplete: Integer; virtual;
        function getLevel: Integer; virtual;
        function getMaxLevel: Integer; virtual;
        function getCost: Integer; virtual;
        procedure downgrade; virtual;
        function getDowngradeCost: Integer; virtual;
        function isDowngradeable: Boolean; virtual;
        function getUpgradeCost: Integer; virtual;
        function isUpgradeable: Boolean; virtual;
        procedure upgrade; virtual;
        function isSelfUpgradeable: Boolean; virtual;
  end;

implementation
uses
  UnitTechnologySingletonFactory;


{AB:CODE}

procedure TRepairTechnology.InitFields;
begin
  
  
end;

function TRepairTechnology.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRepairTechnology.Create(maxLevel: Integer);
begin
    inherited Create;
    InitFields;
        Self.maxLevel := maxLevel;
end;
    

function TRepairTechnology.isCompleted: Boolean;
begin
        Exit(False);
end;
    

function TRepairTechnology.getPercentComplete: Integer;
begin
        Exit(0);
end;
    

function TRepairTechnology.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

function TRepairTechnology.getMaxLevel: Integer;
begin
        Exit(Self.maxLevel);
end;
    

function TRepairTechnology.getCost: Integer;
begin
        Exit(0);
end;
    

procedure TRepairTechnology.downgrade;
begin
end;
    

function TRepairTechnology.getDowngradeCost: Integer;
begin
        Exit(0);
end;
    

function TRepairTechnology.isDowngradeable: Boolean;
begin
        Exit(False);
end;
    

function TRepairTechnology.getUpgradeCost: Integer;
begin
        Exit((((Self.getLevel()) * (Self.getLevel()))) * (1000));
end;
    

function TRepairTechnology.isUpgradeable: Boolean;
begin
        if (Self.getLevel()) < (Self.getMaxLevel()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TRepairTechnology.upgrade;
var
  unitTechnologySingletonFactory_: TUnitTechnologySingletonFactory;
begin
        Inc(Self.level);
        unitTechnologySingletonFactory_ := TUnitTechnologySingletonFactory.getInstance();
        unitTechnologySingletonFactory_.setRepair((unitTechnologySingletonFactory_.getRepair()) + (((Self.getLevel()) * (10))));
end;
    

function TRepairTechnology.isSelfUpgradeable: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

