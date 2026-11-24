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
unit RTSPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, RTSFormInput, RTSLayerInfoPaintable, RTSPlayerLayerInterface, BasicArrayList, AllBinaryGameCanvas, AllBinaryGameLayerManager, CollidableDestroyableDamageableLayer, DisplayChangeEvent, MotionGestureEvent, AllBinaryLayerManager, GeographicMapCellPosition, ScrollMapPlayerGameInput, SelectedRTSLayersPlayerGameInput, LayerPositionFinderInterface, SelectRTSLayerVisitorFactoryInterface, GameInputProcessor, PlayerGameInput;

type
  {AB:TYPES}
  TRTSPlayerGameInput = class(TPlayerGameInput)
  public
    inputProcessorArray: TArray<TGameInputProcessor>;
    removeInputProcessorArray: TArray<TGameInputProcessor>;
    inputList: TBasicArrayList;
    isSingleKeyProcessing: Boolean;
    gameCanvas: TAllBinaryGameCanvas;
    motionGestureInputList: TBasicArrayList;
    scrollPlayerGameInput: TScrollMapPlayerGameInput;
    selectedRTSLayerPlayerGameInput: TSelectedRTSLayersPlayerGameInput;
    towerInfoPaintable: TRTSLayerInfoPaintable;
    rtsPlayerLayerInterface: IRTSPlayerLayerInterface;
    layerPositionFinderInterface: ILayerPositionFinderInterface;
    selectedRtsFormInput: TRTSFormInput;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerPositionFinderInterface_: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure left; virtual;
        procedure right; virtual;
        procedure initInputProcessors; virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure processMotionInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure select(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure setSelectedRTSLayer(rtsLayer_: TCollidableDestroyableDamageableLayer; geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure updatePaintable; virtual;
        function getSelectedBuildingPlayerGameInput: TSelectedRTSLayersPlayerGameInput; virtual;
        function getSelectedRtsFormInput: TRTSFormInput; virtual;
        procedure setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput); virtual;
        function getRtsPlayerLayerInterface: IRTSPlayerLayerInterface; virtual;
        function getRTSLayerInfoPaintable: TRTSLayerInfoPaintable; virtual;
        function getMotionGestureInputList: TBasicArrayList; virtual;
        function getGameCanvas: TAllBinaryGameCanvas; virtual;
        function isIsSingleKeyProcessing: Boolean; virtual;
        function getScrollPlayerGameInput: TScrollMapPlayerGameInput; virtual;
  end;

implementation
uses
  InputFactory, RTSPlayerLeftGameInputProcessor, RTSPlayerRightGameInputProcessor, RTSPlayerFireGameInputProcessor, GameInputProcessorUtil, Canvas, RTSLayer, BasicArrayListD, Features, InputFeatureFactory, GameKeyEvent, NullRTSFormInputFactory, AllBinaryTiledLayer, NullRTSLayer, GPoint, BasicColorFactory, AllBinaryLayer, StringMaker, StringUtil, SecondaryPlayerQueueFactory, SelectSound, BasicGeographicMap, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, CommonLabels;


{AB:CODE}

procedure TRTSPlayerGameInput.InitFields;
begin
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  Self.removeInputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  
  Self.isSingleKeyProcessing := (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)) or (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_PRESS));
  
  Self.motionGestureInputList := TBasicArrayListD.Create();
  
  
  
  
  
  Self.selectedRtsFormInput := TNullRTSFormInputFactory.getInstance();
end;
    

constructor TRTSPlayerGameInput.Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerPositionFinderInterface_: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited Create(inputList, TBasicArrayListD.Create(), playerInputId);
        InitFields;
        Self.initInputProcessors();
        Self.gameCanvas := gameCanvas;
        Self.inputList := inputList;
        Self.towerInfoPaintable := towerInfoPaintable;
        Self.rtsPlayerLayerInterface := rtsPlayerLayerInterface_;
        Self.selectedRTSLayerPlayerGameInput := TSelectedRTSLayersPlayerGameInput.Create(Self.getRTSLayerInfoPaintable(), Self.getRtsPlayerLayerInterface(), Self.inputList, playerInputId, selectRTSLayerVisitorFactoryInterface_);
        if TJava.ToObject(Self.rtsPlayerLayerInterface) <> TJava.ToObject(TNullRTSLayer.NULL_RTS_LAYER) then begin
            Self.setSelectedRtsFormInput(Self.rtsPlayerLayerInterface.getRTSFormInput());
        end;
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.gameCanvas.getLayerManager()) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.scrollPlayerGameInput := TScrollMapPlayerGameInput.Create(geographicMapInterface, Self.inputList, playerInputId);
        Self.layerPositionFinderInterface := layerPositionFinderInterface_;
