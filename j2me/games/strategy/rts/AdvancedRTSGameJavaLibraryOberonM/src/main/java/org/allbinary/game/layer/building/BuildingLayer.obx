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
// package org.allbinary.game.layer.building
unit BuildingLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, RTSFormInput, AdvancedRTSGameLayer, AdvancedRTSProperties, RTSPlayerLayerInterface, SelectionHudPaintable, BasicArrayList, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, RotationAnimationInterfaceCompositeInterface, DamageFloaters, Health, Group, TrackingEvent, TrackingEventListenerInterface, Rectangle, Paintable, AllBinaryLayerManager, GeographicMapCellPosition, TimeDelayHelper, RemoteInfo, ABHashtable, RotationAnimation, BuildingPropertiesFactory, IndexedAnimationInterfaceCompositeInterface, EventListenerInterface;

type
  {AB:TYPES}
  TBuildingLayer = class(TAdvancedRTSGameLayer, IRotationAnimationInterfaceCompositeInterface, ITrackingEventListenerInterface, IIndexedAnimationInterfaceCompositeInterface, IEventListenerInterface)
  public
    buildingLevelCost: Integer;
    productivity: Integer;
    efficiency: Integer;
    efficiencyPerLevel: Integer;
    trackingEvent: TTrackingEvent;
    damageFloaters: TDamageFloaters;
    damageFloatersPaintableInterface: TPaintable;
    healthBar: TPaintable;
    pathsHashtable: TABHashtable<TObject, TObject>;
    local: Boolean;
    timeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
    function JavaObject: TObject;
        class function createSimulated: TBuildingLayer; static;
        constructor Create(remoteInfo_: TRemoteInfo; buildingPropertiesFactory_: TBuildingPropertiesFactory; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
        procedure initVisibility(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure onMovement(trackingEvent_: TTrackingEvent); virtual;
        procedure processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function calculateEfficiency: Integer;
        function getCost: Integer; virtual;
        function getDowngradeCost: Integer; virtual;
        function getUpgradeCost: Integer; virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        function getBuildingLevelCost: Integer;
        procedure setBuildingLevelCost(buildingLevelCost: Integer); virtual;
        function getProductivity: Integer; virtual;
        procedure setProductivity(productivity: Integer); virtual;
        function getEfficiency: Integer; virtual;
        procedure setEfficiency(efficiency: Integer); virtual;
        procedure generateMoveOutOfBuildAreaPaths;
        function getMoveOutOfBuildAreaPath(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        function getEndGeographicMapCellPositionList: TBasicArrayList; virtual;
        function shouldHandleStartSameAsEnd: Boolean; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure addVisibility; virtual;
        procedure removeVisibility; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getType: Integer; virtual;
        class function getStaticType: Integer; static;
        function getRotationAnimationInterface: TRotationAnimation; virtual;
        procedure setFrame(index: Integer); virtual;
  end;

implementation
uses
  SimulatedBuildingPropertiesFactory, BuildingInfoHudPaintable, ExplosionBasicSound, NullAnimationFactory, NullIndexedAnimationFactory, GroupFactory, NullRTSFormInputFactory, VisibleCellPositionsSingleton, AdvancedRTSPlayerLayerInterface, CollidableRTSBehavior, RTSLayerUtil, Waypoint, TileLayerPositionIntoViewPosition, RectangleFactory, StringUtil, BasicArrayListD, Direction, DirectionFactory, GeographicMapCellPositionAreaBase, NullPathFindingLayer, TrackingEventHandler, SecondaryPlayerQueueFactory, SelectSound, GeographicMapDirectionUtil, DropCellPositionHistory, BasicArrayListS;


{AB:CODE}

procedure TBuildingLayer.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  Self.timeDelayHelper := TTimeDelayHelper.Create(3000);
end;

function TBuildingLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TBuildingLayer.createSimulated: TBuildingLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TBuildingLayer.Create(TRemoteInfo.REMOTE_INFO, TSimulatedBuildingPropertiesFactory.getInstance(), TAdvancedRTSProperties.createPropertiesSimulated(), TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0));
end;
    

constructor TBuildingLayer.Create(remoteInfo_: TRemoteInfo; buildingPropertiesFactory_: TBuildingPropertiesFactory; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
begin
        inherited Create(remoteInfo_, TNullPathFindingLayer.NULL_PATH_FINDING_LAYER, advancedRTSProperties_, groupInterface, rootName, name, healthInterface, rtsFormInput_, animationInterfaceFactoryInterface_, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface_, rectangle_, x, y, TTileLayerPositionIntoViewPosition.Create());
        InitFields;
        Self.setCollidableInferface(TCollidableRTSBehavior.Create(True));
        Self.getWaypointBehavior().setWaypoint(TWaypoint.Create(Self, TSelectSound.getInstance()));
        Self.damageFloaters := buildingPropertiesFactory_.getDamageFloaters(Self);
        Self.damageFloatersPaintableInterface := buildingPropertiesFactory_.damageFloatersPaintableInterface;
        Self.healthBar := buildingPropertiesFactory_.getHealthBar(Self);
        Self.pathsHashtable := buildingPropertiesFactory_.getHashtable();
        Self.setMaxLevel(30);
        Self.setProductivity(1);
        Self.setEfficiency(Self.calculateEfficiency());
        Self.efficiencyPerLevel := buildingPropertiesFactory_.getEfficiencyPerLevel(Self);
        Self.efficiency := Self.efficiencyPerLevel;
        Self.generateMoveOutOfBuildAreaPaths();
        Self.trackingEvent := buildingPropertiesFactory_.getTrackingEvent(Self);
end;
    

procedure TBuildingLayer.initVisibility(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
var
  advancedRTSPlayerLayerInterface_: IAdvancedRTSPlayerLayerInterface;
begin
        advancedRTSPlayerLayerInterface_ := (TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface);
        if advancedRTSPlayerLayerInterface_.isLocalPlayer() then begin
            Self.local := True;
            Self.addVisibility();
        end else begin
            Self.local := False;
        end;
        inherited initVisibility(rtsPlayerLayerInterface_);
end;
    

// throws Exception
procedure TBuildingLayer.construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface_);
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TBuildingLayer.onMovement(trackingEvent_: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        try
            layerInterface := TAdvancedRTSGameLayer(TJava.ToObject(trackingEvent_.getLayerInterface()));
            if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
                layerInterface.onMovementFound(Self.trackingEvent);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onMovement', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TBuildingLayer.processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  currentFrame: Integer;
  size: Integer;
begin
        if Self.getHealthInterface().isDamaged() then begin
            Self.setAnimationInterface(Self.destroyAnimationInterface);
        end;
        if not (Self.getHealthInterface().isAlive()) then begin
            if Self.isReadyForExplosion() then begin
                currentFrame := Self.destroyAnimationInterface.getFrame();
                size := (Self.destroyAnimationInterface.getSize()) - (1);
                if ((currentFrame) = (size)) and (not (Self.timeDelayHelper.isTimeTNT())) then begin
                    if not (Self.getHealthInterface().isAlive()) then begin
                        Self.setDestroyed(True);
                    end;
                end else begin
                    Self.destroyAnimationInterface.nextFrame();
                end;
            end else begin
                Self.setAnimationInterface(Self.destroyAnimationInterface);
                TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                Self.shakeListener.onSmallShakeEvent();
                Self.vibration.vibrate(Self.duration, 0, 0);
                Self.timeDelayHelper.setStartTimeTNT();
                Self.setReadyForExplosion(True);
            end;
        end else begin
            inherited processBuiltTick(allBinaryLayerManager_);
        end;
        Self.indexedButShouldBeRotationAnimationInterface.nextFrame();
end;
    

function TBuildingLayer.calculateEfficiency: Integer;
begin
        Exit(Self.efficiencyPerLevel);
end;
    

function TBuildingLayer.getCost: Integer;
var
  total: Int64;
begin
        total := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((Self.getLevel()) * (Self.getBuildingLevelCost())))));
        Exit(Integer(total));
end;
    

function TBuildingLayer.getDowngradeCost: Integer;
var
  downgradeCost: Int64;
begin
        downgradeCost := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((((Self.getLevel()) - (1))) * (Self.getBuildingLevelCost())))));
        Self.logUtil.putF('Cost: ' + IntToStr(downgradeCost), TJava.Box(Self), 'getDowngradeCost');
        Exit(((Integer(downgradeCost)) * (9)) div (10));
