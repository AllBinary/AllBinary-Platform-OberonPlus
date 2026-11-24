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
// package org.allbinary.game.layer
unit AdvancedRTSGameLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, ShakeAnimationListener, DestroyedEvent, DestroyedEventListenerInterface, Health, Group, RTSFormInput, Waypoint2LogHelper, WaypointLogHelper, WaypointRunnableLogHelper, RemoteInfo, TickableInterface, Rectangle, AllBinaryLayer, AllBinaryVibrationME, BasicGeographicMap, GeographicMapCellPosition, BasicArrayList, ViewPositionBase, PathFindingLayerInterface, AdvancedRTSProperties, RTSPlayerLayerInterface, WaypointBehaviorBase, RTSLayer, EventListenerInterface;

type
  {AB:TYPES}
  TAdvancedRTSGameLayer = class(TRTSLayer, IDestroyedEventListenerInterface, IEventListenerInterface)
  public
    shakeListener: TShakeAnimationListener;
    vibration: TAllBinaryVibrationME;
    duration: Integer;
    parentLayer: IPathFindingLayerInterface;
    waypointBehaviorBase: ITickableInterface;
    procedure InitFields;
    function JavaObject: TObject;
        class function createSimulated: TAdvancedRTSGameLayer; static;
        constructor Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure initVisibility(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface); virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getParentLayer: IPathFindingLayerInterface; virtual;
        procedure setParentLayer(parentLayer: IPathFindingLayerInterface); virtual;
        function getWaypointBehavior: TWaypointBehaviorBase; virtual;
        procedure setWaypointBehavior(unitWaypointHelper: TWaypointBehaviorBase); virtual;
        function getWaypointLogHelper: TWaypointLogHelper; virtual;
        function getWaypoint2LogHelper: TWaypoint2LogHelper; virtual;
        function getWaypointRunnableLogHelper: TWaypointRunnableLogHelper; virtual;
        function shouldAddWaypointFromBuilding: Boolean; virtual;
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure setSelected(selected: Boolean); virtual;
        procedure onDestroyed(destroyedEvent_: TDestroyedEvent); virtual;
  end;

implementation
uses
  NullPathFindingLayer, AdvancedRTSPlayerLayerInterface, RTSLayerUtil, Canvas, NullAnimationFactory, NullIndexedAnimationFactory, Direction, DirectionFactory, GameTypeFactory, DestroyedEventHandler, GroupFactory, GameKeyEventFactory, NullRTSFormInputFactory, BuildingEventHandler, Waypoint2SelectedLogHelper, WaypointBase, WaypointRunnableSelectedLogHelper, WaypointSelectedLogHelper, NullTickable, TileLayerPositionIntoViewPosition, RectangleFactory, StringUtil, AngleInfo, FrameUtil, GeographicMapCompositeInterface, GeographicMapDirectionUtil;


{AB:CODE}

procedure TAdvancedRTSGameLayer.InitFields;
begin
  
  
  
  Self.parentLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  Self.waypointBehaviorBase := TNullTickable.getInstance();
end;

function TAdvancedRTSGameLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TAdvancedRTSGameLayer.createSimulated: TAdvancedRTSGameLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TAdvancedRTSGameLayer.Create(TRemoteInfo.REMOTE_INFO, TNullPathFindingLayer.NULL_PATH_FINDING_LAYER, TAdvancedRTSProperties.createPropertiesSimulated(), TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0, TTileLayerPositionIntoViewPosition.Create()));
end;
    

constructor TAdvancedRTSGameLayer.Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties_: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput_: TRTSFormInput; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo_, groupInterface, rootName, name, healthInterface, rtsFormInput_, animationInterfaceFactoryInterface_, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface_, rectangle_, x, y, viewPosition);
        InitFields;
        Self.setVisible(False);
        Self.setWaypointBehavior(TWaypointBehaviorBase.Create());
        Self.shakeListener := advancedRTSProperties_.shakeListener;
        Self.vibration := advancedRTSProperties_.vibration;
        Self.duration := advancedRTSProperties_.duration;
        Self.setParentLayer(parentLayer);
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
begin
        inherited updateWaypointBehavior(geographicMapInterface);
        Self.getWaypointBehavior().getWaypoint().setAllBinaryGameLayerManager(Self.allBinaryGameLayerManagerP);
end;
    

