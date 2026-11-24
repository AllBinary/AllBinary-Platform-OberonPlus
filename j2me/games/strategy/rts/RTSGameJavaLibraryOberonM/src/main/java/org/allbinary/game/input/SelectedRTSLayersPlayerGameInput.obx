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
// package org.allbinary.game.input
unit SelectedRTSLayersPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSLayer, RTSLayerInfoPaintable, RTSPlayerLayerInterface, BasicArrayList, AllBinaryGameLayerManager, GameNotificationEvent, CollidableDestroyableDamageableLayer, AllBinaryLayerManager, Visitor, SelectRTSLayerVisitorFactoryInterface, GameInputProcessor, PlayerGameInput;

type
  {AB:TYPES}
  TSelectedRTSLayersPlayerGameInput = class(TPlayerGameInput)
  public
    inputProcessorArray: TArray<TGameInputProcessor>;
    list: TBasicArrayList;
    isSingleKeyProcessing: Boolean;
    selectedRTSLayersList: TBasicArrayList;
    preSelectedRTSLayersList: TBasicArrayList;
    paintSelectedRTSLayersList: TBasicArrayList;
    rtsPlayerLayerInterface: IRTSPlayerLayerInterface;
    selectRTSLayerVisitorInterface: TVisitor;
    upgradeGameNotificationEvent: TGameNotificationEvent;
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    downgradeGameNotificationEvent: TGameNotificationEvent;
    procedure InitFields;
        constructor Create(towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; list: TBasicArrayList; playerInputId: Integer; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        function isSelected(rtsLayer_: TRTSLayer): Boolean; virtual;
        procedure upgrade; virtual;
        procedure downgrade; virtual;
        procedure initInputProcessors; virtual;
        procedure processInputKey(key: Integer); virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        function getSelectedBasicArrayList: TBasicArrayList; virtual;
        procedure addSelectedRTSLayer(selectedLayer: TRTSLayer); virtual;
        procedure setSelectedRTSLayer(selectedLayer: TCollidableDestroyableDamageableLayer); virtual;
        function getLastSelectedRtsLayer: TCollidableDestroyableDamageableLayer; virtual;
        procedure selectAllPreselected; virtual;
        procedure deselectAllPreselected; virtual;
        procedure deselectAll; virtual;
        function isAnyRTSLayerSelected: Boolean; virtual;
        function getPaintSelectedRTSLayersList: TBasicArrayList; virtual;
        function getPreSelectedRTSLayersList: TBasicArrayList; virtual;
  end;

implementation
uses
  InputFactory, RTSPlayerGameInput, SelectedRTSLayersPlayerUpgradeGameInputProcessor, SelectedRTSLayersPlayerDowngradeGameInputProcessor, GameInputProcessorUtil, Canvas, RTSGameStrings, Capital, DowngradeSound, UpgradeSound, BasicArrayListD, BasicArrayListUtil, StringMaker, BooleanFactory, Features, InputFeatureFactory, GameKeyEvent, GameNotificationEventHandler, BasicColorFactory, SmallIntegerSingletonFactory, ErrorSound, BasicGeographicMap, GeographicMapCompositeInterface;


{AB:CODE}

procedure TSelectedRTSLayersPlayerGameInput.InitFields;
begin
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  
  Self.isSingleKeyProcessing := (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)) or (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_PRESS));
  Self.selectedRTSLayersList := TBasicArrayListD.Create();
  Self.preSelectedRTSLayersList := TBasicArrayListD.Create();
  Self.paintSelectedRTSLayersList := TBasicArrayListUtil.getInstance().getImmutableInstance();
  
  
  
  
  
end;
    

constructor TSelectedRTSLayersPlayerGameInput.Create(towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; list: TBasicArrayList; playerInputId: Integer; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface);
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(list, TBasicArrayListD.Create(), playerInputId);
        InitFields;
        Self.initInputProcessors();
        Self.rtsPlayerLayerInterface := rtsPlayerLayerInterface_;
        Self.list := list;
        Self.selectRTSLayerVisitorInterface := selectRTSLayerVisitorFactoryInterface_.create_(Self);
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.upgradeGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().UPGRADE, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.downgradeGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().DOWNGRADE, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.upgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.downgradeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

