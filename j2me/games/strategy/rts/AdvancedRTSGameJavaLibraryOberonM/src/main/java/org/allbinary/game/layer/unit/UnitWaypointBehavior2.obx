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
unit UnitWaypointBehavior2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SteeringVisitor, AdvancedRTSGameLayer, RTSLayer, BasicArrayList, LogUtil, WaypointPathRunnableBase, CollidableDestroyableDamageableLayer, BasicColorFactory, AllBinaryLayer, AllBinaryLayerManager, LayerDistanceUtil, GeographicMapCellPosition, ThreadPool, TimeDelayHelper, UnitWaypointStrings, UnitLayer, UnitWaypointBehavior;

type
  {AB:TYPES}
  TBuildingSteeringVisitor = class(TSteeringVisitor)
  public
    positionList: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        function visit(anyType: TObject): TObject; override;
        function getPositionList: TBasicArrayList; virtual;
  end;
  TUnitWaypointBehavior2 = class(TUnitWaypointBehavior)
  public
    logUtil: TLogUtil;
    unitWaypointStrings: TUnitWaypointStrings;
    basicColorFactory: TBasicColorFactory;
    layerDistanceUtil: TLayerDistanceUtil;
    pathFindingThreadPool: TThreadPool;
    progressTimeDelayHelper: TTimeDelayHelper;
    wanderPathsList: TBasicArrayList;
    waypointPathRunnable: TWaypointPathRunnableBase;
    sensorRange: Integer;
    closeRange: Integer;
    nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
    afterNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
    waitingOnTargetPath: Boolean;
    waitingOnWaypointPath: Boolean;
    targetWithoutCachedPathLayerInterface: TCollidableDestroyableDamageableLayer;
    buildingSteeringVisitor: TBuildingSteeringVisitor;
    class var runningWaypointPathList: TBasicArrayList;
    class var TARGET_DISTANCE: string;
    class var TARGET_LAYER: string;
    procedure InitFields;
        constructor Create(ownerAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TAdvancedRTSGameLayer);
        procedure initRange(weaponRange: Integer); override;
        function getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; override;
        function isRunning: Boolean; override;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure onEnemyMovement(layerInterface: TAdvancedRTSGameLayer);
        procedure processPossibleTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
        procedure teleportIfNoProgress;
        procedure setTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
        procedure setTargetPath;
        procedure setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList); override;
        procedure processWaypoint;
        procedure wander;
        function visitIfAtMidPoint(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
        procedure processTargetList;
        procedure processTargeting;
        procedure updateCurrentPathGeographicMapCellPosition;
        procedure setWaypointPath(waypointLayer: TAdvancedRTSGameLayer);
        procedure runWaypointPathTask(waypointLayer: TAdvancedRTSGameLayer);
        procedure removeWaypoint(waypointLayer: TRTSLayer; reason: string);
        procedure clearTarget; override;
        function isWaypointListEmptyOrOnlyTargets: Boolean; override;
        function isCloseRange(layerInterface: TAdvancedRTSGameLayer; targetDistance: Integer): Boolean;
        function isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean; override;
        function getCurrentTargetingStateString: string; override;
        procedure addWaypointFromUser(advancedRTSGameLayer_: TAdvancedRTSGameLayer); override;
        procedure addBuildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition); override;
        function buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
  end;

implementation
uses
  J2MEUtil, Features, MultipassWaypointPathRunnable, WaypointPathRunnable, BasicArrayListD, CommonStrings, StringMaker, PathFindingLayerInterface, WaypointBase, TrackingEventHandler, GPoint, NullUtil, BooleanFactory, SimpleGeographicMapCellPositionFactory, PathFindingThreadPool;


{AB:CODE}

procedure TBuildingSteeringVisitor.InitFields;
begin
  Self.positionList := TBasicArrayListD.Create();
end;

constructor TBuildingSteeringVisitor.Create;
begin
  inherited Create;
  InitFields;
end;
    

    function TBuildingSteeringVisitor.visit(anyType: TObject): TObject;
var
  logUtil_: TLogUtil;
  allbinaryLayer_: TAllBinaryLayer;
  cellPosition: TGeographicMapCellPosition;
  clear: Boolean;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            try
                if (Self.getList().size()) > (0) then begin
                    allbinaryLayer_ := TAllBinaryLayer(TJava.ToObject(Self.getList().get(0)));
                    cellPosition := TGeographicMapCellPosition(TJava.ToObject(Self.getPositionList().get(0)));
                    clear := Self.buildingChase(allbinaryLayer_, cellPosition);
                    if clear then begin
                        Self.getList().clear();
                        Self.positionList.clear();
                        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
                    end;
                    Exit(TJava.Box(TBooleanFactory.getInstance().FALSE_));
                end;
                Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'visit', TJava.Box(e));
                Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
                end;
            end;
