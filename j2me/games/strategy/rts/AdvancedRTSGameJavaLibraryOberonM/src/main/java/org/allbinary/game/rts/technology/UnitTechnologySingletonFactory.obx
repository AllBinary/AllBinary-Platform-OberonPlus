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
unit UnitTechnologySingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TUnitTechnologySingletonFactory = class(TObject)
  public
    damage: Integer;
    health: Integer;
    reload: Integer;
    repair: Integer;
    speed: Integer;
    class var instance: TUnitTechnologySingletonFactory;
    procedure InitFields;
        class function getInstance: TUnitTechnologySingletonFactory; static;
        constructor Create;
        procedure init; virtual;
        function getDamage: Integer; virtual;
        procedure setDamage(damage: Integer); virtual;
        function getHealth: Integer; virtual;
        procedure setHealth(health: Integer); virtual;
        function getReload: Integer; virtual;
        procedure setReload(reload: Integer); virtual;
        function getRepair: Integer; virtual;
        procedure setRepair(repair: Integer); virtual;
        function getSpeed: Integer; virtual;
        procedure setSpeed(speed: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TUnitTechnologySingletonFactory.InitFields;
begin
  
  
  
  
  
end;
    

class function TUnitTechnologySingletonFactory.getInstance: TUnitTechnologySingletonFactory;
begin
        Exit(TUnitTechnologySingletonFactory.instance);
end;
    

constructor TUnitTechnologySingletonFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUnitTechnologySingletonFactory.init;
begin
        Self.setDamage(0);
        Self.setHealth(0);
        Self.setReload(0);
        Self.setRepair(0);
        Self.setSpeed(0);
end;
    

function TUnitTechnologySingletonFactory.getDamage: Integer;
begin
        Exit(Self.damage);
end;
    

procedure TUnitTechnologySingletonFactory.setDamage(damage: Integer);
begin
        Self.damage := damage;
end;
    

function TUnitTechnologySingletonFactory.getHealth: Integer;
begin
        Exit(Self.health);
end;
    

procedure TUnitTechnologySingletonFactory.setHealth(health: Integer);
begin
        Self.health := health;
end;
    

function TUnitTechnologySingletonFactory.getReload: Integer;
begin
        Exit(Self.reload);
end;
    

procedure TUnitTechnologySingletonFactory.setReload(reload: Integer);
begin
        Self.reload := reload;
end;
    

function TUnitTechnologySingletonFactory.getRepair: Integer;
begin
        Exit(Self.repair);
end;
    

procedure TUnitTechnologySingletonFactory.setRepair(repair: Integer);
begin
        Self.repair := repair;
end;
    

function TUnitTechnologySingletonFactory.getSpeed: Integer;
begin
        Exit(Self.speed);
end;
    

procedure TUnitTechnologySingletonFactory.setSpeed(speed: Integer);
begin
        Self.speed := speed;
end;

initialization
  {AB:INITIALIZATION}
  TUnitTechnologySingletonFactory.instance := TUnitTechnologySingletonFactory.Create();
  {AB:END}

end.