function TSelectedRTSLayersPlayerGameInput.isSelected(rtsLayer_: TRTSLayer): Boolean;
begin
        if Self.selectedRTSLayersList.contains(TJava.Box(rtsLayer_)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerGameInput.upgrade;
var
  anyChanged: Boolean;
  rtsLayer_: TRTSLayer;
  capital_: TCapital;
  upgradeCost: Integer;
  index: Integer;
  rtsPlayerGameInput_: TRTSPlayerGameInput;
begin
        anyChanged := False;
        for index := (Self.selectedRTSLayersList.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.selectedRTSLayersList.get(index)));
            if rtsLayer_.isUpgradeable() then begin
                capital_ := Self.rtsPlayerLayerInterface.getCapital();
                upgradeCost := rtsLayer_.getUpgradeCost();
                if (upgradeCost) <= (capital_.getTotalMoney()) then begin
                    anyChanged := True;
                    Self.rtsPlayerLayerInterface.add(TUpgradeSound.getInstance());
                    rtsLayer_.upgrade();
                    capital_.removeMoney(upgradeCost);
                    if not (Self.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                        TGameNotificationEventHandler.getInstance().fireEvent(Self.upgradeGameNotificationEvent);
                    end;
                end else begin
                    Self.rtsPlayerLayerInterface.add(TErrorSound.getInstance());
                    if not (Self.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                        TGameNotificationEventHandler.getInstance().fireEvent(Self.noMoneyGameNotificationEvent);
                    end;
                end;
            end;
        end;
        if anyChanged then begin
            rtsPlayerGameInput_ := (TRTSPlayerGameInput(TJava.ToObject(Self.rtsPlayerLayerInterface.getPlayerGameInput())));
            rtsPlayerGameInput_.updatePaintable();
        end;
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerGameInput.downgrade;
var
  anyChanged: Boolean;
  rtsLayer_: TRTSLayer;
  downgradeCost: Integer;
  capital_: TCapital;
  index: Integer;
  rtsPlayerGameInput_: TRTSPlayerGameInput;
begin
        anyChanged := False;
        index := Self.selectedRTSLayersList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.selectedRTSLayersList.get(index)));
            if rtsLayer_.isDowngradeable() then begin
                anyChanged := True;
                Self.rtsPlayerLayerInterface.add(TDowngradeSound.getInstance());
                downgradeCost := rtsLayer_.getDowngradeCost();
                rtsLayer_.downgrade();
                capital_ := Self.rtsPlayerLayerInterface.getCapital();
                capital_.addMoney(downgradeCost);
                if not (Self.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.downgradeGameNotificationEvent);
                end;
            end;
        end;
        if anyChanged then begin
            rtsPlayerGameInput_ := (TRTSPlayerGameInput(TJava.ToObject(Self.rtsPlayerLayerInterface.getPlayerGameInput())));
            rtsPlayerGameInput_.updatePaintable();
        end;
end;
    

procedure TSelectedRTSLayersPlayerGameInput.initInputProcessors;
begin
        Self.inputProcessorArray[TCanvas.KEY_NUM1] := TSelectedRTSLayersPlayerUpgradeGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM3] := TSelectedRTSLayersPlayerDowngradeGameInputProcessor.Create(Self);
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerGameInput.processInputKey(key: Integer);
begin
        if (Self.selectedRTSLayersList) <> (nil) then begin
            Self.inputProcessorArray[key].processEvent(TAllBinaryGameLayerManager.getNullInstance(), TGameKeyEvent.NONE);
        end;
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerGameInput.processInput(layerManager: TAllBinaryLayerManager);
var
  size: Integer;
  key: Integer;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        try
            size := Self.list.size();
            key := 0;
            for index := 0 to size - 1 do begin
                gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(Self.list.get(index)));
                key := gameKeyEvent_.getKey();
                Self.processInputKey(key);
            end;
            if Self.isSingleKeyProcessing then begin
                Self.clear();
            end else begin
                Self.update();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.PROCESS_INPUT, TJava.Box(e));
            end;
        end;
end;
    

function TSelectedRTSLayersPlayerGameInput.getSelectedBasicArrayList: TBasicArrayList;
begin
        Exit(Self.selectedRTSLayersList);
end;
    

