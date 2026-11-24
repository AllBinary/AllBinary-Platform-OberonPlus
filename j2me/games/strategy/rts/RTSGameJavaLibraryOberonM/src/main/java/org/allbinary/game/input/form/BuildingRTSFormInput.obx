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
// package org.allbinary.game.input.form
unit BuildingRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSLayer, RTSPlayerLayerInterface, ABCustomItem, Group, AllBinaryGameLayerManager, GameNotificationEvent, CollidableDestroyableDamageableLayer, AllBinaryLayerManager, DropCellPositionHistory, RTSFormInput;

type
  {AB:TYPES}
  TBuildingRTSFormInput = class(TRTSFormInput)
  public
    isUnitProducer: Boolean;
    buildOnPathGameNotificationEvent: TGameNotificationEvent;
    spotTakenGameNotificationEvent: TGameNotificationEvent;
    selectBuildSpotGameNotificationEvent: TGameNotificationEvent;
    roadCollisionGameNotificationEvent: TGameNotificationEvent;
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    buildingCollisionGameNotificationEvent: TGameNotificationEvent;
    structureToCloseCollisionGameNotificationEvent: TGameNotificationEvent;
    buildingGameNotificationEvent: TGameNotificationEvent;
    mapEdgeGameNotificationEvent: TGameNotificationEvent;
    dropCellPositionHistory: TDropCellPositionHistory;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); override;
        function isPositionBlocked: Boolean; virtual;
        function isDemoLocked(item: TABCustomItem): Boolean;
        procedure buildFromMotionInput(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); virtual;
        function attemptBuild(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean; virtual;
        function isBuildAttemptValid(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean; virtual;
        procedure add(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer); virtual;
        function isSurroundingCellsOffMap(layerInterface: TRTSLayer): Boolean;
  end;

implementation
uses
  RTSPlayerGameInput, DemoLockedWithCostLayerInterfaceFactoryInterface, GeographicMapCellPositionAreaBase, RTSGameStrings, Capital, LayerInterfaceFactoryImageItem, BuildingSound, BasicArrayList, CommonStrings, StringMaker, BooleanFactory, LockedFeatureNotificationUtil, LockedUtil, GameNotificationEventHandler, GPoint, BasicColorFactory, SmallIntegerSingletonFactory, StringUtil, ErrorSound, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, RaceTrackGeographicMapCellTypeFactory;


{AB:CODE}

procedure TBuildingRTSFormInput.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  Self.dropCellPositionHistory := TDropCellPositionHistory.getInstance();
end;
    

constructor TBuildingRTSFormInput.Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(groupInterface);
        InitFields;
        Self.isUnitProducer := isUnitProducer;
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.buildOnPathGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().BUILD_ON_PATH, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.spotTakenGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.selectBuildSpotGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().SELECT_BUILD_SPOT, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.roadCollisionGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.buildingCollisionGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.structureToCloseCollisionGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().STRUCTURE_TO_CLOSE, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.buildingGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().BUILDING, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.mapEdgeGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().MAP_EDGE, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TBuildingRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.buildOnPathGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.selectBuildSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.structureToCloseCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.buildingGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.mapEdgeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
procedure TBuildingRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
begin
        inherited process(layerManager);
        Self.buildFromMotionInput(rtsPlayerLayerInterface_, layerManager, item, itemIndex);
end;
    

function TBuildingRTSFormInput.isPositionBlocked: Boolean;
begin
        Exit(Self.dropCellPositionHistory.isCellPositionWithDrop(Self.getSelectedGeographicCellPosition()));
end;
    

function TBuildingRTSFormInput.isDemoLocked(item: TABCustomItem): Boolean;
var
  factoryItem: TLayerInterfaceFactoryImageItem;
  layerInterfaceFactoryInterface: IDemoLockedWithCostLayerInterfaceFactoryInterface;
begin
        factoryItem := TLayerInterfaceFactoryImageItem(TJava.ToObject(item));
        layerInterfaceFactoryInterface := (TJava.ToObject(factoryItem.getLayerInterfaceFactoryInterface()) as IDemoLockedWithCostLayerInterfaceFactoryInterface);
        if (TLockedUtil.getInstance().isLocked()) and (layerInterfaceFactoryInterface.isDemoLocked()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TBuildingRTSFormInput.buildFromMotionInput(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
var
  commonStrings_: TCommonStrings;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  geographicMapCellType_: TGeographicMapCellType;
  raceTrackGeographicMapCellTypeFactory_: TRaceTrackGeographicMapCellTypeFactory;
  rtsLayer_: TRTSLayer;
  cellPoint: TGPoint;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), 'buildFromMotionInput');
        if (layerManager) = (nil) then begin
            raise SysUtils.Exception.Create('');
        end;
        geographicMapCompositeInterface_ := (TJava.ToObject(layerManager) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        if Self.isDemoLocked(item) then begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            TLockedFeatureNotificationUtil.getInstance().fireWithColor(geographicMapInterface.getForegroundBasicColor());
            Exit;
        end;
        geographicMapCellPosition_ := Self.getSelectedGeographicCellPosition();
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            if not (Self.isPositionBlocked()) then begin
                geographicMapCellType_ := geographicMapInterface.getCellTypeAt(geographicMapCellPosition_);
                raceTrackGeographicMapCellTypeFactory_ := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(geographicMapInterface.getGeographicMapCellTypeFactory()));
                if not (raceTrackGeographicMapCellTypeFactory_.isPath(geographicMapCellType_)) then begin
                    if (Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]) = (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
                        Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := Self.getInstance(layerManager, item, geographicMapCellPosition_);
                    end else begin
                        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]));
                        cellPoint := geographicMapCellPosition_.getPoint();
                        rtsLayer_.setPosition(cellPoint.getX(), cellPoint.getY(), cellPoint.getZ());
                        rtsLayer_.geographicMapCellPositionAreaBase.update(geographicMapInterface);
                    end;
                    rtsLayer_ := TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]));
                    Self.attemptBuild(rtsPlayerLayerInterface_, layerManager, rtsLayer_, itemIndex);
                end else begin
                    rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
                    if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                        TGameNotificationEventHandler.getInstance().fireEvent(Self.buildOnPathGameNotificationEvent);
                    end;
                end;
            end else begin
                rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.spotTakenGameNotificationEvent);
                end;
            end;
        end else begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.selectBuildSpotGameNotificationEvent);
            end;
        end;
