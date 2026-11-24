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
// package org.allbinary.game.input.form
unit WaypointRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSLayer, RTSLayerEvent, RTSPlayerLayerInterface, WaypointLayer, ABCustomItem, Group, AllBinaryGameLayerManager, PathFindingLayerInterface, GameNotificationEvent, CollidableDestroyableDamageableLayer, GPoint, AllBinaryLayerManager, GeographicMapCellPosition, RTSFormInput;

type
  {AB:TYPES}
  TWaypointRTSFormInput = class(TRTSFormInput)
  public
    WAYPOINT_EVENT: TRTSLayerEvent;
    dragToSpotGameNotificationEvent: TGameNotificationEvent;
    spotTakenGameNotificationEvent: TGameNotificationEvent;
    buildingCollisionGameNotificationEvent: TGameNotificationEvent;
    roadCollisionGameNotificationEvent: TGameNotificationEvent;
    newWaypointGameNotificationEvent: TGameNotificationEvent;
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    isPrimaryWaypointCreator: Boolean;
    stickyAssociatedRtsLayer: IPathFindingLayerInterface;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>; isPrimaryWaypointCreator: Boolean);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        procedure processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint); override;
        procedure processCellPosition(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; geographicMapCellPosition_: TGeographicMapCellPosition);
        procedure processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer); override;
        function attemptBuild(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean; virtual;
        procedure addWayPoint(layerInterface: TWaypointLayer);
  end;

implementation
uses
  PrimaryWaypointHelper, StringMaker, RTSPlayerGameInput, AdvancedRTSGameLayer, AdvancedRTSPlayerLayerInterface, RTSGameStrings, RTSLayerUtil, Capital, WaypointCellPositionHistory, WaypointEventHandlerFactory, BasicArrayList, BooleanFactory, AllBinaryTiledLayer, GeographicMapCellPositionAreaBase, NullPathFindingLayer, NullRTSLayer, GameNotificationEventHandler, BasicColorFactory, ABLayer, SmallIntegerSingletonFactory, ErrorSound, BasicGeographicMap, GeographicMapCellType, GeographicMapCompositeInterface, DropCellPositionHistory, RaceTrackGeographicMapCellTypeFactory;


{AB:CODE}

procedure TWaypointRTSFormInput.InitFields;
begin
  Self.WAYPOINT_EVENT := TRTSLayerEvent.Create(TNullRTSLayer.NULL_RTS_LAYER);
  
  
  
  
  
  
  
  Self.stickyAssociatedRtsLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
end;
    

constructor TWaypointRTSFormInput.Create(groupInterface: TArray<TGroup>; isPrimaryWaypointCreator: Boolean);
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(groupInterface);
        InitFields;
        Self.isPrimaryWaypointCreator := isPrimaryWaypointCreator;
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.dragToSpotGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().DRAG_TO_SPOT, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.spotTakenGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.buildingCollisionGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.roadCollisionGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.newWaypointGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NEW_WAYPOINT, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TWaypointRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.dragToSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.newWaypointGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
procedure TWaypointRTSFormInput.processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  x: Integer;
  y: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
begin
        inherited process(layerManager);
        if (Self.isStickyItemSelected()) or ((associatedRtsLayer) = (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
            if (Self.isStickyItemSelected()) and ((associatedRtsLayer) = (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
                geographicMapCompositeInterface_ := (TJava.ToObject(layerManager) as IGeographicMapCompositeInterface);
                geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
                allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
                x := (point.getX()) + (allBinaryTiledLayer_.getXP());
                y := (point.getY()) + (allBinaryTiledLayer_.getYP());
                geographicMapCellPosition_ := geographicMapInterface.getCellPositionAtXY(x, y);
                Self.processCellPosition(rtsPlayerLayerInterface_, layerManager, geographicMapCellPosition_);
            end else begin
                if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.dragToSpotGameNotificationEvent);
                end;
            end;
        end else begin
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.spotTakenGameNotificationEvent);
            end;
        end;
end;
    

// throws Exception
procedure TWaypointRTSFormInput.processCellPosition(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; geographicMapCellPosition_: TGeographicMapCellPosition);
var
  itemIndex: Integer;
  cellPoint: TGPoint;
  rtsLayer_: TRTSLayer;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        itemIndex := Self.getSelectedStickyItemIndex();
        if (Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]) = (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := Self.getInstance(layerManager, Self.getSelectedStickyItem(), geographicMapCellPosition_);
        end else begin
            cellPoint := geographicMapCellPosition_.getPoint();
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]));
            rtsLayer_.setPosition(cellPoint.getX(), cellPoint.getY(), rtsLayer_.getZP());
            geographicMapCompositeInterface_ := (TJava.ToObject(rtsLayer_.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            rtsLayer_.geographicMapCellPositionAreaBase.update(geographicMapInterface);
        end;
        Self.attemptBuild(rtsPlayerLayerInterface_, layerManager, TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex])), itemIndex);
end;
    

