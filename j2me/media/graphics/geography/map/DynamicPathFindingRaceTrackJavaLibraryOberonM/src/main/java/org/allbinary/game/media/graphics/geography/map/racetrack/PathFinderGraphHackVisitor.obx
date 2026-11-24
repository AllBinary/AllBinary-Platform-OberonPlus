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
// package org.allbinary.game.media.graphics.geography.map.racetrack
unit PathFinderGraphHackVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GraphPath, DefaultWeightedEdge, SimpleWeightedGraph, BasicArrayList, LogUtil, CellPosition, BasicGeographicMap, BasePathFinderGraphVisitor;

type
  {AB:TYPES}
  TPathFinderGraphHackVisitor<V, E> = class(TBasePathFinderGraphVisitor<V, E>)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
        procedure visit(graph: TSimpleWeightedGraph; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList); virtual;
        procedure fixStart(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>; startPathFindingNodeList: TBasicArrayList);
        procedure fixEnd(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>; endPathFindingNodeList: TBasicArrayList);
        procedure fixOverPassEdges(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>);
        procedure fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList); virtual;
        procedure removeOverPassEdges(pathList: TBasicArrayList);
        function isValid(graphPath_: TGraphPath): Boolean; virtual;
  end;

implementation
uses
  AllBinaryTiledLayer, BasicGeographicMapCellPositionFactory, BasicGeographicMapUtil, GeographicMapCellPosition, RaceTrackGeographicMap, PathFindingNode;


{AB:CODE}

procedure TPathFinderGraphHackVisitor<V, E>.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TPathFinderGraphHackVisitor<V, E>.Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
begin
        inherited Create(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
        InitFields;
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.visit(graph: TSimpleWeightedGraph; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
begin
        Self.fixStart(graph, startPathFindingNodeList);
        Self.fixEnd(graph, endPathFindingNodeList);
        Self.fixOverPassEdges(graph);
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.fixStart(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>; startPathFindingNodeList: TBasicArrayList);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  tiledLayer: TAllBinaryTiledLayer;
  startPathFindingNode: TPathFindingNode;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  column: Integer;
  row: Integer;
  nextRow: Integer;
  geographicMapCellPositionNeighbor: TGeographicMapCellPosition;
  index: Integer;
begin
        geographicMapCellPositionFactory := Self.geographicMapInterface.getGeographicMapCellPositionFactory();
        tiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        for index := (startPathFindingNodeList.size()) - (1) downto 0 do begin
            startPathFindingNode := TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(index)));
            geographicMapCellPosition_ := startPathFindingNode.geographicMapCellPosition;
            column := geographicMapCellPosition_.getColumn();
            row := geographicMapCellPosition_.getRow();
            nextRow := (row) + (1);
            if tiledLayer.isOnTileLayer(column, nextRow) then begin
                geographicMapCellPositionNeighbor := geographicMapCellPositionFactory.getAt(column, nextRow);
                graph.removeEdge(geographicMapCellPosition_, geographicMapCellPositionNeighbor);
            end;
        end;
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.fixEnd(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>; endPathFindingNodeList: TBasicArrayList);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  tiledLayer: TAllBinaryTiledLayer;
  endPathFindingNode: TPathFindingNode;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  column: Integer;
  row: Integer;
  nextRow: Integer;
  geographicMapCellPositionNeighbor: TGeographicMapCellPosition;
  index: Integer;
begin
        geographicMapCellPositionFactory := Self.geographicMapInterface.getGeographicMapCellPositionFactory();
        tiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        for index := (endPathFindingNodeList.size()) - (1) downto 0 do begin
            endPathFindingNode := TPathFindingNode(TJava.ToObject(endPathFindingNodeList.get(index)));
            geographicMapCellPosition_ := endPathFindingNode.geographicMapCellPosition;
            graph.addVertex(geographicMapCellPosition_);
            column := geographicMapCellPosition_.getColumn();
            row := geographicMapCellPosition_.getRow();
            nextRow := (row) + (1);
            if tiledLayer.isOnTileLayer(column, nextRow) then begin
                geographicMapCellPositionNeighbor := geographicMapCellPositionFactory.getAt(column, nextRow);
                graph.addEdge(geographicMapCellPosition_, geographicMapCellPositionNeighbor);
            end;
        end;
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.fixOverPassEdges(graph: TSimpleWeightedGraph<TCellPosition, TDefaultWeightedEdge>);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  raceTrackGeographicMap_: TRaceTrackGeographicMap;
  CellPositionArray: TArray<TCellPosition>;
  overPassGeographicMapCellPosition: TCellPosition;
  underPassGeographicMapCellPosition: TGeographicMapCellPosition;
  rightUnderPassGeographicMapCellPosition: TGeographicMapCellPosition;
  leftUnderPassGeographicMapCellPosition: TGeographicMapCellPosition;
  index: Integer;