end;
    

    function TBuildingSteeringVisitor.getPositionList: TBasicArrayList;
begin
            Exit(Self.positionList);
end;

procedure TUnitWaypointBehavior2.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.unitWaypointStrings := TUnitWaypointStrings.getInstance();
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
  Self.pathFindingThreadPool := TPathFindingThreadPool.getInstance();
  
  
  
  Self.sensorRange := 0;
  Self.closeRange := 0;
  Self.nextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.afterNextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  
  
  Self.targetWithoutCachedPathLayerInterface := TCollidableDestroyableDamageableLayer.getNullInstance();
  Self.buildingSteeringVisitor := TBuildingSteeringVisitor.Create();
end;
    

constructor TUnitWaypointBehavior2.Create(ownerAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TAdvancedRTSGameLayer);
var
  features_: TFeatures;
begin
        inherited Create(ownerAdvancedRTSGameLayer, fakeWaypoint);
        InitFields;
        Self.progressTimeDelayHelper := TTimeDelayHelper.Create(5000);
        Self.wanderPathsList := TBasicArrayListD.Create();
        features_ := TFeatures.getInstance();
        Self.waypointPathRunnable := TJava.IfThen<Variant>(TJ2MEUtil.isHTML(), TMultipassWaypointPathRunnable.Create(), TWaypointPathRunnable.Create());
end;
    

procedure TUnitWaypointBehavior2.initRange(weaponRange: Integer);
begin
        inherited initRange(weaponRange);
        Self.closeRange := weaponRange;
        Self.sensorRange := (weaponRange) * (4);
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.initRange(Self.associatedAdvancedRTSGameLayer, Self.closeRange, Self.sensorRange);
end;
    

function TUnitWaypointBehavior2.getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.nextUnvisitedPathGeographicMapCellPosition);
end;
    

function TUnitWaypointBehavior2.isRunning: Boolean;
begin
        if Self.waypointPathRunnable.isRunning() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        if Self.waypointPathRunnable.isRunning() then begin
            if (Self.waypointPathsListP) <> (TUnitWaypointBehavior2.runningWaypointPathList) then begin
                Self.waypointPathRunnable.setRunning(False);
                if Self.waitingOnTargetPath then begin
                    Self.setTargetPath();
                end else if Self.waitingOnWaypointPath then begin
                    Self.setWaypointPath(TAdvancedRTSGameLayer(TJava.ToObject(Self.waypointPathRunnable.getTargetLayer())));
                end else begin
                    raise SysUtils.Exception.Create('Should not happen');
                end;
            end else begin
                Exit;
            end;
        end;
        Self.processTargetList();
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.processWaypoint();
        end else begin
            Exit;
        end;
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.processTargeting();
        end else begin
            Exit;
        end;
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.teleportIfNoProgress();
        end else begin
            Exit;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.onEnemyMovement(layerInterface: TAdvancedRTSGameLayer);
var
  anotherTargetDistance: Integer;
begin
        anotherTargetDistance := Self.layerDistanceUtil.getDistance(Self.associatedAdvancedRTSGameLayer, layerInterface);
        if (layerInterface) = (Self.currentTargetLayerInterfaceP) then begin
            Self.setCurrentTargetDistance(anotherTargetDistance);
        end else begin
            Self.processPossibleTarget(layerInterface, anotherTargetDistance);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processPossibleTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
var
  isShorterThanCurrentTargetDistance: Boolean;
  isCurrentTargetDestroyed: Boolean;