// throws Exception
procedure TWaypointRTSFormInput.processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer);
begin
        Self.logUtil.putF('Set Sticking Item: ' + TJava.ToString(item), TJava.Box(Self), 'processSticky');
        Self.setSelectedStickyItem(item);
        Self.setSelectedStickyItemIndex(index);
        Self.setStickyItemSelected(True);
        Self.stickyAssociatedRtsLayer := TRTSLayer(TJava.ToObject(associatedRtsLayer));
        Self.getHashtable().put(TJava.Box(TABLayer.ID), TJava.Box(associatedRtsLayer));
end;
    

// throws Exception
function TWaypointRTSFormInput.attemptBuild(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  list: TBasicArrayList;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  raceTrackGeographicMapCellTypeFactory_: TRaceTrackGeographicMapCellTypeFactory;
  geographicMapCellType_: TGeographicMapCellType;
  index: Integer;
  cost: Integer;
  capital_: TCapital;
  stringBuffer: TStringMaker;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  waypointLayer_: TWaypointLayer;
  rtsPlayerGameInput_: TRTSPlayerGameInput;
  advancedRTSPlayerLayerInterface_: IAdvancedRTSPlayerLayerInterface;
  waypointAvancedRTSGameLayer: TAdvancedRTSGameLayer;
begin
        Self.logUtil.putF('Layer: ' + TJava.ToString(layerInterface), TJava.Box(Self), 'attemptBuild');
        if (layerInterface) = (nil) then begin
            Self.logUtil.put('Layer was null', TJava.Box(Self), 'attemptBuild', TJava.Box(SysUtils.Exception.Create('')));
            Exit(False);
        end;
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        list := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        if (TDropCellPositionHistory.getInstance().anyCellPositionWithDrop(list)) or (TWaypointCellPositionHistory.getInstance().anyCellPositionWithDrop(list)) then begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.buildingCollisionGameNotificationEvent);
            end;
            Exit(False);
        end;
        geographicMapCompositeInterface_ := (TJava.ToObject(layerManager) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        raceTrackGeographicMapCellTypeFactory_ := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(geographicMapInterface.getGeographicMapCellTypeFactory()));
        
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            geographicMapCellType_ := geographicMapInterface.getCellTypeAt(TGeographicMapCellPosition(TJava.ToObject(list.get(index))));
            if raceTrackGeographicMapCellTypeFactory_.isPath(geographicMapCellType_) then begin
                rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.roadCollisionGameNotificationEvent);
                end;
                Exit(False);
            end;
        end;
        cost := layerInterface.getCost();
        capital_ := rtsPlayerLayerInterface_.getCapital();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Trying to Build: ');
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' for: $');
        stringBuffer.appendint(cost);
        stringBuffer.append(' with ');
        stringBuffer.appendint(Integer(Trunc(capital_.getTotalMoney())));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'attemptBuild');
        if (cost) <= (capital_.getTotalMoney()) then begin
            layerInterface.construct(rtsPlayerLayerInterface_);
            Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := TCollidableDestroyableDamageableLayer.getNullInstance();
            capital_.removeMoney(cost);
            TWaypointCellPositionHistory.getInstance().addList(list, layerInterface);
            geographicMapCellPosition_ := geographicMapInterface.getCellPositionAtXY(layerInterface.getXP(), layerInterface.getYP());
            waypointLayer_ := TWaypointLayer(TJava.ToObject(layerInterface));
            Self.addWayPoint(waypointLayer_);
            rtsPlayerGameInput_ := TRTSPlayerGameInput(TJava.ToObject(rtsPlayerLayerInterface_.getPlayerGameInput()));
            rtsPlayerGameInput_.setSelectedRTSLayer(layerInterface, geographicMapCellPosition_);
            advancedRTSPlayerLayerInterface_ := (TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface);
            advancedRTSPlayerLayerInterface_.getAdvancedPlayerOwnedRTSLayers().addWaypoint(layerInterface);
            layerManager.append(layerInterface);
            waypointAvancedRTSGameLayer := TAdvancedRTSGameLayer(TJava.ToObject(waypointLayer_));
            rtsPlayerLayerInterface_.add(waypointAvancedRTSGameLayer.getWaypointBehavior().getWaypoint().getSound());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.newWaypointGameNotificationEvent);
            end;
            Exit(True);
        end else begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.noMoneyGameNotificationEvent);
            end;
            Exit(False);
        end;
end;
    

// throws Exception
procedure TWaypointRTSFormInput.addWayPoint(layerInterface: TWaypointLayer);
var
  stickyAssociatedAdvandedRtsLayer: TAdvancedRTSGameLayer;
  list: TBasicArrayList;
begin
        stickyAssociatedAdvandedRtsLayer := TAdvancedRTSGameLayer(TJava.ToObject(Self.stickyAssociatedRtsLayer));
        list := stickyAssociatedAdvandedRtsLayer.getWaypointBehavior().getOwnedWaypointList();
        TRTSLayerUtil.getInstance().destroyAndClear(list);
        list.add(TJava.Box(layerInterface));
        if Self.isPrimaryWaypointCreator then begin
            TPrimaryWaypointHelper.getInstance().setWaypointLayer(layerInterface);
        end;
        Self.WAYPOINT_EVENT.setRtsLayer(layerInterface);
        TWaypointEventHandlerFactory.getInstance(layerInterface.getGroupInterface()[0]).fireEvent(Self.WAYPOINT_EVENT);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

