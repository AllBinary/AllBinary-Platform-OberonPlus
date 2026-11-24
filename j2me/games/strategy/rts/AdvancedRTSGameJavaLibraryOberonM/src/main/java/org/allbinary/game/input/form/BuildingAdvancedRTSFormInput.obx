{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.form
unit BuildingAdvancedRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSLayer, RTSLayerEvent, RTSPlayerLayerInterface, Group, AllBinaryGameLayerManager, GameNotificationEvent, AllBinaryLayerManager, BuildingRTSFormInput;

type
  {AB:TYPES}
  TBuildingAdvancedRTSFormInput = class(TBuildingRTSFormInput)
  public
    atLeastOneHouseGameNotificationEvent: TGameNotificationEvent;
    BUILD_BUILDING_RTS_LAYER_EVENT: TRTSLayerEvent;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        function isPositionBlocked: Boolean; override;
        function isBuildAttemptValid(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean; override;
        procedure add(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer); override;
  end;

implementation
uses
  AdvancedPlayerOwnedRTSLayers, AdvancedRTSPlayerLayerInterface, BuildingEventHandler, LocalPlayerBuildingEventHandler, WaypointCellPositionHistory, BooleanFactory, NullPathFindingLayer, GameNotificationEventHandler, BasicColorFactory, SmallIntegerSingletonFactory, ErrorSound, BasicGeographicMap, GeographicMapCompositeInterface, DropCellPositionHistory;


{AB:CODE}

procedure TBuildingAdvancedRTSFormInput.InitFields;
begin
  
  Self.BUILD_BUILDING_RTS_LAYER_EVENT := TRTSLayerEvent.Create(TNullPathFindingLayer.NULL_PATH_FINDING_LAYER);
end;
    

constructor TBuildingAdvancedRTSFormInput.Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
var
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(groupInterface, isUnitProducer);
        InitFields;
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.atLeastOneHouseGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), 'Build At Least One House First', TSmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TBuildingAdvancedRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.atLeastOneHouseGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

function TBuildingAdvancedRTSFormInput.isPositionBlocked: Boolean;
begin
        if (TDropCellPositionHistory.getInstance().isCellPositionWithDrop(Self.getSelectedGeographicCellPosition())) or (TWaypointCellPositionHistory.getInstance().isCellPositionWithDrop(Self.getSelectedGeographicCellPosition())) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TBuildingAdvancedRTSFormInput.isBuildAttemptValid(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean;
var
  advancedRTSPlayerLayerInterface_: IAdvancedRTSPlayerLayerInterface;
  advancedPlayerOwnedRTSLayers_: TAdvancedPlayerOwnedRTSLayers;
  totalHouses: Integer;
begin
        advancedRTSPlayerLayerInterface_ := (TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface);
        advancedPlayerOwnedRTSLayers_ := advancedRTSPlayerLayerInterface_.getAdvancedPlayerOwnedRTSLayers();
        totalHouses := advancedPlayerOwnedRTSLayers_.getHouseList().size();
        if ((totalHouses) < (1)) and ((layerInterface.getName().indexOf(' House')) < (0)) then begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.atLeastOneHouseGameNotificationEvent);
            end;
            Exit(False);
        end;
        Exit(inherited isBuildAttemptValid(rtsPlayerLayerInterface_, layerInterface));
end;
    

// throws Exception
procedure TBuildingAdvancedRTSFormInput.add(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer);
begin
        Self.BUILD_BUILDING_RTS_LAYER_EVENT.setRtsLayer(layerInterface);
        TBuildingEventHandler.getInstance().fireEvent(Self.BUILD_BUILDING_RTS_LAYER_EVENT);
        if ((TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface)).isLocalPlayer() then begin
            TLocalPlayerBuildingEventHandler.getInstance().fireEvent(Self.BUILD_BUILDING_RTS_LAYER_EVENT);
        end;
        inherited add(TJava.ToObject(rtsPlayerLayerInterface_), layerManager, layerInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

