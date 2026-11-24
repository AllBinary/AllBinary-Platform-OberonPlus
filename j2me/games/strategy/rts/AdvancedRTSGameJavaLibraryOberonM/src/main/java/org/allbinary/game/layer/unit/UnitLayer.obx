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
// package org.allbinary.game.layer.unit
unit UnitLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, AnimationInterfaceFactoryInterface, IndexedAnimation, ProceduralAnimationInterfaceFactoryInterface, RotationAnimation, CaptionAnimationHelperBase, Direction, DamageFloaters, Health, Group, GroupCommonFactory, GameKeyEvent, AdvancedRTSGameLayer, AdvancedRTSProperties, AllBinaryGameLayerManager, PathAnimation, PathFindingLayerInterface, RTSLayerEvent, RTSLayerLogHelper, RTSPlayerLayerInterface, SelectionHudPaintable, VehicleProperties, BuildingEventListenerInterface, CapitalEvent, LayerPartialCellPositionsUtil, RemoteInfo, TrackingEvent, TrackingEventListenerInterface, CellPositionFactory, Rectangle, BasicColorFactory, Paintable, AllBinaryLayerManager, LayerInterfaceFactoryInterface, BasicDecimal, AngleFactory, LayerDistanceUtil, NamedAngle, Sound, BasicGeographicMap, GeographicMapCellHistory, GeographicMapCellPosition, BasicArrayList, ViewPositionBase, UnitWaypointBehavior, EventListenerInterface;