end;
    

// throws Exception
procedure TRTSPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        Self.selectedRTSLayerPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        if (Self.selectedRtsFormInput) <> (TNullRTSFormInputFactory.getInstance()) then begin
            Self.selectedRtsFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        end;
end;
    

procedure TRTSPlayerGameInput.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onDisplayChangeEvent');
            Self.getRTSLayerInfoPaintable().update();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onDisplayChangeEvent', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TRTSPlayerGameInput.left;
begin
        Self.rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(TCanvas.LEFT);
end;
    

// throws Exception
procedure TRTSPlayerGameInput.right;
begin
        Self.rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(TCanvas.RIGHT);
end;
    

procedure TRTSPlayerGameInput.initInputProcessors;
begin
        Self.inputProcessorArray[TCanvas.LEFT] := TRTSPlayerLeftGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM0] := Self.inputProcessorArray[TCanvas.LEFT];
        Self.inputProcessorArray[TCanvas.RIGHT] := TRTSPlayerRightGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_POUND] := Self.inputProcessorArray[TCanvas.RIGHT];
        Self.removeInputProcessorArray[TCanvas.KEY_NUM1] := TRTSPlayerFireGameInputProcessor.Create(Self);
        Self.removeInputProcessorArray[TCanvas.KEY_NUM3] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        Self.removeInputProcessorArray[TCanvas.KEY_NUM3] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        Self.removeInputProcessorArray[TCanvas.LEFT] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        Self.removeInputProcessorArray[TCanvas.RIGHT] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        Self.removeInputProcessorArray[TCanvas.KEY_NUM0] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        Self.removeInputProcessorArray[TCanvas.KEY_POUND] := Self.removeInputProcessorArray[TCanvas.KEY_NUM1];
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
        TGameInputProcessorUtil.init(Self.removeInputProcessorArray);
end;
    

// throws Exception
procedure TRTSPlayerGameInput.processInput(layerManager: TAllBinaryLayerManager);
var
  size: Integer;
  key: Integer;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        try
            Self.processMotionInput(layerManager);
            size := Self.inputList.size();
            key := 0;
            for index := 0 to size - 1 do begin
                gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(Self.inputList.get(index)));
                key := gameKeyEvent_.getKey();
                Self.getScrollPlayerGameInput().processInputKey(key);
                Self.getSelectedBuildingPlayerGameInput().processInputKey(key);
                Self.inputProcessorArray[key].processEvent(layerManager, gameKeyEvent_);
                Self.removeInputProcessorArray[key].processEvent(layerManager, gameKeyEvent_);
            end;
            if Self.isIsSingleKeyProcessing() then begin
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
    

// throws Exception
procedure TRTSPlayerGameInput.processMotionInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

// throws Exception
procedure TRTSPlayerGameInput.select(motionGestureEvent_: TMotionGestureEvent);
var
  point: TGPoint;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  x: Integer;
  y: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  commonLabels_: TCommonLabels;
  layer: TAllBinaryLayer;
  foundRTSLayer: TCollidableDestroyableDamageableLayer;
begin
        point := motionGestureEvent_.getCurrentPoint();
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.gameCanvas.getLayerManager()) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        x := (point.getX()) + (allBinaryTiledLayer_.getXP());
        y := (point.getY()) + (allBinaryTiledLayer_.getYP());
        geographicMapCellPosition_ := geographicMapInterface.getCellPositionAtXYNoThrow(x, y);
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            TSecondaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
            layer := Self.layerPositionFinderInterface.getLayerInterface(geographicMapCellPosition_);
            if (layer) = (TAllBinaryLayer.NULL_ALLBINARY_LAYER) then begin
                layer := TCollidableDestroyableDamageableLayer.getNullInstance();
            end else begin
                geographicMapCellPosition_ := geographicMapInterface.getCellPositionAtXY(layer.getXP(), layer.getYP());
            end;
            foundRTSLayer := TCollidableDestroyableDamageableLayer(TJava.ToObject(layer));
            Self.setSelectedRTSLayer(foundRTSLayer, geographicMapCellPosition_);
        end else begin
            commonLabels_ := TCommonLabels.getInstance();
            Self.logUtil.putF(TStringMaker.Create().append('Off Of Map -').append(commonLabels_.WIDTH_LABEL).appendint(Integer(Trunc(allBinaryTiledLayer_.getWidth()))).append(commonLabels_.HEIGHT_LABEL).appendint(Integer(Trunc(allBinaryTiledLayer_.getHeight()))).toString(), TJava.Box(Self), 'select');
        end;