end;
    

function TBuildingLayer.getUpgradeCost: Integer;
var
  upgradeCost: Int64;
begin
        upgradeCost := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((((Self.getLevel()) + (1))) * (Self.getBuildingLevelCost())))));
        Exit(Integer(upgradeCost));
end;
    

procedure TBuildingLayer.downgrade;
begin
        inherited downgrade();
        Self.setProductivity((Self.getProductivity()) - (1));
        Self.setEfficiency((Self.getEfficiency()) - (Self.calculateEfficiency()));
        Self.getHealthInterface().setMaxHealth((Self.getHealthInterface().getMaxHealth()) - (((((Self.getLevel()) + (1))) * (100))));
end;
    

procedure TBuildingLayer.upgrade;
begin
        inherited upgrade();
        Self.setProductivity((Self.getProductivity()) + (1));
        Self.setEfficiency((Self.getEfficiency()) + (Self.calculateEfficiency()));
        Self.getHealthInterface().setMaxHealth((Self.getHealthInterface().getMaxHealth()) + (((Self.getLevel()) * (100))));
end;
    

function TBuildingLayer.getBuildingLevelCost: Integer;
begin
        Exit(Self.buildingLevelCost);
end;
    

procedure TBuildingLayer.setBuildingLevelCost(buildingLevelCost: Integer);
begin
        Self.buildingLevelCost := buildingLevelCost;
