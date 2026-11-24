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
// package org.allbinary.game.layer.waypoint
unit WaypointCellPositionHistory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CellPosition, AllBinaryLayer;

type
  {AB:TYPES}
  TWaypointCellPositionHistory = class(TObject)
  public
    positionList: TBasicArrayList;
    layerList: TBasicArrayList;
    class var SINGLETON: TWaypointCellPositionHistory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWaypointCellPositionHistory; static;
        procedure add(cellPosition_: TCellPosition; layerInterface: TAllBinaryLayer); virtual;
        procedure addList(list: TBasicArrayList; layerInterface: TAllBinaryLayer); virtual;
        procedure remove(cellPosition_: TCellPosition); virtual;
        procedure removeLayer(layerInterface: TAllBinaryLayer); virtual;
        procedure clear; virtual;
        function isCellPositionWithDrop(cellPosition_: TCellPosition): Boolean; virtual;
        function anyCellPositionWithDrop(list: TBasicArrayList): Boolean; virtual;
        function getLayerInterface(cellPosition_: TCellPosition): TAllBinaryLayer; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TWaypointCellPositionHistory.InitFields;
begin
  Self.positionList := TBasicArrayListD.Create();
  Self.layerList := TBasicArrayListD.Create();
end;

constructor TWaypointCellPositionHistory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWaypointCellPositionHistory.getInstance: TWaypointCellPositionHistory;
begin
        Exit(TWaypointCellPositionHistory.SINGLETON);
end;
    

procedure TWaypointCellPositionHistory.add(cellPosition_: TCellPosition; layerInterface: TAllBinaryLayer);
begin
        Self.positionList.add(TJava.Box(cellPosition_));
        Self.layerList.add(TJava.Box(layerInterface));
end;
    

procedure TWaypointCellPositionHistory.addList(list: TBasicArrayList; layerInterface: TAllBinaryLayer);
var
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            Self.add(TCellPosition(TJava.ToObject(list.get(index))), layerInterface);
        end;
end;
    

procedure TWaypointCellPositionHistory.remove(cellPosition_: TCellPosition);
var
  index: Integer;
begin
        index := Self.positionList.indexOf(TJava.Box(cellPosition_));
        if (index) >= (0) then begin
            Self.positionList.removeAt(index);
            Self.layerList.removeAt(index);
        end;
end;
    

procedure TWaypointCellPositionHistory.removeLayer(layerInterface: TAllBinaryLayer);
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
    

procedure TWaypointCellPositionHistory.clear;
begin
        Self.positionList.clear();
        Self.layerList.clear();
end;
    

function TWaypointCellPositionHistory.isCellPositionWithDrop(cellPosition_: TCellPosition): Boolean;
begin
        Exit(Self.positionList.contains(TJava.Box(cellPosition_)));
end;
    

function TWaypointCellPositionHistory.anyCellPositionWithDrop(list: TBasicArrayList): Boolean;
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
    

function TWaypointCellPositionHistory.getLayerInterface(cellPosition_: TCellPosition): TAllBinaryLayer;
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
  TWaypointCellPositionHistory.SINGLETON := TWaypointCellPositionHistory.Create();
  {AB:END}

end.

