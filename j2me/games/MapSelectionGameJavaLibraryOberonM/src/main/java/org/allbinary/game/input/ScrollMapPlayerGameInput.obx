{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.input
unit ScrollMapPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AllBinaryLayerManager, ScrollMapEvent, BasicGeographicMap, GameInputProcessor, PlayerGameInput;

type
  {AB:TYPES}
  TScrollMapPlayerGameInput = class(TPlayerGameInput)
  public
    inputProcessorArray: TArray<TGameInputProcessor>;
    border: Integer;
    inputList: TBasicArrayList;
    isSingleKeyProcessing: Boolean;
    geographicMapInterface: TBasicGeographicMap;
    maxBottom: Integer;
    maxRight: Integer;
    scrollMapEvent: TScrollMapEvent;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap; list: TBasicArrayList; playerInputId: Integer);
        procedure move(dx: Integer; dy: Integer);
        procedure init; virtual;
        procedure scrollMiddleX; virtual;
        procedure scrollY(anchor: Integer); virtual;
        procedure up; virtual;
        procedure down; virtual;
        procedure right; virtual;
        procedure left; virtual;
        procedure initInputProcessors; virtual;
        procedure processInputKey(key: Integer); virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        function getSpecialHeight: Integer;
        function getSpecialWidth: Integer;
        function keepOnMapMaxY(newY: Integer): Boolean; virtual;
        function keepOnMapMinY(newY: Integer): Boolean; virtual;
        function keepOnMapMaxX(newX: Integer): Boolean; virtual;
        function keepOnMapMinX(newX: Integer): Boolean; virtual;
  end;

implementation
uses
  InputFactory, ScrollMapUpGameInputProcessor, ScrollMapDownGameInputProcessor, ScrollMapRightGameInputProcessor, ScrollMapLeftGameInputProcessor, GameInputProcessorUtil, Canvas, Graphics, Features, InputFeatureFactory, GameKeyEvent, AllBinaryGameLayerManager, AllBinaryTiledLayer, DisplayInfoSingleton, ScrollMapEventHandler, BasicArrayListD;


{AB:CODE}

procedure TScrollMapPlayerGameInput.InitFields;
begin
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  Self.border := 150;
  
  Self.isSingleKeyProcessing := (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)) or (TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_PRESS));
  
  
  
  Self.scrollMapEvent := TScrollMapEvent.Create(TJava.Box(Self));
end;
    

constructor TScrollMapPlayerGameInput.Create(geographicMapInterface: TBasicGeographicMap; list: TBasicArrayList; playerInputId: Integer);
begin
        inherited Create(list, TBasicArrayListD.Create(), playerInputId);
        InitFields;
        Self.initInputProcessors();
        Self.geographicMapInterface := geographicMapInterface;
        Self.inputList := list;
        Self.init();
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.move(dx: Integer; dy: Integer);
var
  terrainTiledLayer: TAllBinaryTiledLayer;
begin
        terrainTiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        terrainTiledLayer.moveDXY(-dx, -dy);
        Self.scrollMapEvent.setDxDy(-dx, -dy);
        TScrollMapEventHandler.getInstance().fireEvent(Self.scrollMapEvent);
end;
    

procedure TScrollMapPlayerGameInput.init;
begin
        Self.maxBottom := Self.getSpecialHeight();
        Self.maxRight := Self.getSpecialWidth();
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.scrollMiddleX;
var
  terrainTiledLayer: TAllBinaryTiledLayer;
  displayInfo: TDisplayInfoSingleton;
  diffX: Integer;
begin
        terrainTiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.move(-terrainTiledLayer.getXP(), 0);
        if (terrainTiledLayer.getWidth()) < (displayInfo.getLastWidth()) then begin
            diffX := (TJava.SignedRightShift(((displayInfo.getLastWidth()) - (terrainTiledLayer.getWidth())), 1));
            Self.move(-diffX, 0);
        end else begin
            diffX := (TJava.SignedRightShift(((terrainTiledLayer.getWidth()) - (displayInfo.getLastWidth())), 1));
            Self.move(diffX, 0);
        end;
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.scrollY(anchor: Integer);
var
  terrainTiledLayer: TAllBinaryTiledLayer;
  displayInfo: TDisplayInfoSingleton;
  diffY: Integer;