type
  {AB:TYPES}
  TUnitLayer = class(TAdvancedRTSGameLayer, IBuildingEventListenerInterface, ITrackingEventListenerInterface, IEventListenerInterface)
  public
    basicColorFactory: TBasicColorFactory;
    groupCommonFactory: TGroupCommonFactory;
    layerPartialCellPositionsUtil: TLayerPartialCellPositionsUtil;
    layerDistanceUtil: TLayerDistanceUtil;
    angleFactory: TAngleFactory;
    cellPositionFactory: TCellPositionFactory;
    maxResourceLoad: SmallInt;
    vehicleProperties: TVehicleProperties;
    accelerationBasicDecimal: TBasicDecimal;
    decelerationBasicDecimal: TBasicDecimal;
    trackingEvent: TTrackingEvent;
    damageFloaters: TDamageFloaters;
    damageFloatersPaintableInterface: TPaintable;
    healthBar: TPaintable;
    moveSoundInterface: TSound;
    initResourceAnimation: TRotationAnimation;
    resourceAnimation: TIndexedAnimation;
    initPathAnimation: TPathAnimation;
    pathAnimation: TAnimation;
    captionAnimationHelper: TCaptionAnimationHelperBase;
    decalAnimation: TRotationAnimation;
    waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface;
    resourceLoad: Integer;
    weaponRange: Integer;
    rtsLogHelper: TRTSLayerLogHelper;
    rotationAnimationInterfaceP: TRotationAnimation;
    movementAngle: TNamedAngle;
    steeringInsideGeographicMapCellPosition: TGeographicMapCellPosition;
    sensorGeographicMapCellPositionList: TBasicArrayList;
    CAPITAL_EVENT: TCapitalEvent;
    class var partialPositionList: TBasicArrayList;
    class var SENSOR_RANGE_MULTIPLIER: Integer;
    class var MOVE_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; vehicleProperties_: TVehicleProperties; healthInterface: THealth; maxResourceLoad: Integer; moveSoundInterface: TSound; waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; decalAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; resourceAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; direction_: TDirection; x: Integer; y: Integer; z: Integer; viewPosition: TViewPositionBase);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure updateSensorGeographicMapCellPositionList; virtual;
        function getSensorGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure select; virtual;
        procedure deselect; virtual;
        procedure setSelected(selected: Boolean); virtual;
        procedure setClosestGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure init(geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        procedure onMovement(trackingEvent_: TTrackingEvent); virtual;
        procedure onMovementFound(trackingEvent_: TTrackingEvent); virtual;
        procedure initRangeHack; virtual;
        procedure processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure teleportTo(geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure left; virtual;
        procedure right; virtual;
        procedure down; virtual;
        procedure up; virtual;
        procedure initInputProcessors; virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure accelerate(accelerate: TBasicDecimal); virtual;
        procedure fireAll(layerManager: TAllBinaryLayerManager); virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        procedure groundFriction; virtual;
        procedure trackTo(reason: string); virtual;
        procedure trackToDXY(dx: Integer; dy: Integer); virtual;
        function turnTo(dx: Integer; dy: Integer; targetAngle: Integer): Boolean;
        procedure handleDeltalX(dx: Integer; dy: Integer);
        procedure handleDeltalY(dx: Integer; dy: Integer);
        procedure trackToDXYTargetAngle(dx: Integer; dy: Integer; targetAngle: Integer);
        procedure fireOrMove; virtual;
        procedure move; virtual;
        procedure allStop; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure onBuildingEvent(event: TRTSLayerEvent); virtual;
        function getVehicleProperties: TVehicleProperties; virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getLoad: Integer; virtual;
        procedure clearResourceAnimation; virtual;
        procedure setLoad(resource: Integer); virtual;
        procedure addLoad(resource: Integer); virtual;
        procedure handleCost(ownerLayer: IPathFindingLayerInterface); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getType: Integer; virtual;
        class function getStaticType: Integer; static;
        function getUnitWaypointBehavior: TUnitWaypointBehavior; virtual;
        function getTrackingEvent: TTrackingEvent; virtual;
        function getCaptionAnimationHelper: TCaptionAnimationHelperBase; virtual;
        function isSelfUpgradeable: Boolean; virtual;
        function getMaxResourceLoad: SmallInt; virtual;
        class function getPartialpositionlist: TBasicArrayList; static;
  end;

implementation
uses
  CollidableUnitBehavior, UnitWaypointBehavior2, Canvas, J2MEUtil, ExplosionBasicSound, FeaturedAnimationInterfaceFactoryInterfaceFactory, NullAnimationFactory, NullIndexedAnimationFactory, CaptionAnimationHelper, AdjustedCircleAnimation, PtsDamageFloaters, WeaponProperties, Features, GameFeatureFactory, BasicHudFactory, HealthBar, HealthBarTwodAnimation, GameKeyEventFactory, GameKeyEventUtil, VisibleCellPositionsSingleton, WaypointRTSFormInput, AllBinaryTiledLayer, LayerCaptionResources, LinePathRelativeAnimation, RTSLayer2LogHelper, RTSLayer2SelectedLogHelper, RTSLayerHudPaintable, RTSLayerSelectedLogHelper, SensorActionFactory, SteeringVisitor, TiledLayerUtil, VehicleFrictionProperties, WaypointBehaviorBase, BuildingLayer, BuildingEventHandler, CapitalEventHandlerFactory, SpecialDownGameInputProcessor, SpecialFireGameInputProcessor, SpecialLeftGameInputProcessor, SpecialRightGameInputProcessor, SpecialUpGameInputProcessor, MultipassNoCacheWaypoint, NoCacheWaypoint, WaypointBase, WaypointEventHandlerFactory, BasicWeaponPart, SalvoInterface, VelocityProperties, TrackingEventHandler, GPoint, NullPaintable, AllBinaryLayer, ABLayer, StdUtil, SmallIntegerSingletonFactory, AngleInfo, FrameUtil, AttackSound, SecondaryPlayerQueueFactory, BasicGeographicMapCellPositionFactory, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, DropCellPositionHistory, RaceTrackGeographicMap, CommonPhoneStrings, ABHashtable, BasicArrayListD, BasicArrayListS;


{AB:CODE}

procedure TUnitLayer.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.groupCommonFactory := TGroupCommonFactory.getInstance();
  Self.layerPartialCellPositionsUtil := TLayerPartialCellPositionsUtil.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
  Self.angleFactory := TAngleFactory.getInstance();
  Self.cellPositionFactory := TCellPositionFactory.getInstance();
  
  
  Self.accelerationBasicDecimal := TBasicDecimal.Create(1600);
  Self.decelerationBasicDecimal := TBasicDecimal.Create(-1000);
  
  
  
  
  
  
  Self.resourceAnimation := TIndexedAnimation(TJava.ToObject(TNullIndexedAnimationFactory.getFactoryInstance().getInstance(0)));
  
  Self.pathAnimation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  Self.captionAnimationHelper := TCaptionAnimationHelper.Create(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TLayerCaptionResources.getInstance().RESOURCE).getInstance(0), -23, -25, 6, 0);
  
  
  Self.resourceLoad := 0;
  
  Self.rtsLogHelper := TRTSLayerLogHelper.getInstance();
  
  Self.movementAngle := Self.angleFactory.NOT_ANGLE;
  Self.steeringInsideGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.sensorGeographicMapCellPositionList := TBasicArrayListD.Create();
  Self.CAPITAL_EVENT := TCapitalEvent.Create(Self);
end;

function TUnitLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUnitLayer.Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; vehicleProperties_: TVehicleProperties; healthInterface: THealth; maxResourceLoad: Integer; moveSoundInterface: TSound; waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; decalAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; resourceAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; direction_: TDirection; x: Integer; y: Integer; z: Integer; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo_, parentLayer, advancedRTSProperties_, groupInterface, rootName, name, healthInterface, TWaypointRTSFormInput.Create(groupInterface, True), animationInterfaceFactoryInterface_, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface_, rectangle_, x, y, viewPosition);
        InitFields;
        Self.setCollidableInferface(TCollidableUnitBehavior.Create(True));
        Self.waypointLayerInterfaceFactoryInterface := waypointLayerInterfaceFactoryInterface;
        Self.maxResourceLoad := maxResourceLoad;
        Self.moveSoundInterface := moveSoundInterface;
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().DAMAGE_FLOATERS) then begin
            Self.damageFloaters := TPtsDamageFloaters.Create(Self);
            Self.damageFloatersPaintableInterface := Self.damageFloaters;
        end else begin
            Self.damageFloatersPaintableInterface := TNullPaintable.getInstance();
            Self.damageFloaters := TDamageFloaters.Create();
        end;
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().HEALTH_BARS) then begin
            Self.healthBar := THealthBar.Create(Self, Self.getHealthInterface(), THealthBarTwodAnimation.Create(TAllBinaryLayer(TJava.ToObject(Self)), TBasicHudFactory.getInstance().BOTTOMLEFT), -1);
        end else begin
            Self.healthBar := TNullPaintable.getInstance();
        end;
        Self.decalAnimation := TRotationAnimation(TJava.ToObject(decalAnimationInterfaceFactoryInterface.getInstance(0)));
        Self.initResourceAnimation := TRotationAnimation(TJava.ToObject(resourceAnimationInterfaceFactoryInterface.getInstance(0)));
        Self.initResourceAnimation.setFrameByDirection(direction_);
        Self.decalAnimation.setFrameByDirection(direction_);
        Self.rotationAnimationInterfaceP := TRotationAnimation(TJava.ToObject(Self.indexedButShouldBeRotationAnimationInterface));
        Self.rotationAnimationInterfaceP.setFrameByDirection(direction_);
        Self.setMaxLevel(12);
        Self.vehicleProperties := vehicleProperties_;
        Self.trackingEvent := TTrackingEvent.Create(TJava.Box(Self));
        Self.initPathAnimation := TPathAnimation.Create(Self, TLinePathRelativeAnimation.getInstance());