begin
        isShorterThanCurrentTargetDistance := (Self.getCurrentTargetDistance()) > (anotherTargetDistance);
        isCurrentTargetDestroyed := ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and (Self.currentTargetLayerInterfaceP.isDestroyed());
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed);
        if ((Self.isWaypointListEmptyOrOnlyTargets()) and (Self.isInSensorRange(layerInterface, anotherTargetDistance))) and (((isShorterThanCurrentTargetDistance) or (isCurrentTargetDestroyed))) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processSetTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
            Self.setTarget(layerInterface, anotherTargetDistance);
        end else if (Self.isCloseRange(layerInterface, anotherTargetDistance)) and (((isShorterThanCurrentTargetDistance) or (isCurrentTargetDestroyed))) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTargetCloser(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
            Self.setTarget(layerInterface, anotherTargetDistance);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.teleportIfNoProgress;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
begin
        if (Self.isTrackingWaypoint()) or (Self.associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed()) then begin
            if (Self.progressTimeDelayHelper.isTimeTNT()) and ((Self.nextUnvisitedPathGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then begin
                Self.associatedAdvancedRTSGameLayer.teleportTo(Self.nextUnvisitedPathGeographicMapCellPosition);
            end;
            if Self.getCompleteTimeDelayHelper().isTimeTNT() then begin
                geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(Self.currentGeographicMapCellHistoryP.getTracked().get((Self.currentGeographicMapCellHistoryP.getSize()) - (1))));
                Self.associatedAdvancedRTSGameLayer.teleportTo(geographicMapCellPosition_);
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  pathFindingLayerInterface_: IPathFindingLayerInterface;
  waypoint: TWaypointBase;
  list: TBasicArrayList;
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.TARGET, TBasicColorFactory.getInstance().GREEN);
        Self.associatedAdvancedRTSGameLayer.setLoad(0);
        Self.setCurrentTargetDistance(anotherTargetDistance);
        Self.setCurrentTargetLayerInterface(layerInterface);
        Self.setTrackingWaypoint(False);
        Self.targetList.clear();
        if (not (Self.isCloseRange(layerInterface, anotherTargetDistance))) and (Self.canInsertWaypoint(0, Self.currentTargetLayerInterfaceP)) then begin
            geographicMapCellPosition_ := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
            pathFindingLayerInterface_ := ((TJava.ToObject(Self.currentTargetLayerInterfaceP) as IPathFindingLayerInterface));
            waypoint := pathFindingLayerInterface_.getWaypointBehavior().getWaypoint();
            list := waypoint.getPathsListFromCacheOnly(geographicMapCellPosition_);
            Self.setWaypointPathsList(list);
            if (Self.waypointPathsListP) = (nil) then begin
                Self.targetWithoutCachedPathLayerInterface := Self.currentTargetLayerInterfaceP;
            end else if (Self.waypointPathsListP.size()) <> (0) then begin
                Self.setTargetPath();
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setTargetPath;
begin
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            if Self.currentTargetLayerInterfaceP.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPath(Self.associatedAdvancedRTSGameLayer);
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.KILL, Self.basicColorFactory.ORANGE);
                Self.clearTarget();
                Exit;
            end;
            if (Self.currentTargetLayerInterfaceP) = (Self.waypointPathRunnable.getTargetLayer()) then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPathIgnoreNewPath(Self.associatedAdvancedRTSGameLayer, Self);
                Self.insertWaypoint(0, Self.currentTargetLayerInterfaceP);
                Self.setRandomGeographicMapCellHistory(Self.waypointPathsListP);
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        Self.setCurrentPathGeographicMapCellPosition(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        Self.nextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        inherited setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processWaypoint;
var
  size: Integer;
  targetLayer: TAdvancedRTSGameLayer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  list: TBasicArrayList;
  oldWaypointLayer: TAdvancedRTSGameLayer;
begin
        size := Self.targetList.size();
        if (size) > (0) then begin
            targetLayer := TAdvancedRTSGameLayer(TJava.ToObject(Self.targetList.get(0)));
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypoint(Self.associatedAdvancedRTSGameLayer, Self, targetLayer, size);
            if targetLayer.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.WAYPOINT_DESTROYED_SHORT, Self.basicColorFactory.YELLOW);
                Self.removeWaypoint(targetLayer, Self.unitWaypointStrings.WAYPOINT_DESTROYED);
            end else begin
                geographicMapCellPosition_ := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
                if Self.isTrackingWaypoint() then begin
                    Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTracked(Self.associatedAdvancedRTSGameLayer, Self);
                    if Self.visitIfAtMidPoint(geographicMapCellPosition_) then begin
                        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTrackedVisit(Self.associatedAdvancedRTSGameLayer, geographicMapCellPosition_);
                    end;
                    if (Self.currentGeographicMapCellHistoryP.isAllVisited2()) and ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
                        oldWaypointLayer := TAdvancedRTSGameLayer(TJava.ToObject(Self.currentTargetLayerInterfaceP));
                        oldWaypointLayer.getWaypointBehavior().getWaypoint().visit(Self.associatedAdvancedRTSGameLayer);
                        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.ALL_VISITED_SHORT, Self.basicColorFactory.GREEN);
                        Self.removeWaypoint(TAdvancedRTSGameLayer(TJava.ToObject(Self.currentTargetLayerInterfaceP)), Self.unitWaypointStrings.ALL_VISITED);
                    end;
                end else if ((Self.currentTargetLayerInterfaceP) = (nil)) or (Self.waypointOverridesAttacking) then begin
                    list := targetLayer.getWaypointBehavior().getWaypoint().getPathsListFromCacheOnly(geographicMapCellPosition_);
                    Self.setWaypointPathsList(list);
                    if (Self.waypointPathsListP) = (nil) then begin
                        Self.waitingOnWaypointPath := True;
                        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.THINKING, Self.basicColorFactory.GREEN);
                        Self.runWaypointPathTask(targetLayer);
                        Exit;
                    end;
                    Self.setWaypointPath(targetLayer);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.wander;
