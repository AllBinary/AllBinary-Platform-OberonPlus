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
unit HumanRTSPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, RTSFormInput, MultiSelectPaintable, RTSLayer, RTSLayerInfoPaintable, RTSPlayerLayerInterface, GameStateFactory, BasicArrayList, AllBinaryGameCanvas, AllBinaryGameLayerManager, GameNotificationEvent, CollidableDestroyableDamageableLayer, GPoint, ScrollSelectionForm, TouchButtonsBuilderFactory, MotionGestureInput, TouchMotionGestureFactory, BaseMotionGestureEventListener, MotionGestureEvent, AllBinaryLayerManager, RectangleCollisionUtil, GeographicMapCellPosition, LayerPositionFinderInterface, SelectRTSLayerVisitorFactoryInterface, RTSPlayerGameInput, EventListenerInterface;

type
  {AB:TYPES}
  THumanRTSPlayerGameInput = class(TRTSPlayerGameInput, IBaseMotionGestureEventListener, IEventListenerInterface)
  public
    isDragging: Boolean;
    gameStateFactory: TGameStateFactory;
    rectangleCollisionUtil: TRectangleCollisionUtil;
    touchMotionGestureFactory: TTouchMotionGestureFactory;
    PRESSED: TMotionGestureInput;
    RELEASED: TMotionGestureInput;
    touchButtonsBuilderFactory: TTouchButtonsBuilderFactory;
    notYoursGameNotificationEvent: TGameNotificationEvent;
    selectedRtsLayer: TCollidableDestroyableDamageableLayer;
    startPoint: TGPoint;
    endPoint: TGPoint;
    POSSIBLE: string;
    AT: string;
    METHOD: string;
    ADDING: string;
    SPACE: string;
    multiSelectPaintable: TMultiSelectPaintable;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerPositionFinderInterface_: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface; touchButtonsBuilderFactory_: TTouchButtonsBuilderFactory);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        function processDraggingMotionInput(layerManager: TAllBinaryLayerManager): Boolean;
        procedure makeSelection;
        procedure processSelectionBoxMotionInput(layerManager: TAllBinaryLayerManager);
        procedure processMotionInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput); virtual;
        procedure updateFormForLayer(rtsLayer_: TRTSLayer);
        procedure updateForm(scrollSelectionForm_: TScrollSelectionForm; rtfFormInput: TRTSFormInput);
        procedure setSelectedRTSLayer(rtSLayer_: TCollidableDestroyableDamageableLayer; geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        procedure updatePaintable; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        function getSelectedRtsLayer: TCollidableDestroyableDamageableLayer;
        procedure setSelectedRtsLayer(selectedRtsLayer: TCollidableDestroyableDamageableLayer);
  end;

implementation
uses
  RTSGameStrings, EndLevelNoBuildingSelectedTouchButtonsBuilder, EndLevelTouchButtonsBuilder, NoBuildingSelectedTouchButtonsBuilder, RTSTouchButtonsBuilder, SelectBuildingSound, CommonSeps, StringMaker, LogUtil, BooleanFactory, GameNotificationEventHandler, PointFactory, BasicColorFactory, ABCustomItem, NullInitUpdatePaintable, BasicMotionGesturesHandler, SmallIntegerSingletonFactory, CommonLabels, StringUtil, ErrorSound, BasicGeographicMap, GeographicMapCompositeInterface, ViewPositionBase;


{AB:CODE}

procedure THumanRTSPlayerGameInput.InitFields;
begin
  Self.isDragging := False;
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  Self.touchMotionGestureFactory := TTouchMotionGestureFactory.getInstance();
  Self.PRESSED := Self.touchMotionGestureFactory.PRESSED;
  Self.RELEASED := Self.touchMotionGestureFactory.RELEASED;
  
  
  Self.selectedRtsLayer := TCollidableDestroyableDamageableLayer.getNullInstance();
  Self.startPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.endPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.POSSIBLE := 'Possible: ';
  Self.AT := 'At: ';
  Self.METHOD := 'makeSelection';
  Self.ADDING := 'Adding: ';
  Self.SPACE := TCommonSeps.getInstance().SPACE;
  Self.multiSelectPaintable := TMultiSelectPaintable.Create();
end;

function THumanRTSPlayerGameInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THumanRTSPlayerGameInput.Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerPositionFinderInterface_: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface_: ISelectRTSLayerVisitorFactoryInterface; touchButtonsBuilderFactory_: TTouchButtonsBuilderFactory);
var
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface_, layerPositionFinderInterface_, selectRTSLayerVisitorFactoryInterface_);
        InitFields;
        Self.touchButtonsBuilderFactory := touchButtonsBuilderFactory_;
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.notYoursGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NOT_YOURS, TSmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory_.PINK, TBooleanFactory.getInstance().FALSE_);
        TBasicMotionGesturesHandler.getInstance().addListenerInterface(Self);
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.notYoursGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
function THumanRTSPlayerGameInput.processDraggingMotionInput(layerManager: TAllBinaryLayerManager): Boolean;
var
  motionGestureEvent_: TMotionGestureEvent;
  motionGestureInput_: TMotionGestureInput;
  rtsFormInput_: TRTSFormInput;
  point: TGPoint;
  previousRtsFormInput: TRTSFormInput;