end;
    

// throws Exception
procedure TUnitLayer.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        Self.initPathAnimation.setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
end;
    

// throws Exception
procedure TUnitLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
var
  hashtable: TABHashtable<TObject, TObject>;
  features_: TFeatures;
  waypoint: TWaypointBase;
begin
        hashtable := TStdUtil.getInstance().createHashtable();
        hashtable.put(TJava.Box(Self.groupCommonFactory.ID), TJava.Box(Self.getGroupInterface()));
        hashtable.put(TJava.Box(TABLayer.ID), TJava.Box(Self));
        hashtable.put(TJava.Box(TAllBinaryGameLayerManager.ID), TJava.Box(Self.allBinaryGameLayerManagerP));
        Self.setWaypointBehavior(TUnitWaypointBehavior2.Create(Self, TAdvancedRTSGameLayer(TJava.ToObject(Self.waypointLayerInterfaceFactoryInterface.getNextInstance(hashtable, Self.x, Self.y, Self.z)))));
        features_ := TFeatures.getInstance();
        waypoint := TJava.IfThen<Variant>(TJ2MEUtil.isHTML(), TMultipassNoCacheWaypoint.Create(Self, TAttackSound.getInstance()), TNoCacheWaypoint.Create(Self, TAttackSound.getInstance()));
        Self.getWaypointBehavior().setWaypoint(waypoint);
        inherited updateWaypointBehavior(geographicMapInterface);
        Self.initRangeHack();
end;
    

// throws Exception
procedure TUnitLayer.construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface_);
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
        TWaypointEventHandlerFactory.getInstance(Self.getGroupInterface()[0]).addListenerInterface(Self.getUnitWaypointBehavior());
        TBuildingEventHandler.getInstance().addListenerInterface(Self);
        Self.getUnitWaypointBehavior().setCurrentPathGeographicMapCellPosition(Self.getCurrentGeographicMapCellPosition());
        Self.updateSensorGeographicMapCellPositionList();
        Self.getUnitWaypointBehavior().setLastPathGeographicMapCellPosition(Self.getUnitWaypointBehavior().getCurrentPathGeographicMapCellPosition());
end;
    

// throws Exception
procedure TUnitLayer.updateSensorGeographicMapCellPositionList;
var
  currentGeographicMapCellPosition: TGeographicMapCellPosition;
  sensorRange: Integer;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
  totalCells: Integer;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  column: Integer;
  row: Integer;
  lastColumn: Integer;
  lastRow: Integer;
  firstColumn: Integer;
  firstRow: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index2: Integer;
  index: Integer;
begin
        if TVisibleCellPositionsSingleton.getInstance().shouldProcess() then begin
            currentGeographicMapCellPosition := Self.getCurrentGeographicMapCellPosition();
            Self.sensorGeographicMapCellPositionList.clear();
            Self.sensorGeographicMapCellPositionList.add(TJava.Box(currentGeographicMapCellPosition));
            sensorRange := (Self.weaponRange) * (TUnitLayer.SENSOR_RANGE_MULTIPLIER);
            geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
            totalCells := (((sensorRange) div (tiledLayer.getCellHeight()))) div (2);
            geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
            column := currentGeographicMapCellPosition.getColumn();
            row := currentGeographicMapCellPosition.getRow();
            lastColumn := (column) + (totalCells);
            lastRow := (row) + (totalCells);
            if (lastColumn) > (tiledLayer.getColumns()) then begin
                lastColumn := tiledLayer.getColumns();
            end;
            if (lastRow) > (tiledLayer.getRows()) then begin
                lastRow := tiledLayer.getRows();
            end;
            firstColumn := (column) - (totalCells);
            firstRow := (row) - (totalCells);
            if (firstColumn) < (0) then begin
                firstColumn := 0;
            end;
            if (firstRow) < (0) then begin
                firstRow := 0;
            end;
            for index := (lastColumn) - (1) downto firstColumn do begin
                for index2 := (lastRow) - (1) downto firstRow do begin
                    geographicMapCellPosition_ := geographicMapCellPositionFactory.getAt(index, index2);
                    if not (Self.sensorGeographicMapCellPositionList.contains(TJava.Box(geographicMapCellPosition_))) then begin
                        Self.sensorGeographicMapCellPositionList.add(TJava.Box(geographicMapCellPosition_));
                    end;
                end;
            end;
        end;
