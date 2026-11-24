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
unit VisibleCellPositionsSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SimpleTiledLayer, Graphics, RTSLayerEvent, BuildingEventListenerInterface, BasicArrayList, CellPosition, ScrollMapEvent, ScrollMapEventListenerInterface, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TVisibleCellPositionsSingleton = class(TInterfacedObject, IBuildingEventListenerInterface, IScrollMapEventListenerInterface, IEventListenerInterface)
  public
    stationaryVisibleCellPositions: TArray<TArray<SmallInt>>;
    visibleCellPositions: TArray<TArray<SmallInt>>;
    currentlyVisibleCellPositions: TArray<TArray<SmallInt>>;
    ALL_VISIBLE_TILEDLAYER: TSimpleTiledLayer;
    simpleTiledLayer: TSimpleTiledLayer;
    paintSimpleTiledLayer: TSimpleTiledLayer;
    currentIndex: Integer;
    class var instance: TVisibleCellPositionsSingleton;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TVisibleCellPositionsSingleton; static;
        constructor Create;
        procedure init(simpleTiledLayer_: TSimpleTiledLayer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onBuildingEvent(event: TRTSLayerEvent); virtual;
        procedure onMoveEvent(scrollMapEvent_: TScrollMapEvent); virtual;
        procedure addStationaryCellPositions(list: TBasicArrayList); virtual;
        procedure removeStationaryCellPositions(list: TBasicArrayList); virtual;
        procedure update; virtual;
        function shouldProcess: Boolean; virtual;
        procedure addCellPositions(list: TBasicArrayList); virtual;
        function isVisible(cellPosition_: TCellPosition): Boolean; virtual;
        procedure move(dx: Integer; dy: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setSimpleTiledLayer(simpleTiledLayer_: TSimpleTiledLayer);
        function getSimpleTiledLayer: TSimpleTiledLayer; virtual;
  end;

implementation
uses
  LocalPlayerBuildingEventHandler, ForcedLogUtil, ScrollMapEventHandler, NullUtil, EventStrings;


{AB:CODE}

procedure TVisibleCellPositionsSingleton.InitFields;
begin
  Self.stationaryVisibleCellPositions := TNullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY;
  Self.visibleCellPositions := TNullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY;
  Self.currentlyVisibleCellPositions := TNullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY;
  Self.ALL_VISIBLE_TILEDLAYER := TSimpleTiledLayer.Create(0, 0, 0, 0);
  Self.simpleTiledLayer := Self.ALL_VISIBLE_TILEDLAYER;
  Self.paintSimpleTiledLayer := Self.ALL_VISIBLE_TILEDLAYER;
  
end;

function TVisibleCellPositionsSingleton.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TVisibleCellPositionsSingleton.getInstance: TVisibleCellPositionsSingleton;
begin
        Exit(TVisibleCellPositionsSingleton.instance);
end;
    

constructor TVisibleCellPositionsSingleton.Create;
begin
    inherited Create;
    InitFields;
        TLocalPlayerBuildingEventHandler.getInstance().addListenerInterface(Self);
        TScrollMapEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TVisibleCellPositionsSingleton.init(simpleTiledLayer_: TSimpleTiledLayer);
var
  rows: Integer;
  columns: Integer;
begin
        Self.paintSimpleTiledLayer := Self.ALL_VISIBLE_TILEDLAYER;
        Self.currentIndex := 0;
        rows := simpleTiledLayer_.getRows();
        columns := simpleTiledLayer_.getColumns();
        Self.stationaryVisibleCellPositions := TJava.NewArray2<SmallInt>(rows, columns);
        Self.visibleCellPositions := TJava.NewArray2<SmallInt>(rows, columns);
        Self.currentlyVisibleCellPositions := TJava.NewArray2<SmallInt>(rows, columns);
        Self.setSimpleTiledLayer(simpleTiledLayer_);
end;
    

procedure TVisibleCellPositionsSingleton.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TVisibleCellPositionsSingleton.onBuildingEvent(event: TRTSLayerEvent);
begin
        Self.paintSimpleTiledLayer := Self.simpleTiledLayer;
end;
    

// throws Exception
procedure TVisibleCellPositionsSingleton.onMoveEvent(scrollMapEvent_: TScrollMapEvent);
begin
        Self.move(scrollMapEvent_.getDx(), scrollMapEvent_.getDy());
end;
    

procedure TVisibleCellPositionsSingleton.addStationaryCellPositions(list: TBasicArrayList);
var
  cellPosition_: TCellPosition;
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            cellPosition_ := TCellPosition(TJava.ToObject(list.get(index)));
            Inc(Self.stationaryVisibleCellPositions[cellPosition_.getRow()][cellPosition_.getColumn()]);
        end;
end;
    

procedure TVisibleCellPositionsSingleton.removeStationaryCellPositions(list: TBasicArrayList);
var
  cellPosition_: TCellPosition;
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            cellPosition_ := TCellPosition(TJava.ToObject(list.get(index)));
            Dec(Self.stationaryVisibleCellPositions[cellPosition_.getRow()][cellPosition_.getColumn()]);
        end;
end;
    

procedure TVisibleCellPositionsSingleton.update;
var
  temp: TArray<TArray<SmallInt>>;
  index2: Integer;
  index: Integer;
begin
        if (Self.currentIndex) = (0) then begin
            temp := Self.currentlyVisibleCellPositions;
            Self.currentlyVisibleCellPositions := Self.visibleCellPositions;
            Self.visibleCellPositions := temp;
            for index := (System.Length(Self.visibleCellPositions)) - (1) downto 0 do begin
                for index2 := (System.Length(Self.visibleCellPositions[0])) - (1) downto 0 do begin
                    Self.visibleCellPositions[index][index2] := Self.stationaryVisibleCellPositions[index][index2];
                end;
            end;
        end;
        Inc(Self.currentIndex);
        if (Self.currentIndex) > (10) then begin
            Self.currentIndex := 0;
        end;
end;
    

function TVisibleCellPositionsSingleton.shouldProcess: Boolean;
begin
        if (Self.currentIndex) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TVisibleCellPositionsSingleton.addCellPositions(list: TBasicArrayList);
var
  cellPosition_: TCellPosition;
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            cellPosition_ := TCellPosition(TJava.ToObject(list.get(index)));
            Inc(Self.visibleCellPositions[cellPosition_.getRow()][cellPosition_.getColumn()]);
        end;
end;
    

function TVisibleCellPositionsSingleton.isVisible(cellPosition_: TCellPosition): Boolean;
begin
        if (Self.visibleCellPositions[cellPosition_.getRow()][cellPosition_.getColumn()]) > (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TVisibleCellPositionsSingleton.move(dx: Integer; dy: Integer);
begin
        Self.getSimpleTiledLayer().moveDXY(dx, dy);
end;
    

procedure TVisibleCellPositionsSingleton.paint(graphics_: TGraphics);
begin
        Self.paintSimpleTiledLayer.paint(graphics_, Self.currentlyVisibleCellPositions);
end;
    

procedure TVisibleCellPositionsSingleton.setSimpleTiledLayer(simpleTiledLayer_: TSimpleTiledLayer);
begin
        Self.simpleTiledLayer := simpleTiledLayer_;
end;
    

function TVisibleCellPositionsSingleton.getSimpleTiledLayer: TSimpleTiledLayer;
begin
        Exit(Self.simpleTiledLayer);
end;

initialization
  {AB:INITIALIZATION}
  TVisibleCellPositionsSingleton.instance := TVisibleCellPositionsSingleton.Create();
  {AB:END}

end.