begin
        motionGestureEvent_ := TMotionGestureEvent(TJava.ToObject(Self.getMotionGestureInputList().get((Self.getMotionGestureInputList().size()) - (1))));
        motionGestureInput_ := motionGestureEvent_.getMotionGesture();
        rtsFormInput_ := Self.getSelectedRtsFormInput();
        if (motionGestureInput_) = (Self.PRESSED) then begin
            point := motionGestureEvent_.getCurrentPoint();
            if Self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point) then begin
                Self.isDragging := rtsFormInput_.processSticky(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
            end;
        end else if (motionGestureInput_) = (Self.RELEASED) then begin
            point := motionGestureEvent_.getCurrentPoint();
            if Self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point) then begin
                rtsFormInput_.processAtPoint(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
            end else if rtsFormInput_.isStickyItemSelected() then begin
                previousRtsFormInput := rtsFormInput_;
                Self.select(motionGestureEvent_);
                Self.getSelectedBuildingPlayerGameInput().selectAllPreselected();
                previousRtsFormInput.processAtPoint(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
                Self.getSelectedBuildingPlayerGameInput().deselectAllPreselected();
            end else begin
                Self.select(motionGestureEvent_);
            end;
            rtsFormInput_.setStickyItemSelected(False);
            rtsFormInput_.setSelectedStickyItem(TABCustomItem.getNullInstance());
            rtsFormInput_.setSelectedStickyItemIndex(-1);
            Exit(True);
        end;
        Exit(False);
end;
    

procedure THumanRTSPlayerGameInput.makeSelection;
var
  rtsLayerList: TBasicArrayList;
  rectX1: Integer;
  rectY1: Integer;
  rectX2: Integer;
  rectY2: Integer;
  stringBuffer: TStringMaker;
  rtsLayer_: TRTSLayer;
  viewPosition: TViewPositionBase;
  index: Integer;
  gameLayer: TCollidableDestroyableDamageableLayer;
  lastRTSLayer: TRTSLayer;
begin
        rtsLayerList := Self.getRtsPlayerLayerInterface().getPlayerOwnedRTSLayers().rtsLayerList;
        rectX1 := Self.startPoint.getX();
        rectY1 := Self.startPoint.getY();
        rectX2 := Self.endPoint.getX();
        rectY2 := Self.endPoint.getY();
        if (rectX1) > (rectX2) then begin
            rectX2 := rectX1;
            rectX1 := Self.endPoint.getX();
        end;
        if (rectY1) > (rectY2) then begin
            rectY2 := rectY1;
            rectY1 := Self.endPoint.getY();
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.AT);
        stringBuffer.appendint(rectX1);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectY1);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectX2);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectY2);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD);
        
        for index := (rtsLayerList.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(rtsLayerList.get(index)));
            stringBuffer.delete_(0, stringBuffer.length());
            viewPosition := rtsLayer_.getViewPosition();
            stringBuffer.append(Self.POSSIBLE);
            stringBuffer.append(rtsLayer_.getName());
            stringBuffer.append(Self.SPACE);
            stringBuffer.append(Self.AT);
            stringBuffer.appendint(Integer(Trunc(((viewPosition.getX()) + (rtsLayer_.getHalfWidth())))));
            stringBuffer.append(Self.SPACE);
            stringBuffer.appendint(Integer(Trunc(((viewPosition.getY()) + (rtsLayer_.getHalfHeight())))));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD);
            if Self.rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, (viewPosition.getX()) + (rtsLayer_.getHalfWidth()), (viewPosition.getY()) + (rtsLayer_.getHalfHeight())) then begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.ADDING).append(rtsLayer_.getName()).toString(), TJava.Box(Self), Self.METHOD);
                rtsLayer_.select();
                Self.getSelectedBuildingPlayerGameInput().addSelectedRTSLayer(rtsLayer_);
            end;
        end;
        gameLayer := Self.getSelectedBuildingPlayerGameInput().getLastSelectedRtsLayer();
        if (gameLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            lastRTSLayer := TRTSLayer(TJava.ToObject(gameLayer));
            if (lastRTSLayer.getScrollSelectionForm()) <> (TScrollSelectionForm.getNullScrollSelectionForm()) then begin
                Self.updateForm(lastRTSLayer.getScrollSelectionForm(), lastRTSLayer.getRTSFormInput());
                Self.setSelectedRtsLayer(lastRTSLayer);
            end;
        end;
        Self.updatePaintable();
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.processSelectionBoxMotionInput(layerManager: TAllBinaryLayerManager);
var
  motionGestureEvent_: TMotionGestureEvent;
  motionGestureInput_: TMotionGestureInput;
  point: TGPoint;
  index: Integer;
begin
        for index := (Self.getMotionGestureInputList().size()) - (1) downto 0 do begin
            motionGestureEvent_ := TMotionGestureEvent(TJava.ToObject(Self.getMotionGestureInputList().get(index)));
            motionGestureInput_ := motionGestureEvent_.getMotionGesture();
            point := motionGestureEvent_.getCurrentPoint();
            if (motionGestureInput_) = (Self.touchMotionGestureFactory.PRESSED) then begin
                Self.startPoint := point;
                Self.endPoint := point;
            end else if (motionGestureInput_) = (Self.touchMotionGestureFactory.RELEASED) then begin
                Self.endPoint := point;
                Self.makeSelection();
                Self.startPoint := TPointFactory.getInstance().ZERO_ZERO;
                Self.endPoint := TPointFactory.getInstance().ZERO_ZERO;
            end else begin
                Self.endPoint := point;
            end;
        end;
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.processMotionInput(layerManager: TAllBinaryLayerManager);
var
  endDrag: Boolean;
begin
        if (Self.getMotionGestureInputList().size()) > (0) then begin
            endDrag := Self.processDraggingMotionInput(layerManager);
            if not (Self.isDragging) then begin
                Self.processSelectionBoxMotionInput(layerManager);
            end;
            if endDrag then begin
                Self.isDragging := False;
            end;
        end;
        Self.getMotionGestureInputList().clear();
end;
    

procedure THumanRTSPlayerGameInput.setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput);
var
  logUtil_: TLogUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START).append(TStringUtil.getInstance().toString(selectedRtsFormInput)).toString(), TJava.Box(Self), 'setSelectedRtsFormInput');
        inherited setSelectedRtsFormInput(selectedRtsFormInput);
        Self.setSelectedRtsLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