end;
    

function TUnitLayer.getSensorGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.sensorGeographicMapCellPositionList);
end;
    

procedure TUnitLayer.select;
begin
        Self.pathAnimation := Self.initPathAnimation;
        inherited select();
end;
    

procedure TUnitLayer.deselect;
begin
        Self.pathAnimation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        inherited deselect();
end;
    

procedure TUnitLayer.setSelected(selected: Boolean);
begin
        inherited setSelected(selected);
        if selected then begin
            if Self.debug then begin
                Self.rtsLogHelper := TRTSLayerSelectedLogHelper.getInstance();
            end;
            Self.rtsLayer2LogHelper := TRTSLayer2SelectedLogHelper.getInstance();
        end else begin
            if Self.debug then begin
                Self.rtsLogHelper := TRTSLayerLogHelper.getInstance();
            end;
            Self.rtsLayer2LogHelper := TRTSLayer2LogHelper.getInstance();
        end;
end;
    

// throws Exception
procedure TUnitLayer.setClosestGeographicMapCellHistory(pathsList: TBasicArrayList);
var
  closestIndex: Integer;
  shortestDistance: Integer;
  currentDistance: Integer;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        Self.rtsLogHelper.setClosestGeographicMapCellHistory(Self, pathsList);
        closestIndex := -1;
        shortestDistance := High(Integer);
        currentDistance := High(Integer);
        for index := (pathsList.size()) - (1) downto 0 do begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(TJava.ToObject(pathsList.get(index)));
            geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(geographicMapCellPositionBasicArrayList.get((geographicMapCellPositionBasicArrayList.size()) - (1))));
            currentDistance := Self.layerDistanceUtil.getDistanceAt(Self, geographicMapCellPosition_.getMidPoint());
            if (currentDistance) < (shortestDistance) then begin
                shortestDistance := currentDistance;
                closestIndex := index;
            end;
        end;
        if (closestIndex) >= (0) then begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(TJava.ToObject(pathsList.get(closestIndex)));
            geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(geographicMapCellPositionBasicArrayList.get(0)));
            Self.teleportTo(geographicMapCellPosition_);
        end;
end;
    

// throws Exception
procedure TUnitLayer.init(geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        geographicMapCellHistory_.trackAll(geographicMapCellPositionBasicArrayList);
end;
    

procedure TUnitLayer.onMovement(trackingEvent_: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        try
            layerInterface := TAdvancedRTSGameLayer(TJava.ToObject(trackingEvent_.getLayerInterface()));
            if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
                Self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface);
                layerInterface.onMovementFound(Self.getTrackingEvent());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onMovement', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TUnitLayer.onMovementFound(trackingEvent_: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        layerInterface := TAdvancedRTSGameLayer(TJava.ToObject(trackingEvent_.getLayerInterface()));
        if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
            Self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface);
        end;
end;
    

procedure TUnitLayer.initRangeHack;
var
  basicWeaponPart_: TBasicWeaponPart;
  weaponProperties_: TWeaponProperties;
  sensorRange: Integer;
begin
        basicWeaponPart_ := TBasicWeaponPart(TJava.ToObject(Self.getPartInterfaceArray()[0]));
        weaponProperties_ := basicWeaponPart_.getWeaponProperties();
        Self.weaponRange := weaponProperties_.getRange();
        Self.initRangeAnimation := TAdjustedCircleAnimation.createW(Self.weaponRange, Self.weaponRange, Self.getWidth(), Self.basicColorFactory.GREEN);
        sensorRange := (Self.weaponRange) * (TUnitLayer.SENSOR_RANGE_MULTIPLIER);
        Self.initSensorRangeAnimation := TAdjustedCircleAnimation.createW(sensorRange, sensorRange, Self.getWidth(), Self.basicColorFactory.RED);
        Self.getUnitWaypointBehavior().initRange(Self.weaponRange);
        Self.fireTimeHelper.delay := (Integer(Trunc(weaponProperties_.getReloadTime())));
end;
    

// throws Exception
procedure TUnitLayer.processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  currentFrame: Integer;
  size: Integer;
begin
        if not (Self.getHealthInterface().isAlive()) then begin
            if Self.isReadyForExplosion() then begin
                currentFrame := Self.destroyAnimationInterface.getFrame();
                size := (Self.destroyAnimationInterface.getSize()) - (1);
                if (currentFrame) = (size) then begin
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
                Self.setReadyForExplosion(True);
            end;
        end else begin
            inherited processBuiltTick(allBinaryLayerManager_);
        end;
        Self.captionAnimationHelper.tick();
        Self.getUnitWaypointBehavior().processTick(allBinaryLayerManager_);
end;
    

procedure TUnitLayer.teleportTo(geographicMapCellPosition_: TGeographicMapCellPosition);
var
  point: TGPoint;
begin
        point := geographicMapCellPosition_.getMidPoint();
        Self.setPosition((point.getX()) - (Self.getHalfWidth()), (point.getY()) - (Self.getHalfHeight()), Self.z);
end;
    

