{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, RTSFormInput, MultiPlayerGameLayer, Animation, AnimationInterfaceFactoryInterface, IndexedAnimation, ProceduralAnimationInterfaceFactoryInterface, RotationAnimation, CaptionAnimationHelperBase, Health, Group, GameInputInterface, GameInputProcessor, GameKeyEventSourceInterface, Waypoint2LogHelper, WaypointLogHelper, WaypointRunnableLogHelper, TickableInterface, TrackingEvent, Rectangle, ScrollSelectionForm, AllBinaryLayer, AllBinaryLayerManager, BasicGeographicMap, TimeDelayHelper, RemoteInfo, LayerDistanceUtil, GeographicMapCellHistory, GeographicMapCellPosition, ABHashtable, BasicArrayList, ViewPositionBase, RTSLayer2LogHelper, GeographicMapCellPositionAreaBase, AllBinaryGameLayerManager, RTSPlayerLayerInterface, RTSLayerUtil, PathFindingLayerInterface, SelectionHudPaintable, WaypointBehaviorBase, RTSInterface, NamedInterface;

type
  {AB:TYPES}
  TRTSLayer = class(TMultiPlayerGameLayer, ITickableInterface, IGameInputInterface, IGameKeyEventSourceInterface, IRTSInterface, IPathFindingLayerInterface, INamedInterface)
  public
    debug: Boolean;
    showMoreCaptionStates: Boolean;
    inputProcessorArray: TArray<TGameInputProcessor>;
    rtsLayer2LogHelper: TRTSLayer2LogHelper;
    waypointLogHelperP: TWaypointLogHelper;
    waypoint2LogHelperP: TWaypoint2LogHelper;
    waypointRunnableLogHelperP: TWaypointRunnableLogHelper;
    rtsFormInput: TRTSFormInput;
    verticleBuildAnimationInterface: TIndexedAnimation;
    rangeAnimation: TAnimation;
    initRangeAnimation: TAnimation;
    sensorRangeAnimation: TAnimation;
    initSensorRangeAnimation: TAnimation;
    baseAnimationInterface: TAnimation;
    buildFrameTimeHelper: TTimeDelayHelper;
    buildAnimationInterface: TAnimation;
    animationInterface: TAnimation;
    initAnimationInterface: TIndexedAnimation;
    indexedButShouldBeRotationAnimationInterface: TIndexedAnimation;
    emptyAnimationInterface: TIndexedAnimation;
    destroyAnimationInterface: TIndexedAnimation;
    fireTimeHelper: TTimeDelayHelper;
    rootName: string;
    hashtable: TABHashtable<TObject, TObject>;
    BUILD_VALUE: Integer;
    geographicMapCellPositionAreaBase: TGeographicMapCellPositionAreaBase;
    healthInterface: THealth;
    level: Integer;
    maxLevel: Integer;
    hackVerticleBuild: Integer;
    slightAngle: Integer;
    percentCompleteP: Integer;
    destroyed: Boolean;
    selected: Boolean;
    rtsLayerUtil: TRTSLayerUtil;
    layerDistanceUtil: TLayerDistanceUtil;
    class var id: Integer;
    class var MAIN_INDEX: Integer;
    class var SECONDARY_INDEX: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function createSimulatedInstance(remoteInfo_: TRemoteInfo): TRTSLayer; static;
        constructor Create(remoteInfo_: TRemoteInfo; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure select; virtual;
        procedure deselect; virtual;
        procedure setSelected(selected: Boolean); virtual;
        function isSelected: Boolean; virtual;
        function getPercentComplete: Integer; virtual;
        function getScrollSelectionForm: TScrollSelectionForm; virtual;
        procedure initInputProcessors; virtual;
        procedure processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure reload; virtual;
        procedure onMovement(trackingEvent_: TTrackingEvent); virtual;
        procedure onMovementFound(trackingEvent_: TTrackingEvent); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getSourceId: Integer; virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        function isCompleted: Boolean; virtual;
        procedure build;
        function isSelfUpgradeable: Boolean; virtual;
        function getCost: Integer; virtual;
        function getDowngradeCost: Integer; virtual;
        function getUpgradeCost: Integer; virtual;
        function isUpgradeable: Boolean; virtual;
        function isDowngradeable: Boolean; virtual;
        function getLevel: Integer; virtual;
        procedure setLevel(level: Integer); virtual;
        function getVerticleBuildAnimationInterface: TAnimation; virtual;
        function getAnimationInterface: TAnimation; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        procedure setTarget(targetGameLayer: IPathFindingLayerInterface); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getMaxLevel: Integer; virtual;
        procedure setMaxLevel(maxLevel: Integer); virtual;
        function getHealthInterface: THealth; virtual;
        procedure setHealthInterface(healthInterface: THealth); virtual;
        function getRTSFormInput: TRTSFormInput; virtual;
        function isDestroyed: Boolean; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getEndGeographicMapCellPositionList: TBasicArrayList; virtual;
        function getGeographicMapCellPositionArea: TGeographicMapCellPositionAreaBase; virtual;
        function shouldHandleStartSameAsEnd: Boolean; virtual;
        procedure handleCost(ownerLayer: IPathFindingLayerInterface); virtual;
        function getWaypointBehavior: TWaypointBehaviorBase; virtual;
        function getParentLayer: IPathFindingLayerInterface; virtual;
        function getRTSLayer2LogHelper: TRTSLayer2LogHelper; virtual;
        function getWaypointLogHelper: TWaypointLogHelper; virtual;
        function getWaypoint2LogHelper: TWaypoint2LogHelper; virtual;
        function getWaypointRunnableLogHelper: TWaypointRunnableLogHelper; virtual;
        function shouldAddWaypointFromBuilding: Boolean; virtual;
        function getCaptionAnimationHelper: TCaptionAnimationHelperBase; virtual;
        function isShowMoreCaptionStates: Boolean; virtual;
        procedure init(geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getTopLeftGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getMoveOutOfBuildAreaPath(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        procedure setClosestGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure teleportTo(geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        procedure setLoad(resource: Integer); virtual;
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure trackTo(reason: string); virtual;
        procedure trackToDXY(dx: Integer; dy: Integer); virtual;
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function getTrackingEvent: TTrackingEvent; virtual;
        function buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean; virtual;
        procedure allStop; virtual;
        class function getMinStaticType: Integer; static;
        class function getMaxStaticType: Integer; static;
        class function isRTSLayer(layerInterface: TAllBinaryLayer): Boolean; static;
        function implmentsTickableInterface: Boolean; virtual;
        function implmentsGameInputInterface: Boolean; virtual;
        function getRootName: string; virtual;
        function getRotationAnimationInterface: TRotationAnimation; virtual;
        procedure setFrame(index: Integer); virtual;
        procedure setRotationAnimationInterface(rotationAnimationInterface: TRotationAnimation); virtual;
  end;

implementation
uses
  GeographicMapCellPositionArea, AllBinaryTiledLayer, NullAnimationFactory, NullIndexedAnimationFactory, DestroyedLayerProcessor, GroupFactory, GameInputProcessorUtil, InputFactory, NullRTSFormInputFactory, TileLayerPositionIntoViewPosition, RectangleFactory, ViewPositionEventHandler, StdUtil, StringUtil, GeographicMapCompositeInterface;


{AB:CODE}

procedure TRTSLayer.InitFields;
begin
  Self.debug := True;
  Self.showMoreCaptionStates := Self.debug;
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  Self.rtsLayer2LogHelper := TRTSLayer2LogHelper.getInstance();
  Self.waypointLogHelperP := TWaypointLogHelper.getInstance();
  Self.waypoint2LogHelperP := TWaypoint2LogHelper.getInstance();
  Self.waypointRunnableLogHelperP := TWaypointRunnableLogHelper.getInstance();
  
  
  
  
  
  
  
  Self.buildFrameTimeHelper := TTimeDelayHelper.Create(50);
  
  
  
  
  
  
  Self.fireTimeHelper := TTimeDelayHelper.Create(700);
  
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.BUILD_VALUE := 63;
  
  Self.healthInterface := THealth.NULL_HEALTH;
  Self.level := 1;
  Self.maxLevel := 1;
  Self.hackVerticleBuild := Self.BUILD_VALUE;
  Self.slightAngle := 0;
  
  Self.destroyed := False;
  Self.selected := False;
  Self.rtsLayerUtil := TRTSLayerUtil.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
end;

function TRTSLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TRTSLayer.createSimulatedInstance(remoteInfo_: TRemoteInfo): TRTSLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TRTSLayer.Create(TRemoteInfo.REMOTE_INFO, TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0, TTileLayerPositionIntoViewPosition.Create()));
end;
    

constructor TRTSLayer.Create(remoteInfo_: TRemoteInfo; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
var
  animation_: TAnimation;
begin
        inherited Create(remoteInfo_, groupInterface, name, rectangle_, viewPosition);
        InitFields;
        Self.initInputProcessors();
        Self.rootName := rootName;
        Self.healthInterface := healthInterface;
        Self.rtsFormInput := rtsFormInput_;
        Self.setPosition(x, y, Self.z);
        Self.verticleBuildAnimationInterface := TIndexedAnimation(TJava.ToObject(verticleBuildAnimationInterfaceFactoryInterface.getInstance(0)));
        Self.buildAnimationInterface := buildAnimationInterfaceFactoryInterface.getInstance(0);
        Self.baseAnimationInterface := baseAnimationInterfaceFactoryInterface.getInstance(0);
        Self.emptyAnimationInterface := TIndexedAnimation(TJava.ToObject(emptyAnimationInterfaceFactoryInterface.getInstance(0)));
        Self.indexedButShouldBeRotationAnimationInterface := TIndexedAnimation(TJava.ToObject(animationInterfaceFactoryInterface_.getInstance(0)));
        Self.initAnimationInterface := Self.indexedButShouldBeRotationAnimationInterface;
        Self.destroyAnimationInterface := TIndexedAnimation(TJava.ToObject(proceduralAnimationInterfaceFactoryInterface_.getInstanceAnimation(Self.indexedButShouldBeRotationAnimationInterface)));
        animation_ := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        Self.rangeAnimation := animation_;
        Self.initRangeAnimation := animation_;
        Self.sensorRangeAnimation := animation_;
        Self.initSensorRangeAnimation := animation_;
        Self.animationInterface := Self.initAnimationInterface;
        Self.geographicMapCellPositionAreaBase := TGeographicMapCellPositionArea.Create(Self);
end;
    

// throws Exception
procedure TRTSLayer.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
  viewPosition2: TTileLayerPositionIntoViewPosition;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        viewPosition2 := TTileLayerPositionIntoViewPosition(TJava.ToObject(Self.getViewPosition()));
        viewPosition2.setTiledLayer(tiledLayer);
        Self.updateWaypointBehavior(geographicMapInterface);
end;
    

// throws Exception
procedure TRTSLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
begin
        Self.geographicMapCellPositionAreaBase.update(geographicMapInterface);
end;
    

// throws Exception
procedure TRTSLayer.construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
begin
        TViewPositionEventHandler.getInstance().addListener(TAllBinaryLayer(TJava.ToObject(Self)));
        Self.animationInterface := Self.buildAnimationInterface;
        Self.hackVerticleBuild := 0;
end;
    

procedure TRTSLayer.select;
begin
        Self.rangeAnimation := Self.initRangeAnimation;
        Self.sensorRangeAnimation := Self.initSensorRangeAnimation;
        Self.setSelected(True);
end;
    

procedure TRTSLayer.deselect;
var
  animation_: TAnimation;
begin
        animation_ := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        Self.rangeAnimation := animation_;
        Self.sensorRangeAnimation := animation_;
        Self.setSelected(False);
end;
    

procedure TRTSLayer.setSelected(selected: Boolean);
begin
        Self.selected := selected;
end;
    

function TRTSLayer.isSelected: Boolean;
begin
        Exit(Self.selected);
end;
    

function TRTSLayer.getPercentComplete: Integer;
begin
        Exit(Self.percentCompleteP);
end;
    

function TRTSLayer.getScrollSelectionForm: TScrollSelectionForm;
begin
        Exit(TScrollSelectionForm.getNullScrollSelectionForm());
end;
    

procedure TRTSLayer.initInputProcessors;
begin
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

// throws Exception
procedure TRTSLayer.processBuiltTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        Self.animationInterface := Self.indexedButShouldBeRotationAnimationInterface;
end;
    

procedure TRTSLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        try
            if Self.isCompleted() then begin
                Self.processBuiltTick(allBinaryLayerManager_);
            end else begin
                Self.build();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processTick', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TRTSLayer.processInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

procedure TRTSLayer.reload;
begin
end;
    

procedure TRTSLayer.onMovement(trackingEvent_: TTrackingEvent);
begin
end;
    

// throws Exception
procedure TRTSLayer.onMovementFound(trackingEvent_: TTrackingEvent);
begin
end;
    

procedure TRTSLayer.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        inherited paintFirst(graphics_);
        viewPosition := Self.getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.getAnimationInterface().paintXY(graphics_, viewX, viewY);
end;
    

// throws Exception
procedure TRTSLayer.damage(damage: Integer; damageType: Integer);
begin
end;
    

function TRTSLayer.getSourceId: Integer;
begin
        Exit(TRTSLayer.id);
end;
    

procedure TRTSLayer.downgrade;
begin
        Self.rtsLayerUtil.downgrade(Self);
end;
    

procedure TRTSLayer.upgrade;
begin
        Self.rtsLayerUtil.upgrade(Self);
end;
    

function TRTSLayer.isCompleted: Boolean;
begin
        if (Self.hackVerticleBuild) < (Self.BUILD_VALUE) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

// throws Exception
procedure TRTSLayer.build;
begin
        if Self.buildFrameTimeHelper.isTimeTNT() then begin
            Self.animationInterface := Self.buildAnimationInterface;
            Self.verticleBuildAnimationInterface.nextFrame();
            Inc(Self.hackVerticleBuild);
        end;
        Self.percentCompleteP := ((100) * (Self.hackVerticleBuild)) div (Self.BUILD_VALUE);
        Self.getHudPaintable().updateInfo();
end;
    

function TRTSLayer.isSelfUpgradeable: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.getCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getCost(Self));
end;
    

function TRTSLayer.getDowngradeCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getDowngradeCost(Self));
end;
    

function TRTSLayer.getUpgradeCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getUpgradeCost(Self));
end;
    

function TRTSLayer.isUpgradeable: Boolean;
begin
        if (Self.getLevel()) < (Self.getMaxLevel()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TRTSLayer.isDowngradeable: Boolean;
begin
        if (Self.getLevel()) > (1) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TRTSLayer.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

procedure TRTSLayer.setLevel(level: Integer);
begin
        Self.level := level;
end;
    

function TRTSLayer.getVerticleBuildAnimationInterface: TAnimation;
begin
        Exit(Self.verticleBuildAnimationInterface);
end;
    

function TRTSLayer.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TRTSLayer.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

// throws Exception
procedure TRTSLayer.setTarget(targetGameLayer: IPathFindingLayerInterface);
var
  anotherTargetDistance: Integer;
  waypointBehaviorBase_: TWaypointBehaviorBase;
begin
        anotherTargetDistance := Self.layerDistanceUtil.getDistance(TAllBinaryLayer(TJava.ToObject(Self)), TAllBinaryLayer(TJava.ToObject(targetGameLayer)));
        waypointBehaviorBase_ := Self.getWaypointBehavior();
        waypointBehaviorBase_.setTargetWithDistance((TJava.ToObject(targetGameLayer) as IPathFindingLayerInterface), anotherTargetDistance);
end;
    

function TRTSLayer.createHudPaintable: TSelectionHudPaintable;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getHudPaintable: TSelectionHudPaintable;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getMaxLevel: Integer;
begin
        Exit(Self.maxLevel);
end;
    

procedure TRTSLayer.setMaxLevel(maxLevel: Integer);
begin
        Self.maxLevel := maxLevel;
end;
    

function TRTSLayer.getHealthInterface: THealth;
begin
        Exit(Self.healthInterface);
end;
    

procedure TRTSLayer.setHealthInterface(healthInterface: THealth);
begin
        Self.healthInterface := healthInterface;
end;
    

function TRTSLayer.getRTSFormInput: TRTSFormInput;
begin
        Exit(Self.rtsFormInput);
end;
    

// throws Exception
function TRTSLayer.isDestroyed: Boolean;
begin
        Exit(Self.destroyed);
end;
    

// throws Exception
procedure TRTSLayer.setDestroyed(destroyed: Boolean);
begin
        Self.destroyed := destroyed;
        if Self.isDestroyed() then begin
            TDestroyedLayerProcessor.getInstance().add(Self);
            TViewPositionEventHandler.getInstance().removeListener(Self);
        end;
end;
    

function TRTSLayer.getEndGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList());
end;
    

function TRTSLayer.getGeographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
begin
        Exit(Self.geographicMapCellPositionAreaBase);
end;
    

function TRTSLayer.shouldHandleStartSameAsEnd: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
procedure TRTSLayer.handleCost(ownerLayer: IPathFindingLayerInterface);
begin
end;
    

function TRTSLayer.getWaypointBehavior: TWaypointBehaviorBase;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getParentLayer: IPathFindingLayerInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getRTSLayer2LogHelper: TRTSLayer2LogHelper;
begin
        Exit(Self.rtsLayer2LogHelper);
end;
    

function TRTSLayer.getWaypointLogHelper: TWaypointLogHelper;
begin
        Exit(Self.waypointLogHelperP);
end;
    

function TRTSLayer.getWaypoint2LogHelper: TWaypoint2LogHelper;
begin
        Exit(Self.waypoint2LogHelperP);
end;
    

function TRTSLayer.getWaypointRunnableLogHelper: TWaypointRunnableLogHelper;
begin
        Exit(Self.waypointRunnableLogHelperP);
end;
    

function TRTSLayer.shouldAddWaypointFromBuilding: Boolean;
begin
        Exit(False);
end;
    

function TRTSLayer.getCaptionAnimationHelper: TCaptionAnimationHelperBase;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.isShowMoreCaptionStates: Boolean;
begin
        Exit(Self.showMoreCaptionStates);
end;
    

// throws Exception
procedure TRTSLayer.init(geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
end;
    

// throws Exception
function TRTSLayer.getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TRTSLayer.getTopLeftGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TRTSLayer.setClosestGeographicMapCellHistory(pathsList: TBasicArrayList);
begin
end;
    

procedure TRTSLayer.teleportTo(geographicMapCellPosition_: TGeographicMapCellPosition);
begin
end;
    

// throws Exception
procedure TRTSLayer.setLoad(resource: Integer);
begin
end;
    

// throws Exception
function TRTSLayer.getSurroundingGeographicMapCellPositionList: TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TRTSLayer.trackTo(reason: string);
begin
end;
    

// throws Exception
procedure TRTSLayer.trackToDXY(dx: Integer; dy: Integer);
begin
end;
    

function TRTSLayer.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        Exit(False);
end;
    

function TRTSLayer.getTrackingEvent: TTrackingEvent;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TRTSLayer.buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
begin
        Exit(False);
end;
    

procedure TRTSLayer.allStop;
begin
end;
    

class function TRTSLayer.getMinStaticType: Integer;
begin
        Exit(1);
end;
    

class function TRTSLayer.getMaxStaticType: Integer;
begin
        Exit(4);
end;
    

class function TRTSLayer.isRTSLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        if ((layerInterface.getType()) >= (TRTSLayer.getMinStaticType())) and ((layerInterface.getType()) <= (TRTSLayer.getMaxStaticType())) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TRTSLayer.implmentsTickableInterface: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.implmentsGameInputInterface: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.getRootName: string;
begin
        Exit(Self.rootName);
end;
    

function TRTSLayer.getRotationAnimationInterface: TRotationAnimation;
begin
        Exit(TRotationAnimation(TJava.ToObject(Self.indexedButShouldBeRotationAnimationInterface)));
end;
    

procedure TRTSLayer.setFrame(index: Integer);
begin
        Self.getRotationAnimationInterface().setFrame(index);
end;
    

procedure TRTSLayer.setRotationAnimationInterface(rotationAnimationInterface: TRotationAnimation);
begin
        Self.indexedButShouldBeRotationAnimationInterface := rotationAnimationInterface;
end;

initialization
  {AB:INITIALIZATION}
  TRTSLayer.id := 0;
  TRTSLayer.MAIN_INDEX := 0;
  TRTSLayer.SECONDARY_INDEX := 1;
  {AB:END}

end.