begin
        if Self.currentGeographicMapCellHistoryP.isAllVisited2() then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.wander(Self.associatedAdvancedRTSGameLayer);
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.WANDERING, Self.basicColorFactory.RED);
            Self.wanderPathsList.clear();
            Self.wanderPathsList.add(TJava.Box(Self.associatedAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList()));
            Self.setRandomGeographicMapCellHistory(Self.wanderPathsList);
        end;
        Self.visitIfAtMidPoint(Self.getCurrentPathGeographicMapCellPosition());
        Self.updateCurrentPathGeographicMapCellPosition();
        Self.associatedAdvancedRTSGameLayer.trackTo(Self.unitWaypointStrings.NEXT_PATH_NODE);
end;
    

function TUnitWaypointBehavior2.visitIfAtMidPoint(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  unitLayer_: TUnitLayer;
  point: TGPoint;
  afterNextPoint: TGPoint;
  beyondMidPoint: Boolean;
begin
        unitLayer_ := Self.associatedAdvancedRTSGameLayer;
        if ((geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and ((Self.nextUnvisitedPathGeographicMapCellPosition) = (geographicMapCellPosition_)) then begin
            point := geographicMapCellPosition_.getMidPoint();
            afterNextPoint := Self.afterNextUnvisitedPathGeographicMapCellPosition.getMidPoint();
            beyondMidPoint := True;
            if (geographicMapCellPosition_.getColumn()) = (Self.afterNextUnvisitedPathGeographicMapCellPosition.getColumn()) then begin
            end else if (point.getX()) < (afterNextPoint.getX()) then begin
                if ((unitLayer_.getXP()) + (unitLayer_.getHalfWidth())) < (point.getX()) then begin
                    beyondMidPoint := False;
                end;
            end else begin
                if ((unitLayer_.getXP()) + (unitLayer_.getHalfWidth())) > (point.getX()) then begin
                    beyondMidPoint := False;
                end;
            end;
            if (geographicMapCellPosition_.getRow()) = (Self.afterNextUnvisitedPathGeographicMapCellPosition.getRow()) then begin
            end else if (point.getY()) < (afterNextPoint.getY()) then begin
                if ((unitLayer_.getYP()) + (unitLayer_.getHalfHeight())) < (point.getY()) then begin
                    beyondMidPoint := False;
                end;
            end else begin
                if ((unitLayer_.getYP()) + (unitLayer_.getHalfHeight())) > (point.getY()) then begin
                    beyondMidPoint := False;
                end;
            end;
            if beyondMidPoint then begin
                Exit(Self.currentGeographicMapCellHistoryP.visit(geographicMapCellPosition_));
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTargetList;
var
  layerInterface: TAdvancedRTSGameLayer;
  index: Integer;
begin
        Self.targetWithoutCachedPathLayerInterface := TCollidableDestroyableDamageableLayer.getNullInstance();
        for index := (Self.getPossibleTargetList().size()) - (1) downto 0 do begin
            layerInterface := TAdvancedRTSGameLayer(TJava.ToObject(Self.getPossibleTargetList().get(index)));
            if layerInterface.isDestroyed() then begin
                Self.getPossibleTargetList().remove(layerInterface);
            end else begin
                Self.onEnemyMovement(layerInterface);
            end;
        end;
        if (Self.targetWithoutCachedPathLayerInterface) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.waitingOnTargetPath := True;
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.THINKING_ABOUT_TARGET, Self.basicColorFactory.GREEN);
            Self.runWaypointPathTask(TAdvancedRTSGameLayer(TJava.ToObject(Self.currentTargetLayerInterfaceP)));
        end;
        Self.getPossibleTargetList().clear();
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTargeting;
var
  dx: Integer;
  dy: Integer;
  point: TGPoint;
begin
        if ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and (((Self.isInSensorRange(Self.currentTargetLayerInterfaceP, Self.getCurrentTargetDistance())) or (Self.isTrackingWaypoint()))) then begin
            if Self.currentTargetLayerInterfaceP.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.targetDestroyed(Self.associatedAdvancedRTSGameLayer);
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.KILL, Self.basicColorFactory.ORANGE);
                Self.clearTarget();
                Exit;
            end;
            dx := 0;
            dy := 0;
            if Self.isTrackingWaypoint() then begin
                Self.updateCurrentPathGeographicMapCellPosition();
                point := Self.nextUnvisitedPathGeographicMapCellPosition.getMidPoint();
                dx := ((Self.associatedAdvancedRTSGameLayer.getXP()) + (Self.associatedAdvancedRTSGameLayer.getHalfWidth())) - (point.getX());
                dy := ((Self.associatedAdvancedRTSGameLayer.getYP()) + (Self.associatedAdvancedRTSGameLayer.getHalfHeight())) - (point.getY());
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargeting(Self.associatedAdvancedRTSGameLayer, dx, dy);
            end else begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargetingNonWayPoint(Self.associatedAdvancedRTSGameLayer, dx, dy);
                dx := (((Self.associatedAdvancedRTSGameLayer.getXP()) + (Self.associatedAdvancedRTSGameLayer.getHalfWidth()))) - (((Self.currentTargetLayerInterfaceP.getXP()) + (Self.currentTargetLayerInterfaceP.getHalfWidth())));
                dy := (((Self.associatedAdvancedRTSGameLayer.getYP()) + (Self.associatedAdvancedRTSGameLayer.getHalfHeight()))) - (((Self.currentTargetLayerInterfaceP.getYP()) + (Self.currentTargetLayerInterfaceP.getHalfHeight())));
            end;
            Self.associatedAdvancedRTSGameLayer.trackToDXY(dx, dy);
        end else begin
            if Self.associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed() then begin
                Self.wander();
            end else begin
                if Self.associatedAdvancedRTSGameLayer.showMoreCaptionStates then begin
                    Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.STOP, Self.basicColorFactory.YELLOW);
                end;
                Self.associatedAdvancedRTSGameLayer.allStop();
            end;
        end;