// throws Exception
function TUnitLayer.getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  raceTrackGeographicMap_: TRaceTrackGeographicMap;
begin
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        geographicMapCellPosition_ := geographicMapInterface.getCellPositionAtXY((Self.x) + (Self.getHalfWidth()), (Self.y) + (Self.getHalfHeight()));
        raceTrackGeographicMap_ := TRaceTrackGeographicMap(TJava.ToObject(geographicMapInterface));
        if not (raceTrackGeographicMap_.isValid(geographicMapCellPosition_)) then begin
            raise SysUtils.Exception.Create('Position is not really on the map: ' + TJava.ToString(geographicMapCellPosition_));
        end;
        Exit(geographicMapCellPosition_);
end;
    

// throws Exception
procedure TUnitLayer.fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
        if Self.fireTimeHelper.isTimeTNT() then begin
            Self.fireAll(layerManager);
        end else begin
            Self.reload();
        end;
end;
    

// throws Exception
procedure TUnitLayer.left;
begin
        Self.initResourceAnimation.previousRotation();
        Self.decalAnimation.previousRotation();
        Self.rotationAnimationInterfaceP.previousRotation();
end;
    

// throws Exception
procedure TUnitLayer.right;
begin
        Self.initResourceAnimation.nextRotation();
        Self.decalAnimation.nextRotation();
        Self.rotationAnimationInterfaceP.nextRotation();
end;
    

procedure TUnitLayer.down;
var
  velocityProperties_: TVelocityProperties;
begin
        velocityProperties_ := Self.getVehicleProperties().getVelocityProperties();
        if not (velocityProperties_.isOverXYMaxForwardVelocity()) then begin
            Self.accelerate(Self.decelerationBasicDecimal);
        end;
end;
    

procedure TUnitLayer.up;
var
  velocityProperties_: TVelocityProperties;
begin
        velocityProperties_ := Self.getVehicleProperties().getVelocityProperties();
        if not (velocityProperties_.isOverXYMaxForwardVelocity()) then begin
            Self.accelerate(Self.accelerationBasicDecimal);
        end;
end;
    

procedure TUnitLayer.initInputProcessors;
begin
        Self.inputProcessorArray[TCanvas.RIGHT] := TSpecialRightGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.LEFT] := TSpecialLeftGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM0] := TSpecialFireGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_POUND] := Self.inputProcessorArray[TCanvas.KEY_NUM0];
        Self.inputProcessorArray[TCanvas.DOWN] := TSpecialDownGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.UP] := TSpecialUpGameInputProcessor.Create(Self);
        inherited initInputProcessors();
end;
    

// throws Exception
procedure TUnitLayer.processInput(layerManager: TAllBinaryLayerManager);
var
  list: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  key: Integer;
  index: Integer;
begin
        list := Self.getGameKeyEventList();
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.get(index));
            key := TGameKeyEventUtil.getKey(TJava.Box(anyType));
            Self.inputProcessorArray[key].processEvent(layerManager, TGameKeyEvent.NONE);
        end;
        list.clear();
        Self.groundFriction();
        Self.move();
end;
    

procedure TUnitLayer.accelerate(accelerate: TBasicDecimal);
begin
        Self.getVehicleProperties().getVelocityProperties().addVelocityi(accelerate.getUnscaled(), Integer(Trunc(Self.rotationAnimationInterfaceP.getAngleInfoP().getAngle())), 90);
end;
    

// throws Exception
procedure TUnitLayer.fireAll(layerManager: TAllBinaryLayerManager);
var
  angleInfo_: TAngleInfo;
  angle: Integer;
  salvoInterface_: ISalvoInterface;
begin
        angleInfo_ := Self.rotationAnimationInterfaceP.getAngleInfoP();
        angle := Integer(Trunc(((angleInfo_.getAngle()) + (Self.slightAngle))));
        Self.hashtable.put(TSmallIntegerSingletonFactory.getInstance().getAt(1), TSmallIntegerSingletonFactory.getInstance().getAt(Integer(Trunc(TAngleFactory.getInstance().getAt(angle).getValue()))));
        salvoInterface_ := (TJava.ToObject(Self.getPartInterfaceArray()[0]) as ISalvoInterface);
        salvoInterface_.process(layerManager, SmallInt(angle), SmallInt(90));
end;
    

procedure TUnitLayer.downgrade;
begin
        if (Self.getLevel()) > (1) then begin
            inherited downgrade();
        end;
end;
    

procedure TUnitLayer.upgrade;
begin
        inherited upgrade();
        Self.initRangeHack();
end;
    

procedure TUnitLayer.groundFriction;
var
  vehicleFrictionProperties_: TVehicleFrictionProperties;
begin
        vehicleFrictionProperties_ := Self.getVehicleProperties().getVehicleFrictionProperties();
        Self.getVehicleProperties().getVehicleFrictionProperties().friction(Self.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties_.getTireFrictionNominator());
end;
    

// throws Exception
procedure TUnitLayer.trackTo(reason: string);
var
  waypointBehaviorBase_: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
  point: TGPoint;
  dx: Integer;
  dy: Integer;
begin
        waypointBehaviorBase_ := TWaypointBehaviorBase(TJava.ToObject(Self.waypointBehaviorBase));
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase_.getNextUnvisitedPathGeographicMapCellPosition();
        point := nextUnvisitedPathGeographicMapCellPosition.getMidPoint();
        dx := (((Self.getXP()) + (Self.getHalfWidth()))) - (point.getX());
        dy := (((Self.getYP()) + (Self.getHalfHeight()))) - (point.getY());
        Self.rtsLogHelper.trackTo(Self, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason);
        Self.trackToDXY(dx, dy);