end;
    

function TBuildingLayer.getProductivity: Integer;
begin
        Exit(Self.productivity);
end;
    

procedure TBuildingLayer.setProductivity(productivity: Integer);
begin
        Self.productivity := productivity;
end;
    

function TBuildingLayer.getEfficiency: Integer;
begin
        Exit(Self.efficiency);
end;
    

procedure TBuildingLayer.setEfficiency(efficiency: Integer);
begin
        Self.efficiency := efficiency;
end;
    

// throws Exception
procedure TBuildingLayer.generateMoveOutOfBuildAreaPaths;
var
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
  NO_DIRECTION: TDirection;
  geographicMapDirectionUtil_: TGeographicMapDirectionUtil;
  pathsList: TBasicArrayList;
  occupyGeographicMapCellPosition: TGeographicMapCellPosition;
  surroundGeographicMapCellPosition: TGeographicMapCellPosition;
  list: TBasicArrayList;
  index: Integer;
  index2: Integer;
begin
        occupyList := Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        surroundList := Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList();
        NO_DIRECTION := TDirectionFactory.getInstance().NO_DIRECTION;
        geographicMapDirectionUtil_ := TGeographicMapDirectionUtil.getInstance();
        
        
        
        
        for index2 := (occupyList.size()) - (1) downto 0 do begin
            pathsList := TBasicArrayListD.Create();
            occupyGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(occupyList.get(index2)));
            for index := (surroundList.size()) - (1) downto 0 do begin
                surroundGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(surroundList.get(index)));
                if (geographicMapDirectionUtil_.getEightDirectionFromCellPositionToAdjacentCellPosition(surroundGeographicMapCellPosition, occupyGeographicMapCellPosition)) <> (NO_DIRECTION) then begin
                    list := TBasicArrayListS.Create(1);
                    list.add(TJava.Box(surroundGeographicMapCellPosition));
                    pathsList.add(TJava.Box(list));
                end;
            end;
            Self.pathsHashtable.put(TJava.Box(occupyGeographicMapCellPosition), TJava.Box(pathsList));
        end;