begin
        geographicMapCellPositionFactory := Self.geographicMapInterface.getGeographicMapCellPositionFactory();
        raceTrackGeographicMap_ := TRaceTrackGeographicMap(TJava.ToObject(Self.geographicMapInterface));
        CellPositionArray := raceTrackGeographicMap_.getRaceTrackData().getOverPassGeographicMapCellPositionArray();
        for index := (System.Length(CellPositionArray)) - (1) downto 0 do begin
            overPassGeographicMapCellPosition := CellPositionArray[index];
            Self.logUtil.putF('Fixing Over Pass: ' + TJava.ToString(overPassGeographicMapCellPosition.getColumn()) + ', ' + TJava.ToString(overPassGeographicMapCellPosition.getRow()), TJava.Box(Self), 'fixOverPassEdges');
            underPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn(), overPassGeographicMapCellPosition.getRow());
            rightUnderPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt((overPassGeographicMapCellPosition.getColumn()) + (1), overPassGeographicMapCellPosition.getRow());
            leftUnderPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt((overPassGeographicMapCellPosition.getColumn()) - (1), overPassGeographicMapCellPosition.getRow());
            graph.removeEdge(underPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition);
            graph.removeEdge(underPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition);
            graph.addVertex(overPassGeographicMapCellPosition);
            graph.addEdge(overPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition);
            graph.addEdge(overPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition);
        end;
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList);
var
  endPathFindingNode: TPathFindingNode;
  startPathFindingNode: TPathFindingNode;
  index: Integer;
begin
        for index := (startPathFindingNodeList.size()) - (1) downto 0 do begin
            endPathFindingNode := TPathFindingNode(TJava.ToObject(endPathFindingNodeList.get(index)));
            startPathFindingNode := TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(index)));
            if TBasicGeographicMapUtil.getInstance().isSameCellPosition(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition) then begin
                if pathList.remove(endPathFindingNode.geographicMapCellPosition) then begin
                    pathList.remove(startPathFindingNode.geographicMapCellPosition);
                    pathList.addAt(0, TJava.Box(startPathFindingNode.geographicMapCellPosition));
                end;
            end;
        end;
        Self.removeOverPassEdges(pathList);
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor<V, E>.removeOverPassEdges(pathList: TBasicArrayList);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  raceTrackGeographicMap_: TRaceTrackGeographicMap;
  CellPositionArray: TArray<TCellPosition>;
  overPassGeographicMapCellPosition: TCellPosition;
  underPassGeographicMapCellPosition: TGeographicMapCellPosition;
  indexOf: Integer;
  index: Integer;
begin
        geographicMapCellPositionFactory := Self.geographicMapInterface.getGeographicMapCellPositionFactory();
        raceTrackGeographicMap_ := TRaceTrackGeographicMap(TJava.ToObject(Self.geographicMapInterface));
        CellPositionArray := raceTrackGeographicMap_.getRaceTrackData().getOverPassGeographicMapCellPositionArray();
        for index := (System.Length(CellPositionArray)) - (1) downto 0 do begin
            overPassGeographicMapCellPosition := CellPositionArray[index];
            underPassGeographicMapCellPosition := geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn(), overPassGeographicMapCellPosition.getRow());
            indexOf := pathList.indexOf(TJava.Box(overPassGeographicMapCellPosition));
            if (indexOf) <> (-1) then begin
                pathList.set_(indexOf, TJava.Box(underPassGeographicMapCellPosition));
            end;
        end;
end;
    

function TPathFinderGraphHackVisitor<V, E>.isValid(graphPath_: TGraphPath): Boolean;
begin
        if (((graphPath_.getEdgeList().size()) > (Self.edgeMinimum)) and ((graphPath_.getWeight()) < (Self.maxPathWeight))) and ((graphPath_.getWeight()) > (Self.minPathWeight)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