procedure TSelectedRTSLayersPlayerGameInput.addSelectedRTSLayer(selectedLayer: TRTSLayer);
begin
        Self.paintSelectedRTSLayersList := TBasicArrayListUtil.getInstance().getImmutableInstance();
        if (selectedLayer) = (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.deselectAll();
            Self.selectedRTSLayersList.clear();
        end else begin
            if not (Self.selectedRTSLayersList.contains(TJava.Box(selectedLayer))) then begin
                Self.selectedRTSLayersList.add(TJava.Box(selectedLayer));
            end;
        end;
        Self.paintSelectedRTSLayersList := Self.selectedRTSLayersList;
end;
    

procedure TSelectedRTSLayersPlayerGameInput.setSelectedRTSLayer(selectedLayer: TCollidableDestroyableDamageableLayer);
var
  stringBuffer: TStringMaker;
  tempList: TBasicArrayList;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Selected Layer: ');
        if (selectedLayer) <> (nil) then begin
            stringBuffer.append(selectedLayer.getName());
        end;
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'setSelectedRTSLayer');
        Self.paintSelectedRTSLayersList := TBasicArrayListUtil.getInstance().getImmutableInstance();
        Self.selectRTSLayerVisitorInterface.visit(selectedLayer);
        Self.deselectAll();
        if (Self.selectedRTSLayersList.size()) > (0) then begin
            Self.getPreSelectedRTSLayersList().clear();
            tempList := Self.getPreSelectedRTSLayersList();
            Self.preSelectedRTSLayersList := Self.selectedRTSLayersList;
            Self.selectedRTSLayersList := tempList;
            Self.logUtil.putF(TStringMaker.Create().append('Preselected: ').append(Self.preSelectedRTSLayersList.toString()).toString(), TJava.Box(Self), 'setSelectedRTSLayer');
        end;
        if (selectedLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.selectedRTSLayersList.add(TJava.Box(selectedLayer));
        end;
        Self.paintSelectedRTSLayersList := Self.selectedRTSLayersList;
end;
    

function TSelectedRTSLayersPlayerGameInput.getLastSelectedRtsLayer: TCollidableDestroyableDamageableLayer;
begin
        if Self.isAnyRTSLayerSelected() then begin
            Exit(TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.selectedRTSLayersList.get((Self.selectedRTSLayersList.size()) - (1)))));
        end else begin
            Exit(TCollidableDestroyableDamageableLayer.getNullInstance());
        end;
end;
    

procedure TSelectedRTSLayersPlayerGameInput.selectAllPreselected;
var
  stringBuffer: TStringMaker;
  rtsLayer_: TRTSLayer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Select all Preselected: ');
        stringBuffer.append(Self.preSelectedRTSLayersList.toString());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selectAllPreselected');
        for index := (Self.preSelectedRTSLayersList.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.preSelectedRTSLayersList.get(index)));
            rtsLayer_.select();
        end;
end;
    

procedure TSelectedRTSLayersPlayerGameInput.deselectAllPreselected;
var
  stringBuffer: TStringMaker;
  rtsLayer_: TRTSLayer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Deselect all Preselected: ');
        stringBuffer.append(Self.preSelectedRTSLayersList.toString());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'deselectAllPreselected');
        for index := (Self.preSelectedRTSLayersList.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.preSelectedRTSLayersList.get(index)));
            rtsLayer_.deselect();
        end;
        Self.preSelectedRTSLayersList.clear();
end;
    

procedure TSelectedRTSLayersPlayerGameInput.deselectAll;
var
  rtsLayer_: TRTSLayer;
  index: Integer;
begin
        for index := (Self.selectedRTSLayersList.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.selectedRTSLayersList.get(index)));
            rtsLayer_.deselect();
        end;
end;
    

function TSelectedRTSLayersPlayerGameInput.isAnyRTSLayerSelected: Boolean;
begin
        if (Self.selectedRTSLayersList.size()) = (0) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TSelectedRTSLayersPlayerGameInput.getPaintSelectedRTSLayersList: TBasicArrayList;
begin
        Exit(Self.paintSelectedRTSLayersList);
end;
    

function TSelectedRTSLayersPlayerGameInput.getPreSelectedRTSLayersList: TBasicArrayList;
begin
        Exit(Self.preSelectedRTSLayersList);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