begin
        terrainTiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (anchor) = (TGraphics.TOP) then begin
            Self.logUtil.putF('Top', TJava.Box(Self), 'scrollY');
        end else if (anchor) = (TGraphics.BOTTOM) then begin
            Self.logUtil.putF('Bottom', TJava.Box(Self), 'scrollY');
            diffY := ((terrainTiledLayer.getHeight()) - (displayInfo.getLastHeight()));
            Self.move(0, diffY);
        end else if (anchor) = (TGraphics.VCENTER) then begin
            Self.logUtil.putF('Center', TJava.Box(Self), 'scrollY');
            diffY := (((terrainTiledLayer.getHeight()) - (displayInfo.getLastHeight()))) div (2);
            Self.move(0, diffY);
        end else begin
            raise SysUtils.Exception.Create('No Such Anchor Supported');
        end;
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.up;
var
  y: Integer;
begin
        y := (Self.geographicMapInterface.getAllBinaryTiledLayer().getYP()) - (10);
        if Self.keepOnMapMinY(y) then begin
            Self.move(0, -10);
        end;
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.down;
var
  y: Integer;
begin
        y := (-Self.geographicMapInterface.getAllBinaryTiledLayer().getYP()) + (10);
        if Self.keepOnMapMaxY(y) then begin
            Self.move(0, 10);
        end;
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.right;
var
  x: Integer;
begin
        x := (Self.geographicMapInterface.getAllBinaryTiledLayer().getYP()) + (10);
        if Self.keepOnMapMinX(x) then begin
            Self.move(10, 0);
        end;
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.left;
var
  x: Integer;
begin
        x := (-Self.geographicMapInterface.getAllBinaryTiledLayer().getYP()) - (10);
        if Self.keepOnMapMaxX(x) then begin
            Self.move(-10, 0);
        end;
end;
    

procedure TScrollMapPlayerGameInput.initInputProcessors;
begin
        Self.inputProcessorArray[TCanvas.UP] := TScrollMapUpGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.DOWN] := TScrollMapDownGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM9] := TScrollMapRightGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM7] := TScrollMapLeftGameInputProcessor.Create(Self);
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.processInputKey(key: Integer);
begin
        Self.inputProcessorArray[key].processEvent(TAllBinaryGameLayerManager.getNullInstance(), TGameKeyEvent.NONE);
end;
    

// throws Exception
procedure TScrollMapPlayerGameInput.processInput(layerManager: TAllBinaryLayerManager);
var
  size: Integer;
  key: Integer;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        try
            size := Self.inputList.size();
            key := 0;
            for index := 0 to size - 1 do begin
                gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(Self.inputList.get(index)));
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
    

function TScrollMapPlayerGameInput.getSpecialHeight: Integer;
var
  terrainTiledLayer: TAllBinaryTiledLayer;
  displayInfo: TDisplayInfoSingleton;
begin
        terrainTiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (terrainTiledLayer.getHeight()) > (displayInfo.getLastHeight()) then begin
            Exit((terrainTiledLayer.getHeight()) - (displayInfo.getLastHeight()));
        end else begin
            Exit(((displayInfo.getLastHeight()) - (terrainTiledLayer.getHeight())) + (terrainTiledLayer.getCellHeight()));
        end;
end;
    

function TScrollMapPlayerGameInput.getSpecialWidth: Integer;
var
  terrainTiledLayer: TAllBinaryTiledLayer;
  displayInfo: TDisplayInfoSingleton;
begin
        terrainTiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (terrainTiledLayer.getWidth()) > (displayInfo.getLastWidth()) then begin
            Exit((terrainTiledLayer.getWidth()) - (displayInfo.getLastWidth()));
        end else begin
            Exit(((displayInfo.getLastWidth()) - (terrainTiledLayer.getWidth())) + (terrainTiledLayer.getCellWidth()));
        end;
end;
    

function TScrollMapPlayerGameInput.keepOnMapMaxY(newY: Integer): Boolean;
var
  y: Integer;
begin
        y := Self.geographicMapInterface.getAllBinaryTiledLayer().getYP();
        if (y) > ((Self.maxBottom) + (Self.border)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function TScrollMapPlayerGameInput.keepOnMapMinY(newY: Integer): Boolean;
var
  y: Integer;
begin
        y := Self.geographicMapInterface.getAllBinaryTiledLayer().getYP();
        if (y) < (-Self.border) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function TScrollMapPlayerGameInput.keepOnMapMaxX(newX: Integer): Boolean;
var
  x: Integer;
begin
        x := Self.geographicMapInterface.getAllBinaryTiledLayer().getXP();
        if (x) < ((-Self.maxRight) - (Self.border)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function TScrollMapPlayerGameInput.keepOnMapMinX(newX: Integer): Boolean;
var
  x: Integer;
begin
        x := Self.geographicMapInterface.getAllBinaryTiledLayer().getXP();
        if (x) > (Self.border) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

