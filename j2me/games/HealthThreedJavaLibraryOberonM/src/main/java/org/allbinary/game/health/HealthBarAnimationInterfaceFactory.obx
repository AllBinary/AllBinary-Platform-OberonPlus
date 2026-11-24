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
// package org.allbinary.game.health
unit HealthBarAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, AllBinaryLayer, ScaleProperties, HealthBarAnimation, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  THealthBarAnimationInterfaceFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstanceByLocation(layerInterface: TAllBinaryLayer; location: Integer): THealthBarAnimation; virtual;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  HealthBarThreedAnimation;


{AB:CODE}

function THealthBarAnimationInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THealthBarAnimationInterfaceFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function THealthBarAnimationInterfaceFactory.getInstanceByLocation(layerInterface: TAllBinaryLayer; location: Integer): THealthBarAnimation;
begin
        Exit(THealthBarThreedAnimation.Create(layerInterface, location));
end;
    

// throws Exception
function THealthBarAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(nil);
end;
    

// throws Exception
function THealthBarAnimationInterfaceFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(nil);
end;
    

procedure THealthBarAnimationInterfaceFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