end;
    

procedure THumanRTSPlayerGameInput.updateFormForLayer(rtsLayer_: TRTSLayer);
var
  scrollSelectionForm_: TScrollSelectionForm;
begin
        scrollSelectionForm_ := rtsLayer_.getScrollSelectionForm();
        if ((scrollSelectionForm_) <> (TScrollSelectionForm.getNullScrollSelectionForm())) and ((Self.getRtsPlayerLayerInterface().getGroupInterface()[0]) = (rtsLayer_.getGroupInterface()[0])) then begin
            Self.updateForm(scrollSelectionForm_, rtsLayer_.getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
            Self.setSelectedRtsLayer(rtsLayer_);
        end else begin
            Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(Self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm());
            Self.setSelectedRtsFormInput(Self.getRtsPlayerLayerInterface().getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
        end;
end;
    

procedure THumanRTSPlayerGameInput.updateForm(scrollSelectionForm_: TScrollSelectionForm; rtfFormInput: TRTSFormInput);
begin
        Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(scrollSelectionForm_);
        Self.setSelectedRtsFormInput(rtfFormInput);
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.setSelectedRTSLayer(rtSLayer_: TCollidableDestroyableDamageableLayer; geographicMapCellPosition_: TGeographicMapCellPosition);
var
  gameCanvas: TAllBinaryGameCanvas;
  endLevelNoBuildingSelectedTouchButtonsBuilder_: TEndLevelNoBuildingSelectedTouchButtonsBuilder;
  rtsLayer_: TRTSLayer;
  endLevelTouchButtonsBuilder_: TEndLevelTouchButtonsBuilder;
begin
        if ((rtSLayer_) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and ((Self.getRtsPlayerLayerInterface().getGroupInterface()[0]) <> (rtSLayer_.getGroupInterface()[0])) then begin
            Self.getRtsPlayerLayerInterface().add(TErrorSound.getInstance());
            TGameNotificationEventHandler.getInstance().fireEvent(Self.notYoursGameNotificationEvent);
            Exit;
        end;
        gameCanvas := Self.getGameCanvas();
        if (rtSLayer_) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.getRtsPlayerLayerInterface().add(TSelectBuildingSound.getInstance());
            rtsLayer_ := TRTSLayer(TJava.ToObject(rtSLayer_));
            rtsLayer_.select();
            Self.updateFormForLayer(rtsLayer_);
            if (gameCanvas.getGameState()) = (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
                if rtsLayer_.isSelfUpgradeable() then begin
                    gameCanvas.updateCurrentTouchInputFactory(TRTSTouchButtonsBuilder.Create());
                end else begin
                    gameCanvas.updateCurrentTouchInputFactory(TNoBuildingSelectedTouchButtonsBuilder.Create());
                end;
            end else begin
                endLevelTouchButtonsBuilder_ := TEndLevelTouchButtonsBuilder.Create();
                if (Self.touchButtonsBuilderFactory) <> (nil) then begin
                    endLevelTouchButtonsBuilder_.add(Self.touchButtonsBuilderFactory.getInstance());
                end;
                gameCanvas.updateCurrentTouchInputFactory(endLevelTouchButtonsBuilder_);
            end;
        end else begin
            Self.logUtil.putF('Set Player Default Form', TJava.Box(Self), 'setSelectedRTSLayer');
            Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(Self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm());
            Self.setSelectedRtsFormInput(Self.getRtsPlayerLayerInterface().getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
            if (gameCanvas.getGameState()) = (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
                gameCanvas.updateCurrentTouchInputFactory(TNoBuildingSelectedTouchButtonsBuilder.Create());
            end else begin
                endLevelNoBuildingSelectedTouchButtonsBuilder_ := TEndLevelNoBuildingSelectedTouchButtonsBuilder.Create();
                if (Self.touchButtonsBuilderFactory) <> (nil) then begin
                    endLevelNoBuildingSelectedTouchButtonsBuilder_.add(Self.touchButtonsBuilderFactory.getInstance());
                end;
                gameCanvas.updateCurrentTouchInputFactory(endLevelNoBuildingSelectedTouchButtonsBuilder_);
            end;
        end;
        Self.getSelectedRtsFormInput().setSelectedGeographicCellPosition(geographicMapCellPosition_);
        Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtSLayer_);
        Self.updatePaintable();
end;
    

procedure THumanRTSPlayerGameInput.updatePaintable;
var
  list: TBasicArrayList;
  rtsLayer_: TRTSLayer;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        list := Self.getSelectedBuildingPlayerGameInput().getSelectedBasicArrayList();
        if (list.size()) > (1) then begin
            geographicMapCompositeInterface_ := (TJava.ToObject(Self.getGameCanvas()) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            Self.multiSelectPaintable.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
            Self.multiSelectPaintable.update(list);
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(Self.multiSelectPaintable);
        end else if (list.size()) = (1) then begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(list.get(0)));
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(rtsLayer_.createHudPaintable());
        end else begin
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoInit(TNullInitUpdatePaintable.getInstance());
        end;
end;
    

procedure THumanRTSPlayerGameInput.paint(graphics_: TGraphics);
var
  rectX1: Integer;
  rectY1: Integer;
  rectX2: Integer;
  rectY2: Integer;
begin
        inherited paint(graphics_);
        if ((Self.startPoint) <> (TPointFactory.getInstance().ZERO_ZERO)) and ((Self.endPoint) <> (TPointFactory.getInstance().ZERO_ZERO)) then begin
            graphics_.setColor(TBasicColorFactory.getInstance().RED.intValue());
            rectX1 := Self.startPoint.getX();
            rectY1 := Self.startPoint.getY();
            rectX2 := Self.endPoint.getX();
            rectY2 := Self.endPoint.getY();
            if (rectX1) > (rectX2) then begin
                rectX2 := rectX1;
                rectX1 := Self.endPoint.getX();
            end;
            if (rectY1) > (rectY2) then begin
                rectY2 := rectY1;
                rectY1 := Self.endPoint.getY();
            end;
            graphics_.drawRect(rectX1, rectY1, (rectX2) - (rectX1), (rectY2) - (rectY1));
        end;
end;
    

procedure THumanRTSPlayerGameInput.onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
        Self.getMotionGestureInputList().add(motionGestureEvent_);
end;
    

procedure THumanRTSPlayerGameInput.onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
end;
    

function THumanRTSPlayerGameInput.getSelectedRtsLayer: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.selectedRtsLayer);
end;
    

procedure THumanRTSPlayerGameInput.setSelectedRtsLayer(selectedRtsLayer: TCollidableDestroyableDamageableLayer);
begin
        Self.selectedRtsLayer := selectedRtsLayer;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

