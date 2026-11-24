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
unit Aggression;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAggression = class(TObject)
  public
    ram: Integer;
    projectile: Integer;
    drops: Integer;
    procedure InitFields;
        constructor Create(ram: Integer; projectile: Integer; drops: Integer);
        function getRam: Integer; virtual;
        procedure setRam(ram: Integer); virtual;
        function getProjectile: Integer; virtual;
        procedure setProjectile(projectile: Integer); virtual;
        function getDrops: Integer; virtual;
        procedure setDrops(drops: Integer); virtual;
  end;

implementation
uses
  SmallIntegerSingletonFactory;


{AB:CODE}

procedure TAggression.InitFields;
begin
  Self.ram := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  Self.projectile := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  Self.drops := TSmallIntegerSingletonFactory.getInstance().getAt(0);
end;
    

constructor TAggression.Create(ram: Integer; projectile: Integer; drops: Integer);
begin
    inherited Create;
    InitFields;
        Self.setRam(ram);
        Self.setProjectile(projectile);
        Self.setDrops(drops);
end;
    

function TAggression.getRam: Integer;
begin
        Exit(Self.ram);
end;
    

procedure TAggression.setRam(ram: Integer);
begin
        Self.ram := ram;
end;
    

function TAggression.getProjectile: Integer;
begin
        Exit(Self.projectile);
end;
    

procedure TAggression.setProjectile(projectile: Integer);
begin
        Self.projectile := projectile;
end;
    

function TAggression.getDrops: Integer;
begin
        Exit(Self.drops);
end;
    

procedure TAggression.setDrops(drops: Integer);
begin
        Self.drops := drops;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

