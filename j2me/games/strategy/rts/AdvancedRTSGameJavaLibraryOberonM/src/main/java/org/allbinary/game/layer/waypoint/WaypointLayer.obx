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
// package org.allbinary.game.layer.waypoint
unit WaypointLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, Group, AdvancedRTSGameLayer, PathFindingLayerInterface, Rectangle, AllBinaryLayerManager, RTSPlayerLayerInterface, RemoteInfo;

type
  {AB:TYPES}
  TWaypointLayer = class(TAdvancedRTSGameLayer)
  public
        constructor Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; groupInterface: TArray<TGroup>; rootName: string; name: string; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
        procedure construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); override;
        procedure paint(graphics_: TGraphics); override;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure damage(damage: Integer; damageType: Integer); override;
        function getDamage(damageType: Integer): Integer; override;
        procedure setDestroyed(destroyed: Boolean); override;
        function getType: Integer; override;
        class function getStaticType: Integer; static;
        function isSelfUpgradeable: Boolean; override;
  end;

implementation
uses
  CollidableWaypointBehavior, Waypoint, WaypointCellPositionHistory, Health, NullRTSFormInputFactory, AdvancedRTSProperties, TileLayerPositionIntoViewPosition, AttackSound;


{AB:CODE}
    

constructor TWaypointLayer.Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; groupInterface: TArray<TGroup>; rootName: string; name: string; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
begin
        inherited Create(remoteInfo_, parentLayer, TAdvancedRTSProperties.createProperties(), groupInterface, rootName, name, THealth.Create(1000), TNullRTSFormInputFactory.getInstance(), animationInterfaceFactoryInterface_, animationInterfaceFactoryInterface_, animationInterfaceFactoryInterface_, animationInterfaceFactoryInterface_, animationInterfaceFactoryInterface_, proceduralAnimationInterfaceFactoryInterface_, rectangle_, x, y, TTileLayerPositionIntoViewPosition.Create());
        Self.setCollidableInferface(TCollidableWaypointBehavior.Create(True));
        Self.getWaypointBehavior().setWaypoint(TWaypoint.Create(Self, TAttackSound.getInstance()));
        Self.setAnimationInterface(Self.indexedButShouldBeRotationAnimationInterface);
end;
    

procedure TWaypointLayer.construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
begin
        Self.percentCompleteP := 100;
        Self.initVisibility(rtsPlayerLayerInterface_);
end;
    

procedure TWaypointLayer.paint(graphics_: TGraphics);
begin
        if Self.isVisible() then begin
            inherited paint(graphics_);
        end;
end;
    

procedure TWaypointLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        try
            Self.indexedButShouldBeRotationAnimationInterface.nextFrame();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processTick', TJava.Box(e));
            end;
        end;
end;
    

procedure TWaypointLayer.damage(damage: Integer; damageType: Integer);
begin
end;
    

// throws Exception
function TWaypointLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

// throws Exception
procedure TWaypointLayer.setDestroyed(destroyed: Boolean);
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TWaypointCellPositionHistory.getInstance().removeLayer(Self);
        end;
end;
    

function TWaypointLayer.getType: Integer;
begin
        Exit(TWaypointLayer.getStaticType());
end;
    

class function TWaypointLayer.getStaticType: Integer;
begin
        Exit(4);
end;
    

function TWaypointLayer.isSelfUpgradeable: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