end;
    

// throws Exception
procedure TUnitLayer.trackToDXY(dx: Integer; dy: Integer);
var
  angleOfTarget: Integer;
begin
        angleOfTarget := 0;
        Self.trackToDXYTargetAngle(dx, dy, angleOfTarget);
end;
    

// throws Exception
function TUnitLayer.turnTo(dx: Integer; dy: Integer; targetAngle: Integer): Boolean;
var
  waypointBehaviorBase_: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
  evading: Boolean;
  angleInfo_: TAngleInfo;
  angle: Integer;
  gameKeyEventFactory_: TGameKeyEventFactory;
  deltaAngle2: Integer;
begin
        waypointBehaviorBase_ := TWaypointBehaviorBase(TJava.ToObject(Self.waypointBehaviorBase));
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase_.getNextUnvisitedPathGeographicMapCellPosition();
        evading := False;
        if (Self.getUnitWaypointBehavior().getSensorAction()) = (TSensorActionFactory.getInstance().EVADE) then begin
            Self.rtsLogHelper.evade(Self);
            evading := True;
            targetAngle := (targetAngle) + (180);
        end;
        angleInfo_ := Self.rotationAnimationInterfaceP.getAngleInfoP();
        angle := TFrameUtil.getInstance().adjustAngleToFrameAngle((angleInfo_.getAngle()) - (270));
        Self.rtsLogHelper.turnTo(Self, dx, dy, angleInfo_, angle, Self.movementAngle, evading, targetAngle);
        gameKeyEventFactory_ := TGameKeyEventFactory.getInstance();
        if ((dx) = (0)) and ((dy) = (0)) then begin
            Self.rtsLogHelper.doneMoving(Self);
            Exit(True);
        end else if ((Integer(Trunc(Self.movementAngle.getValue())))) = (angle) then begin
            if ((dx) > (0)) and ((Self.movementAngle) = (Self.angleFactory.LEFT)) then begin
                Self.rtsLogHelper.movingLeft(Self);
                Exit(False);
            end;
            if ((dx) < (0)) and ((Self.movementAngle) = (Self.angleFactory.RIGHT)) then begin
                Self.rtsLogHelper.movingRight(Self);
                Exit(False);
            end;
            if ((dy) > (0)) and ((Self.movementAngle) = (Self.angleFactory.UP)) then begin
                Self.rtsLogHelper.movingUp(Self);
                Exit(False);
            end;
            if ((dy) < (0)) and ((Self.movementAngle) = (Self.angleFactory.DOWN)) then begin
                Self.rtsLogHelper.movingDown(Self);
                Exit(False);
            end;
            Self.rtsLogHelper.currentMoveEnded(Self);
            if ((Self.movementAngle) = (Self.angleFactory.LEFT)) or ((Self.movementAngle) = (Self.angleFactory.RIGHT)) then begin
                Self.handleDeltalY(dx, dy);
            end else if ((Self.movementAngle) = (Self.angleFactory.UP)) or ((Self.movementAngle) = (Self.angleFactory.DOWN)) then begin
                Self.handleDeltalX(dx, dy);
            end;
            Exit(True);
        end else begin
            if (nextUnvisitedPathGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
                if (Self.steeringInsideGeographicMapCellPosition) <> (nextUnvisitedPathGeographicMapCellPosition) then begin
                    if ((Abs(dx)) > (Abs(dy))) and ((dy) <> (0)) then begin
                        Self.handleDeltalY(dx, dy);
                    end else if (dx) <> (0) then begin
                        Self.handleDeltalX(dx, dy);
                    end else begin
                        Self.handleDeltalY(dx, dy);
                    end;
                end;
                deltaAngle2 := (Self.movementAngle.getValue()) - (angle);
                if (deltaAngle2) > (0) then begin
                    Self.rtsLogHelper.rotateRight(Self);
                    Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.RIGHT)));
                end else begin
                    Self.rtsLogHelper.rotateLeft(Self);
                    Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.LEFT)));
                end;
                Exit(True);
            end else begin
                Self.rtsLogHelper.noRotation(Self);
            end;
            Exit(False);
        end;
end;
    

procedure TUnitLayer.handleDeltalX(dx: Integer; dy: Integer);
var
  waypointBehaviorBase_: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        waypointBehaviorBase_ := TWaypointBehaviorBase(TJava.ToObject(Self.waypointBehaviorBase));
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase_.getNextUnvisitedPathGeographicMapCellPosition();
        if (dx) > (0) then begin
            Self.movementAngle := Self.angleFactory.LEFT;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end else begin
            Self.movementAngle := Self.angleFactory.RIGHT;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end;
        Self.rtsLogHelper.handle(Self, Self.movementAngle);
end;
    

procedure TUnitLayer.handleDeltalY(dx: Integer; dy: Integer);
var
  waypointBehaviorBase_: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        waypointBehaviorBase_ := TWaypointBehaviorBase(TJava.ToObject(Self.waypointBehaviorBase));
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase_.getNextUnvisitedPathGeographicMapCellPosition();
        if (dy) > (0) then begin
            Self.movementAngle := Self.angleFactory.UP;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end else begin
            Self.movementAngle := Self.angleFactory.DOWN;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end;
        Self.rtsLogHelper.handle(Self, Self.movementAngle);