end;
    

// throws Exception
procedure TRTSPlayerGameInput.setSelectedRTSLayer(rtsLayer_: TCollidableDestroyableDamageableLayer; geographicMapCellPosition_: TGeographicMapCellPosition);
begin
        Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtsLayer_);
end;
    

procedure TRTSPlayerGameInput.paint(graphics_: TGraphics);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  list: TBasicArrayList;
  width: Integer;
  height: Integer;
  point: TGPoint;
  rtsLayer_: TRTSLayer;
  index: Integer;
begin
        geographicMapCellPosition_ := Self.getSelectedRtsFormInput().getSelectedGeographicCellPosition();
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.gameCanvas.getLayerManager()) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        graphics_.setColor(TBasicColorFactory.getInstance().GREEN.intValue());
        list := Self.getSelectedBuildingPlayerGameInput().getPaintSelectedRTSLayersList();
        width := 0;
        height := 0;
        if (list.size()) > (0) then begin
            for index := (list.size()) - (1) downto 0 do begin
                rtsLayer_ := TRTSLayer(TJava.ToObject(list.get(index)));
                width := rtsLayer_.getWidth();
                height := rtsLayer_.getHeight();
                graphics_.drawRect((rtsLayer_.getXP()) - (allBinaryTiledLayer_.getXP()), (rtsLayer_.getYP()) - (allBinaryTiledLayer_.getYP()), width, height);
            end;
        end else if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            point := geographicMapCellPosition_.getPoint();
            width := allBinaryTiledLayer_.getCellWidth();
            height := allBinaryTiledLayer_.getCellHeight();
            graphics_.drawRect((point.getX()) - (allBinaryTiledLayer_.getXP()), (point.getY()) - (allBinaryTiledLayer_.getYP()), width, height);
        end;
end;
    

procedure TRTSPlayerGameInput.updatePaintable;
begin
end;
    

function TRTSPlayerGameInput.getSelectedBuildingPlayerGameInput: TSelectedRTSLayersPlayerGameInput;
begin
        Exit(Self.selectedRTSLayerPlayerGameInput);
end;
    

function TRTSPlayerGameInput.getSelectedRtsFormInput: TRTSFormInput;
begin
        Exit(Self.selectedRtsFormInput);
end;
    

procedure TRTSPlayerGameInput.setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput);
begin
        Self.logUtil.putF(TStringMaker.Create().append('RTSFormInput: ').append(TStringUtil.getInstance().toString(selectedRtsFormInput)).toString(), TJava.Box(Self), 'setSelectedRtsFormInput');
        Self.selectedRtsFormInput := selectedRtsFormInput;
end;
    

function TRTSPlayerGameInput.getRtsPlayerLayerInterface: IRTSPlayerLayerInterface;
begin
        Exit(Self.rtsPlayerLayerInterface);
end;
    

function TRTSPlayerGameInput.getRTSLayerInfoPaintable: TRTSLayerInfoPaintable;
begin
        Exit(Self.towerInfoPaintable);
end;
    

function TRTSPlayerGameInput.getMotionGestureInputList: TBasicArrayList;
begin
        Exit(Self.motionGestureInputList);
end;
    

function TRTSPlayerGameInput.getGameCanvas: TAllBinaryGameCanvas;
begin
        Exit(Self.gameCanvas);
end;
    

function TRTSPlayerGameInput.isIsSingleKeyProcessing: Boolean;
begin
        Exit(Self.isSingleKeyProcessing);
end;
    

function TRTSPlayerGameInput.getScrollPlayerGameInput: TScrollMapPlayerGameInput;
begin
        Exit(Self.scrollPlayerGameInput);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