end;
    

procedure TUnitWaypointBehavior2.updateCurrentPathGeographicMapCellPosition;
begin
        Self.setLastPathGeographicMapCellPosition(Self.getCurrentPathGeographicMapCellPosition());
        Self.setCurrentPathGeographicMapCellPosition(Self.nextUnvisitedPathGeographicMapCellPosition);
        Self.nextUnvisitedPathGeographicMapCellPosition := Self.currentGeographicMapCellHistoryP.getFirstUnvisited();
        Self.afterNextUnvisitedPathGeographicMapCellPosition := Self.currentGeographicMapCellHistoryP.getAfterIfNotLast(Self.nextUnvisitedPathGeographicMapCellPosition);
        if (Self.getCurrentPathGeographicMapCellPosition()) <> (Self.nextUnvisitedPathGeographicMapCellPosition) then begin
            Self.progressTimeDelayHelper.setStartTimeTNT();
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setWaypointPath(waypointLayer: TAdvancedRTSGameLayer);
var
  MAX: Integer;
begin
        if (Self.waypointPathsListP.size()) <> (0) then begin
            Self.setCurrentTargetLayerInterface(waypointLayer);
            MAX := High(Integer);
            Self.setCurrentTargetDistance(MAX);
            Self.setRandomGeographicMapCellHistory(Self.waypointPathsListP);
        end else begin
            waypointLayer.getWaypointBehavior().getWaypoint().visit(Self.associatedAdvancedRTSGameLayer);
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.ALREADY_THERE_SHORT, Self.basicColorFactory.YELLOW);
            Self.removeWaypoint(waypointLayer, Self.unitWaypointStrings.ALREADY_THERE);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.runWaypointPathTask(waypointLayer: TAdvancedRTSGameLayer);