end;
    

// throws Exception
procedure TUnitLayer.trackToDXYTargetAngle(dx: Integer; dy: Integer; targetAngle: Integer);
var
  list: TBasicArrayList;
  steeringVisitor_: TSteeringVisitor;
  anyType: TObject;
  index: Integer;
begin
        list := Self.getUnitWaypointBehavior().getSteeringVisitorList();
        if (list.size()) > (0) then begin
            for index := (list.size()) - (1) downto 0 do begin
                steeringVisitor_ := TSteeringVisitor(TJava.ToObject(list.get(index)));
                anyType := TJava.Box(steeringVisitor_.visit(Self));
                if (anyType) = (nil) then begin
                    list.removeAt(index);
                end;
            end;
            Self.fireOrMove();
        end else if not (Self.turnTo(dx, dy, targetAngle)) then begin
            Self.fireOrMove();
        end;
end;
    

// throws Exception
procedure TUnitLayer.fireOrMove;
var
  gameKeyEventFactory_: TGameKeyEventFactory;
begin
        gameKeyEventFactory_ := TGameKeyEventFactory.getInstance();
        if Self.getUnitWaypointBehavior().needToMove() then begin
            Self.rtsLayer2LogHelper.steeringUp(Self);
            if (Self.showMoreCaptionStates) and (not (Self.captionAnimationHelper.isShowing())) then begin
                Self.captionAnimationHelper.update(TUnitLayer.MOVE_, Self.basicColorFactory.GREEN);
            end;
            Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.UP)));
        end else begin
            Self.captionAnimationHelper.update(TCommonPhoneStrings.getInstance().FIRE, Self.basicColorFactory.RED);
            Self.rtsLayer2LogHelper.steeringFireOrStop(Self);
            Self.allStop();
            Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.KEY_NUM0)));
            TTrackingEventHandler.getInstance().fireEvent(Self.getTrackingEvent());
        end;
end;
    

procedure TUnitLayer.move;
var
  velocityProperties_: TVelocityProperties;
  velocityXScaled: Int64;
  velocityYScaled: Int64;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  cellPosition: TGeographicMapCellPosition;
  allbinaryLayer_: TAllBinaryLayer;
  tiledLayer: TAllBinaryTiledLayer;
  tiledLayerUtil_: TTiledLayerUtil;
  x: Integer;
  y: Integer;
begin
        try
            velocityProperties_ := Self.getVehicleProperties().getVelocityProperties();
            velocityXScaled := Int64(Trunc(velocityProperties_.getVelocityXBasicDecimalP().getScaled()));
            velocityYScaled := Int64(Trunc(velocityProperties_.getVelocityYBasicDecimalP().getScaled()));
            Self.getUnitWaypointBehavior().move();
            if ((velocityXScaled) <> (0)) or ((velocityYScaled) <> (0)) then begin
                Self.getUnitWaypointBehavior().setMoving(True);
                geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
                geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
                Self.layerPartialCellPositionsUtil.getAllDXY(geographicMapInterface, Self, Integer(velocityXScaled), Integer(velocityYScaled), TUnitLayer.getPartialpositionlist());
                cellPosition := TGeographicMapCellPosition(TJava.ToObject(TDropCellPositionHistory.getInstance().getCellPositionWithDrop(TUnitLayer.getPartialpositionlist())));
                if (cellPosition) = (Self.cellPositionFactory.NONE) then begin
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
                    tiledLayerUtil_ := TTiledLayerUtil.getInstance();
                    x := (Self.x) + (Integer(velocityXScaled));
                    y := (Self.y) + (Integer(velocityYScaled));
                    x := tiledLayerUtil_.keepOnMapX(tiledLayer, x, Self.getWidth());
                    y := tiledLayerUtil_.keepOnMapY(tiledLayer, y, Self.getHeight());
                    Self.setPosition(x, y, Self.z);
                end else begin
                    allbinaryLayer_ := TDropCellPositionHistory.getInstance().getLayerInterface(cellPosition);
                    Self.getUnitWaypointBehavior().setMovingFromStopped(False);
                    Self.getUnitWaypointBehavior().addBuildingChase(allbinaryLayer_, cellPosition);
                end;
            end;
            if Self.getUnitWaypointBehavior().isMoving() then begin
                TTrackingEventHandler.getInstance().fireEvent(Self.getTrackingEvent());
            end else begin
                Self.getUnitWaypointBehavior().setMovingFromStopped(False);
            end;
            if (Self.getUnitWaypointBehavior().isMovingFromStopped()) and (Self.isVisible()) then begin
                TSecondaryPlayerQueueFactory.getInstance().add(Self.moveSoundInterface);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'move', TJava.Box(e));
            end;
        end;
end;
    

procedure TUnitLayer.allStop;
var
  velocityProperties_: TVelocityProperties;
begin
        velocityProperties_ := Self.getVehicleProperties().getVelocityProperties();
        velocityProperties_.getVelocityXBasicDecimalP().setint(0);
        velocityProperties_.getVelocityYBasicDecimalP().setint(0);
end;
    