procedure TAdvancedRTSGameLayer.initVisibility(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
var
  advancedRTSPlayerLayerInterface_: IAdvancedRTSPlayerLayerInterface;
begin
        advancedRTSPlayerLayerInterface_ := (TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface);
        if (advancedRTSPlayerLayerInterface_.isLocalPlayer()) or ((advancedRTSPlayerLayerInterface_.getGameType()) = (TGameTypeFactory.getInstance().BOT)) then begin
            Self.setVisible(True);
        end else begin
            Self.setVisible(False);
        end;
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.construct(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface_);
        Self.initVisibility(rtsPlayerLayerInterface_);
        TBuildingEventHandler.getInstance().addListenerInterface(Self.getWaypointBehavior().getWaypoint());
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.setDestroyed(destroyed: Boolean);
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TBuildingEventHandler.getInstance().removeListener(Self.getWaypointBehavior().getWaypoint());
            TBuildingEventHandler.getInstance().removeListener(Self);
            TDestroyedEventHandler.getInstance().addListener(Self);
            TRTSLayerUtil.getInstance().destroyAndClear(Self.getWaypointBehavior().getOwnedWaypointList());
        end;
end;
    

function TAdvancedRTSGameLayer.getParentLayer: IPathFindingLayerInterface;
begin
        Exit(Self.parentLayer);
end;
    

procedure TAdvancedRTSGameLayer.setParentLayer(parentLayer: IPathFindingLayerInterface);
begin
        Self.parentLayer := parentLayer;
end;
    

function TAdvancedRTSGameLayer.getWaypointBehavior: TWaypointBehaviorBase;
begin
        Exit(TWaypointBehaviorBase(TJava.ToObject(Self.waypointBehaviorBase)));
end;
    

procedure TAdvancedRTSGameLayer.setWaypointBehavior(unitWaypointHelper: TWaypointBehaviorBase);
begin
        Self.waypointBehaviorBase := unitWaypointHelper;
end;
    

function TAdvancedRTSGameLayer.getWaypointLogHelper: TWaypointLogHelper;
begin
        Exit(Self.waypointLogHelperP);
end;
    

function TAdvancedRTSGameLayer.getWaypoint2LogHelper: TWaypoint2LogHelper;
begin
        Exit(Self.waypoint2LogHelperP);
end;
    

function TAdvancedRTSGameLayer.getWaypointRunnableLogHelper: TWaypointRunnableLogHelper;
begin
        Exit(Self.waypointRunnableLogHelperP);
end;
    

function TAdvancedRTSGameLayer.shouldAddWaypointFromBuilding: Boolean;
var
  parentAdvancedRTSGameLayer: TAdvancedRTSGameLayer;
begin
        if TJava.ToObject(Self.parentLayer) <> TJava.ToObject(TNullPathFindingLayer.NULL_PATH_FINDING_LAYER) then begin
            parentAdvancedRTSGameLayer := TAdvancedRTSGameLayer(TJava.ToObject(Self.parentLayer));
            if (parentAdvancedRTSGameLayer.getType()) <> (1) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TAdvancedRTSGameLayer.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        if (Self.getType()) <> (1) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TAdvancedRTSGameLayer.buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  buildingDirection: TDirection;
  angleInfo_: TAngleInfo;
  angle: Integer;
  gameKeyEventFactory_: TGameKeyEventFactory;
begin
        geographicMapCellPosition_ := Self.getCurrentGeographicMapCellPosition();
        buildingDirection := TGeographicMapDirectionUtil.getInstance().getDirectionFromCellPositionToAdjacentCellPosition(geographicMapCellPosition_, cellPosition);
        angleInfo_ := Self.getRotationAnimationInterface().getAngleInfoP();
        angle := TFrameUtil.getInstance().adjustAngleToFrameAngle((angleInfo_.getAngle()) + (90));
        gameKeyEventFactory_ := TGameKeyEventFactory.getInstance();
        if (buildingDirection) = (TDirectionFactory.getInstance().UP) then begin
            Self.rtsLayer2LogHelper.buildingAbove(Self);
            if ((angle) > (180)) and ((angle) < (360)) then begin
                Self.rtsLayer2LogHelper.buildingChaseLeft(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.LEFT)));
                if (angle) <= (190) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseRight(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.RIGHT)));
                if (angle) >= (170) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().DOWN) then begin
            Self.rtsLayer2LogHelper.buildingDown(Self);
            if ((angle) > (180)) and ((angle) < (360)) then begin
                Self.rtsLayer2LogHelper.buildingChaseLeft(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.RIGHT)));
                if (angle) > (315) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseRight(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.LEFT)));
                if (angle) < (45) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().LEFT) then begin
            Self.rtsLayer2LogHelper.buildingLeft();
            if ((angle) > (90)) and ((angle) < (270)) then begin
                Self.rtsLayer2LogHelper.buildingChaseDown(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.LEFT)));
                if (angle) < (135) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseUp(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.RIGHT)));
                if (angle) > (45) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().RIGHT) then begin
            Self.rtsLayer2LogHelper.buildingRight();
            if ((angle) > (90)) and ((angle) < (270)) then begin
                Self.rtsLayer2LogHelper.buildingChaseDown(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.RIGHT)));
                if (angle) > (225) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseUp(Self, angle);
                Self.getGameKeyEventList().add(TJava.Box(gameKeyEventFactory_.getInstanceForKey(Self, TCanvas.LEFT)));
                if ((angle) < (315)) and ((angle) > (180)) then begin
                    Exit(True);
                end;
            end;
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList: TBasicArrayList;
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.geographicMapCellPositionAreaBase.update(geographicMapInterface);
        Exit(Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList());
end;
    

procedure TAdvancedRTSGameLayer.setSelected(selected: Boolean);
begin
        inherited setSelected(selected);
        if Self.debug then begin
            if selected then begin
                Self.waypointLogHelperP := TWaypointSelectedLogHelper.getInstance();
                Self.waypoint2LogHelperP := TWaypoint2SelectedLogHelper.getInstance();
                Self.waypointRunnableLogHelperP := TWaypointRunnableSelectedLogHelper.getInstance();
            end else begin
                Self.waypointLogHelperP := TWaypointLogHelper.getInstance();
                Self.waypoint2LogHelperP := TWaypoint2LogHelper.getInstance();
                Self.waypointRunnableLogHelperP := TWaypointRunnableLogHelper.getInstance();
            end;
        end;
end;
    

procedure TAdvancedRTSGameLayer.onDestroyed(destroyedEvent_: TDestroyedEvent);
var
  layerInterface: TAllBinaryLayer;
  waypoint: TWaypointBase;
begin
        try
            layerInterface := destroyedEvent_.getLayerInterface();
            if (layerInterface) = (Self) then begin
                TDestroyedEventHandler.getInstance().removeListener(Self);
                waypoint := TWaypointBase(TJava.ToObject(Self.getWaypointBehavior().getWaypoint()));
                waypoint.reset();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onDestroyed', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