begin
        Self.setWaypointPathsList(TUnitWaypointBehavior2.runningWaypointPathList);
        if Self.waypointPathRunnable.isRunning() then begin
            raise SysUtils.Exception.Create('Should never be running here');
        end;
        Self.waypointPathRunnable.setRunning(True);
        Self.waypointPathRunnable.setUnitLayer(Self.associatedAdvancedRTSGameLayer);
        Self.waypointPathRunnable.setTargetLayer(waypointLayer);
        Self.pathFindingThreadPool.runTask(Self.waypointPathRunnable);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.removeWaypoint(waypointLayer: TRTSLayer; reason: string);
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypoint(Self.associatedAdvancedRTSGameLayer, Self, waypointLayer, reason);
        Self.targetList.remove(waypointLayer);
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointList(Self.associatedAdvancedRTSGameLayer, Self, Self.targetList);
        if (Self.currentTargetLayerInterfaceP) = (waypointLayer) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointClear(Self.associatedAdvancedRTSGameLayer);
            Self.clearTarget();
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.clearTarget;
var
  MAX: Integer;
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.clearTarget(Self.associatedAdvancedRTSGameLayer);
        Self.setCurrentTargetLayerInterface(TCollidableDestroyableDamageableLayer.getNullInstance());
        Self.setTrackingWaypoint(False);
        MAX := High(Integer);
        Self.setCurrentTargetDistance(MAX);
        TTrackingEventHandler.getInstance().fireEvent(Self.associatedAdvancedRTSGameLayer.getTrackingEvent());
end;
    

function TUnitWaypointBehavior2.isWaypointListEmptyOrOnlyTargets: Boolean;
var
  list: TBasicArrayList;
  layerInterface: TAdvancedRTSGameLayer;
  index: Integer;
begin
        list := Self.targetList;
        if (list.size()) = (0) then begin
            Exit(True);
        end;
        for index := (list.size()) - (1) downto 0 do begin
            layerInterface := TAdvancedRTSGameLayer(TJava.ToObject(list.get(index)));
            if layerInterface.isWaypointListEmptyOrOnlyTargets() then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TUnitWaypointBehavior2.isCloseRange(layerInterface: TAdvancedRTSGameLayer; targetDistance: Integer): Boolean;
begin
        Exit((targetDistance) < ((Self.closeRange) + (layerInterface.getHalfHeight())));
end;
    

function TUnitWaypointBehavior2.isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean;
begin
        Exit((targetDistance) < ((Self.sensorRange) + (layerInterface.getHalfHeight())));
end;
    

function TUnitWaypointBehavior2.getCurrentTargetingStateString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            stringBuffer.append(TUnitWaypointBehavior2.TARGET_LAYER);
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.append(Self.currentTargetLayerInterfaceP.getName());
            stringBuffer.append(' with ');
            stringBuffer.append(TUnitWaypointBehavior2.TARGET_DISTANCE);
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.appendint(Integer(Trunc(Self.getCurrentTargetDistance())));
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.addWaypointFromUser(advancedRTSGameLayer_: TAdvancedRTSGameLayer);
begin
        if advancedRTSGameLayer_.isDestroyed() then begin
            raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(advancedRTSGameLayer_));
        end;
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.addWaypointFromUser(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer_);
        Self.targetList.clear();
        Self.targetList.add(advancedRTSGameLayer_);
        Self.clearTarget();
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.addBuildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition);
begin
        if not (Self.buildingSteeringVisitor.getList().contains(TJava.Box(allbinaryLayer_))) then begin
            Self.buildingSteeringVisitor.getList().add(TJava.Box(allbinaryLayer_));
            Self.buildingSteeringVisitor.getPositionList().add(cellPosition);
        end;
        if not (Self.getSteeringVisitorList().contains(Self.buildingSteeringVisitor)) then begin
            Self.getSteeringVisitorList().add(Self.buildingSteeringVisitor);
        end;
end;
    

// throws Exception
function TUnitWaypointBehavior2.buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
begin
        Exit(Self.associatedAdvancedRTSGameLayer.buildingChase(allbinaryLayer_, cellPosition));
end;

initialization
  {AB:INITIALIZATION}
  TUnitWaypointBehavior2.runningWaypointPathList := TBasicArrayListD.Create();
  TUnitWaypointBehavior2.TARGET_DISTANCE := 'Target Distance';
  TUnitWaypointBehavior2.TARGET_LAYER := 'Target Layer';
  {AB:END}

end.