end;
    

function TBuildingLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
var
  pathsList: TBasicArrayList;
begin
        pathsList := TBasicArrayList(TJava.ToObject(Self.pathsHashtable.get(TJava.Box(geographicMapCellPosition_))));
        Exit(pathsList);
end;
    

function TBuildingLayer.getEndGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList());
end;
    

function TBuildingLayer.shouldHandleStartSameAsEnd: Boolean;
begin
        Exit(False);
end;
    

procedure TBuildingLayer.paint(graphics_: TGraphics);
begin
        if Self.isVisible() then begin
            inherited paint(graphics_);
            Self.damageFloatersPaintableInterface.paint(graphics_);
            Self.healthBar.paint(graphics_);
        end;
end;
    

// throws Exception
procedure TBuildingLayer.damage(damage: Integer; damageType: Integer);
begin
        inherited damage(damage, damageType);
        Self.damageFloaters.add(damage);
        if (damage) > (0) then begin
            Self.getHealthInterface().damage(damage);
        end;
end;
    

// throws Exception
function TBuildingLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

procedure TBuildingLayer.addVisibility;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
begin
        geographicMapCellPositionArea := Self.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(occupyList);
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(surroundList);
end;
    

procedure TBuildingLayer.removeVisibility;
var
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
begin
        occupyList := Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(occupyList);
        surroundList := Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(surroundList);
end;
    

// throws Exception
procedure TBuildingLayer.setDestroyed(destroyed: Boolean);
var
  damage: Integer;
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TDropCellPositionHistory.getInstance().removeAll(Self);
            TTrackingEventHandler.getInstance().removeListener(Self);
            if Self.local then begin
                Self.removeVisibility();
            end;
            if not (Self.getHealthInterface().isAlive()) then begin
                damage := Self.getHealthInterface().getMaxHealth();
                if (damage) > (10) then begin
                    TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                    if (damage) < (100) then begin
                        Self.shakeListener.onSmallShakeEvent();
                        Self.vibration.vibrate(Self.duration, 0, 0);
                    end else if (damage) < (1000) then begin
                        Self.shakeListener.onMediumShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (2), 0, 0);
                    end else if (damage) < (3000) then begin
                        Self.shakeListener.onLargeShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (4), 0, 0);
                    end;
                end;
            end;
        end;
end;
    

function TBuildingLayer.createHudPaintable: TSelectionHudPaintable;
var
  buildingInfoHudPaintable_: TBuildingInfoHudPaintable;
begin
        buildingInfoHudPaintable_ := TBuildingInfoHudPaintable.getInstance();
        buildingInfoHudPaintable_.setBasicColorP(Self.allBinaryGameLayerManagerP.getForegroundBasicColor());
        buildingInfoHudPaintable_.setRtsLayer(Self);
        Exit(buildingInfoHudPaintable_);
end;
    

function TBuildingLayer.getHudPaintable: TSelectionHudPaintable;
var
  buildingInfoHudPaintable_: TBuildingInfoHudPaintable;
begin
        buildingInfoHudPaintable_ := TBuildingInfoHudPaintable.getInstance();
        Exit(buildingInfoHudPaintable_);
end;
    

function TBuildingLayer.getType: Integer;
begin
        Exit(TBuildingLayer.getStaticType());
end;
    

class function TBuildingLayer.getStaticType: Integer;
begin
        Exit(2);
end;
    

function TBuildingLayer.getRotationAnimationInterface: TRotationAnimation;
begin
        Exit(inherited getRotationAnimationInterface());
end;
    

procedure TBuildingLayer.setFrame(index: Integer);
begin
        inherited setFrame(index);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