end;
    

// throws Exception
function TBuildingRTSFormInput.attemptBuild(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  geographicMapCellType_: TGeographicMapCellType;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  raceTrackGeographicMapCellTypeFactory_: TRaceTrackGeographicMapCellTypeFactory;
  index: Integer;
  cost: Integer;
  capital_: TCapital;
  stringBuffer: TStringMaker;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Layer: ').append(TStringUtil.getInstance().toString(layerInterface)).toString(), TJava.Box(Self), 'attemptBuild');
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        if not (Self.isBuildAttemptValid(rtsPlayerLayerInterface_, layerInterface)) then begin
            Exit(False);
        end;
        
        for index := (occupyList.size()) - (1) downto 0 do begin
            geographicMapCompositeInterface_ := (TJava.ToObject(layerManager) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            geographicMapCellType_ := geographicMapInterface.getCellTypeAt(TGeographicMapCellPosition(TJava.ToObject(occupyList.get(index))));
            raceTrackGeographicMapCellTypeFactory_ := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(geographicMapInterface.getGeographicMapCellTypeFactory()));
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
            Self.add(rtsPlayerLayerInterface_, layerManager, layerInterface);
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
function TBuildingRTSFormInput.isBuildAttemptValid(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        if Self.dropCellPositionHistory.anyCellPositionWithDrop(occupyList) then begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.buildingCollisionGameNotificationEvent);
            end;
            Exit(False);
        end;
        if (Self.isUnitProducer) and (Self.dropCellPositionHistory.anyCellPositionWithDrop(geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList())) then begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.structureToCloseCollisionGameNotificationEvent);
            end;
            Exit(False);
        end else begin
            if Self.isSurroundingCellsOffMap(layerInterface) then begin
                rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.mapEdgeGameNotificationEvent);
                end;
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

// throws Exception
procedure TBuildingRTSFormInput.add(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer);
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  rtsPlayerGameInput_: TRTSPlayerGameInput;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        Self.dropCellPositionHistory.addAll(occupyList, layerInterface);
        rtsPlayerGameInput_ := TRTSPlayerGameInput(TJava.ToObject(rtsPlayerLayerInterface_.getPlayerGameInput()));
        rtsPlayerGameInput_.setSelectedRTSLayer(layerInterface, Self.getSelectedGeographicCellPosition());
        layerManager.append(layerInterface);
        rtsPlayerLayerInterface_.add(TBuildingSound.getInstance());
        if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
            TGameNotificationEventHandler.getInstance().fireEvent(Self.buildingGameNotificationEvent);
        end;
end;
    

function TBuildingRTSFormInput.isSurroundingCellsOffMap(layerInterface: TRTSLayer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
  occupySize: Integer;
  surroundSize: Integer;
  stringBuffer: TStringMaker;
  isSurroundOffMap: Boolean;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList();
        occupySize := occupyList.size();
        surroundSize := surroundList.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('occupySize: ');
        stringBuffer.appendint(occupySize);
        stringBuffer.append(' surroundSize: ');
        stringBuffer.appendint(surroundSize);
        stringBuffer.append(' surroundList: ');
        stringBuffer.append(TStringUtil.getInstance().toString(surroundList));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isSurroundingCellsOffMap');
        isSurroundOffMap := False;
        if ((occupySize) = (1)) and ((surroundSize) <> (8)) then begin
            isSurroundOffMap := True;
        end else if ((occupySize) = (4)) and ((surroundSize) <> (12)) then begin
            isSurroundOffMap := True;
        end;
        if ((occupySize) = (0)) or (isSurroundOffMap) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