procedure TUnitLayer.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        if Self.isVisible() then begin
            inherited paint(graphics_);
            viewPosition := Self.getViewPosition();
            viewX := viewPosition.getX();
            viewY := viewPosition.getY();
            Self.decalAnimation.paintXY(graphics_, viewX, viewY);
            Self.rangeAnimation.paintXY(graphics_, viewX, viewY);
            Self.sensorRangeAnimation.paintXY(graphics_, viewX, viewY);
            Self.damageFloatersPaintableInterface.paint(graphics_);
            Self.healthBar.paint(graphics_);
            Self.captionAnimationHelper.paintXY(graphics_, viewX, viewY);
            Self.pathAnimation.paintXY(graphics_, viewX, viewY);
            Self.resourceAnimation.paintXY(graphics_, viewX, viewY);
        end;
end;
    

// throws Exception
procedure TUnitLayer.onBuildingEvent(event: TRTSLayerEvent);
var
  buildingLayer_: TBuildingLayer;
begin
        buildingLayer_ := TBuildingLayer(TJava.ToObject(event.getRtsLayer()));
        Self.getUnitWaypointBehavior().moveAwayFromBuilding(buildingLayer_);
end;
    

function TUnitLayer.getVehicleProperties: TVehicleProperties;
begin
        Exit(Self.vehicleProperties);
end;
    

// throws Exception
procedure TUnitLayer.damage(damage: Integer; damageType: Integer);
begin
        inherited damage(damage, damageType);
        Self.damageFloaters.add(damage);
        if (damage) > (0) then begin
            Self.getHealthInterface().damage(damage);
        end;
end;
    

// throws Exception
function TUnitLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

// throws Exception
procedure TUnitLayer.setDestroyed(destroyed: Boolean);
var
  damage: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'setDestroyed');
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TWaypointEventHandlerFactory.getInstance(Self.getGroupInterface()[0]).removeListener(Self.getUnitWaypointBehavior());
            TTrackingEventHandler.getInstance().removeListener(Self);
            TBuildingEventHandler.getInstance().removeListener(Self);
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
    

function TUnitLayer.getLoad: Integer;
begin
        Exit(Self.resourceLoad);
end;
    

// throws Exception
procedure TUnitLayer.clearResourceAnimation;
begin
        Self.resourceAnimation := TIndexedAnimation(TJava.ToObject(TNullIndexedAnimationFactory.getFactoryInstance().getInstance(0)));
end;
    

// throws Exception
procedure TUnitLayer.setLoad(resource: Integer);
begin
        if (resource) > (0) then begin
            Self.resourceAnimation := Self.initResourceAnimation;
        end else begin
            Self.clearResourceAnimation();
        end;
        Self.resourceLoad := resource;
end;
    

procedure TUnitLayer.addLoad(resource: Integer);
begin
        Self.resourceLoad := (Self.resourceLoad) + (resource);
end;
    

// throws Exception
procedure TUnitLayer.handleCost(ownerLayer: IPathFindingLayerInterface);
begin
        if (Self.getLoad()) > (0) then begin
            Self.CAPITAL_EVENT.setValue(Self.getLoad());
            TCapitalEventHandlerFactory.getInstance(ownerLayer.getGroupInterface()[0]).fireEvent(Self.CAPITAL_EVENT);
            Self.setLoad(0);
        end;
end;
    

function TUnitLayer.createHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable_: TRTSLayerHudPaintable;
begin
        rtsLayerHudPaintable_ := TRTSLayerHudPaintable.getInstance();
        rtsLayerHudPaintable_.setBasicColorP(Self.allBinaryGameLayerManagerP.getForegroundBasicColor());
        rtsLayerHudPaintable_.setRtsLayer(Self);
        Exit(rtsLayerHudPaintable_);
end;
    

function TUnitLayer.getHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable_: TRTSLayerHudPaintable;
begin
        rtsLayerHudPaintable_ := TRTSLayerHudPaintable.getInstance();
        Exit(rtsLayerHudPaintable_);
end;
    

function TUnitLayer.getType: Integer;
begin
        Exit(1);
end;
    

class function TUnitLayer.getStaticType: Integer;
begin
        Exit(1);
end;
    

function TUnitLayer.getUnitWaypointBehavior: TUnitWaypointBehavior;
begin
        Exit(TUnitWaypointBehavior(TJava.ToObject(Self.getWaypointBehavior())));
end;
    

function TUnitLayer.getTrackingEvent: TTrackingEvent;
begin
        Exit(Self.trackingEvent);
end;
    

function TUnitLayer.getCaptionAnimationHelper: TCaptionAnimationHelperBase;
begin
        Exit(Self.captionAnimationHelper);
end;
    

function TUnitLayer.isSelfUpgradeable: Boolean;
begin
        Exit(False);
end;
    

function TUnitLayer.getMaxResourceLoad: SmallInt;
begin
        Exit(Self.maxResourceLoad);
end;
    

class function TUnitLayer.getPartialpositionlist: TBasicArrayList;
begin
        Exit(TUnitLayer.partialPositionList);
end;

initialization
  {AB:INITIALIZATION}
  TUnitLayer.partialPositionList := TBasicArrayListS.Create(4);
  TUnitLayer.SENSOR_RANGE_MULTIPLIER := 6;
  TUnitLayer.MOVE_ := 'Moving';
  {AB:END}

end.

