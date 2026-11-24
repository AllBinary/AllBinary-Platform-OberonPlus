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
// package org.allbinary.media.graphics.geography.map.drop
unit DropCellPositionHistory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CellPosition, CellPositionFactory, AllBinaryLayer;

type
  {AB:TYPES}
  TDropCellPositionHistory = class(TObject)
  public
    cellPositionFactory: TCellPositionFactory;
    positionList: TBasicArrayList;
    layerList: TBasicArrayList;
    class var SINGLETON: TDropCellPositionHistory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDropCellPositionHistory; static;
        procedure add(cellPosition_: TCellPosition; layerInterface: TAllBinaryLayer); virtual;
        procedure addAll(list: TBasicArrayList; layerInterface: TAllBinaryLayer); virtual;
        procedure remove(cellPosition_: TCellPosition); virtual;
        procedure removeAll(layerInterface: TAllBinaryLayer); virtual;
        procedure clear; virtual;
        function isCellPositionWithDrop(cellPosition_: TCellPosition): Boolean; virtual;
        function anyCellPositionWithDrop(list: TBasicArrayList): Boolean; virtual;
        function getCellPositionWithDrop(list: TBasicArrayList): TCellPosition; virtual;
        function getLayerInterface(cellPosition_: TCellPosition): TAllBinaryLayer; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TDropCellPositionHistory.InitFields;
begin
  Self.cellPositionFactory := TCellPositionFactory.getInstance();
  Self.positionList := TBasicArrayListD.Create();
  Self.layerList := TBasicArrayListD.Create();
end;

constructor TDropCellPositionHistory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDropCellPositionHistory.getInstance: TDropCellPositionHistory;
begin
        Exit(TDropCellPositionHistory.SINGLETON);
end;
    

procedure TDropCellPositionHistory.add(cellPosition_: TCellPosition; layerInterface: TAllBinaryLayer);
begin
        Self.positionList.add(TJava.Box(cellPosition_));
        Self.layerList.add(TJava.Box(layerInterface));
end;
    

procedure TDropCellPositionHistory.addAll(list: TBasicArrayList; layerInterface: TAllBinaryLayer);
var
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            Self.add(TCellPosition(TJava.ToObject(list.get(index))), layerInterface);
        end;
end;
    

procedure TDropCellPositionHistory.remove(cellPosition_: TCellPosition);
var
  index: Integer;
begin
        index := Self.positionList.indexOf(TJava.Box(cellPosition_));
        if (index) >= (0) then begin
            Self.positionList.removeAt(index);
            Self.layerList.removeAt(index);
        end;
end;
    

procedure TDropCellPositionHistory.removeAll(layerInterface: TAllBinaryLayer);
var
  index: Integer;
begin
        index := 0;
        while (index) <> (-1) do begin
            index := Self.layerList.indexOf(TJava.Box(layerInterface));
            if (index) >= (0) then begin
                Self.positionList.removeAt(index);
                Self.layerList.removeAt(index);
            end;
        end;
end;
    

procedure TDropCellPositionHistory.clear;
begin
        Self.positionList.clear();
        Self.layerList.clear();
end;
    

function TDropCellPositionHistory.isCellPositionWithDrop(cellPosition_: TCellPosition): Boolean;
begin
        Exit(Self.positionList.contains(TJava.Box(cellPosition_)));
end;
    

function TDropCellPositionHistory.anyCellPositionWithDrop(list: TBasicArrayList): Boolean;
var
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            if Self.isCellPositionWithDrop(TCellPosition(TJava.ToObject(list.get(index)))) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TDropCellPositionHistory.getCellPositionWithDrop(list: TBasicArrayList): TCellPosition;
var
  cellPosition_: TCellPosition;
  index: Integer;
begin
        
        for index := (list.size()) - (1) downto 0 do begin
            cellPosition_ := TCellPosition(TJava.ToObject(list.get(index)));
            if Self.isCellPositionWithDrop(cellPosition_) then begin
                Exit(cellPosition_);
            end;
        end;
        Exit(Self.cellPositionFactory.NONE);
end;
    

function TDropCellPositionHistory.getLayerInterface(cellPosition_: TCellPosition): TAllBinaryLayer;
var
  index: Integer;
begin
        index := Self.positionList.indexOf(TJava.Box(cellPosition_));
        if (index) >= (0) then begin
            Exit(TAllBinaryLayer(TJava.ToObject(Self.layerList.get(index))));
        end else begin
            Exit(TAllBinaryLayer.NULL_ALLBINARY_LAYER);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDropCellPositionHistory.SINGLETON := TDropCellPositionHistory.Create();
  {AB:END}

end.

