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
// package org.allbinary.media.graphics.geography.pathfinding
unit PathFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, MathUtil, BasicGeographicMap, GeographicMapCellPosition, ABHashSet, ABPriorityQueue, BasicArrayList, BasicArrayListUtil, MultipassState, PathFindingNode, PathFindingNodeCost, GeographicPathFinderBase;

type
  {AB:TYPES}
  TPathFinder = class(TGeographicPathFinderBase)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    mathUtil: TMathUtil;
    openPriorityQueue: TABPriorityQueue<TPathFindingNodeCost>;
    closedSet: TABHashSet<TPathFindingNodeCost>;
    geographicMapInterface: TObject;
    costArray: TArray<TArray<TPathFindingNodeCost>>;
    procedure InitFields;
    constructor Create;
        procedure init(geographicMapInterface: TBasicGeographicMap); virtual;
        function searchTotalPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer): TBasicArrayList; override;
        function searchTotalPathN(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer; multipassState_: TMultipassState): TBasicArrayList; override;
        function search(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode): TBasicArrayList; virtual;
        procedure searchStart(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState_: TMultipassState); virtual;
        function searchN(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState_: TMultipassState): TBasicArrayList; virtual;
        function findPath(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition): TBasicArrayList; virtual;
        procedure findPathStart(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState_: TMultipassState); virtual;
        function findPathEnd(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState_: TMultipassState): TBasicArrayList; virtual;
        function extractPath(start: TGeographicMapCellPosition; current: TPathFindingNodeCost): TBasicArrayList;
  end;

implementation
uses
  PathFindingNodeCostInfo, AllBinaryTiledLayer, NullUtil, CommonStrings, BasicGeographicMapCellPositionFactory, GeographicMapCellType, RaceTrackGeographicMapCellType, BasicArrayListD;


{AB:CODE}

procedure TPathFinder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.mathUtil := TMathUtil.getInstance();
  Self.openPriorityQueue := TABPriorityQueue<TPathFindingNodeCost>.Create();
  Self.closedSet := TABHashSet<TPathFindingNodeCost>.Create();
  Self.geographicMapInterface := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  Self.costArray := TPathFindingNodeCost.NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY;
end;

constructor TPathFinder.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TPathFinder.init(geographicMapInterface: TBasicGeographicMap);
var
  tiledLayer: TAllBinaryTiledLayer;
  basicGeographicMapCellPositionFactory_: TBasicGeographicMapCellPositionFactory;
  node: TPathFindingNodeCost;
  sizeX: Integer;
  sizeY: Integer;
  geographicMapCellType_: TGeographicMapCellType;
  raceTrackGeographicMapCellType_: TRaceTrackGeographicMapCellType;
  row: Integer;
  column: Integer;
begin
        Self.geographicMapInterface := TJava.Box(geographicMapInterface);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        Self.costArray := TJava.NewArray2<TPathFindingNodeCost>(tiledLayer.getColumns(), tiledLayer.getRows());
        basicGeographicMapCellPositionFactory_ := geographicMapInterface.getGeographicMapCellPositionFactory();
        
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                geographicMapCellType_ := geographicMapInterface.getCellTypeAt(basicGeographicMapCellPositionFactory_.getAt(column, row));
                raceTrackGeographicMapCellType_ := TRaceTrackGeographicMapCellType(TJava.ToObject(geographicMapCellType_));
                node := TPathFindingNodeCost.Create(TNullUtil.getInstance().NULL_OBJECT, basicGeographicMapCellPositionFactory_.getAt(column, row), TPathFindingNodeCostInfo.Create(Int64(Trunc(raceTrackGeographicMapCellType_.getTravelCost())), Int64(-1)));
                Self.costArray[column][row] := node;
            end;
        end;
end;
    

function TPathFinder.searchTotalPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer): TBasicArrayList;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(Self.search(TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(0))), TPathFindingNode(TJava.ToObject(endPathFindingNodeList.get(0)))));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'search', TJava.Box(e));
            Exit(Self.basicArrayListUtil.getImmutableInstance());
            end;
        end;
end;
    

// throws Exception
function TPathFinder.searchTotalPathN(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer; multipassState_: TMultipassState): TBasicArrayList;
begin
        if (multipassState_.step) = (0) then begin
            Inc(multipassState_.step);
        end else if (multipassState_.step) = (1) then begin
            Self.searchStart(TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(0))), TPathFindingNode(TJava.ToObject(endPathFindingNodeList.get(0))), multipassState_);
        end else if (multipassState_.step) = (2) then begin
            Exit(Self.searchN(TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(0))), TPathFindingNode(TJava.ToObject(endPathFindingNodeList.get(0))), multipassState_));
        end;
        Exit(Self.basicArrayListUtil.getImmutableInstance());
end;
    

// throws Exception
function TPathFinder.search(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode): TBasicArrayList;
var
  list: TBasicArrayList;
  pathList: TBasicArrayList;
begin
        list := Self.findPath(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition);
        pathList := TBasicArrayListD.Create();
        pathList.add(TJava.Box(list));
        Exit(pathList);
end;
    

// throws Exception
procedure TPathFinder.searchStart(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState_: TMultipassState);
begin
        Self.findPathStart(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState_);
end;
    

// throws Exception
function TPathFinder.searchN(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState_: TMultipassState): TBasicArrayList;
var
  list: TBasicArrayList;
  pathList: TBasicArrayList;
begin
        list := Self.findPathEnd(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState_);
        if (list) = (nil) then begin
            Exit(Self.basicArrayListUtil.getImmutableInstance());
        end;
        pathList := TBasicArrayListD.Create();
        pathList.add(TJava.Box(list));
        multipassState_.iteration := 0;
        multipassState_.step := 0;
        Exit(pathList);
end;
    

// throws Exception
function TPathFinder.findPath(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition): TBasicArrayList;
var
  discoveryCalculation: Int64;
  node: TPathFindingNodeCost;
  targetColumn: Integer;
  targetRow: Integer;
  sizeX: Integer;
  sizeY: Integer;
  row: Integer;
  column: Integer;
  startNode: TPathFindingNodeCost;
  geographicMapInterface: TBasicGeographicMap;
  basicGeographicMapCellPositionFactory_: TBasicGeographicMapCellPositionFactory;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  targetNode: TPathFindingNodeCost;
  current: TPathFindingNodeCost;
  neighbor: TPathFindingNodeCost;
  neighborInfo: TPathFindingNodeCostInfo;
  calculatedCost: Int64;
begin
        Self.openPriorityQueue.clear();
        Self.closedSet.clear();
        
        
        targetColumn := target.getColumn();
        targetRow := target.getRow();
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                discoveryCalculation := (Int64(Trunc(Self.mathUtil.abs((column) - (targetColumn))))) + (Self.mathUtil.abs((row) - (targetRow)));
                node := Self.costArray[column][row];
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end;
        end;
        startNode := Self.costArray[start.getColumn()][start.getRow()];
        Self.openPriorityQueue.add(startNode);
        geographicMapInterface := TBasicGeographicMap(TJava.ToObject(Self.geographicMapInterface));
        basicGeographicMapCellPositionFactory_ := geographicMapInterface.getGeographicMapCellPositionFactory();
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        targetNode := Self.costArray[target.getColumn()][target.getRow()];
        
        repeat
            current := Self.openPriorityQueue.poll();
            Self.closedSet.add(current);
            if current.equals(targetNode) then begin
                Exit(Self.extractPath(start, current));
            end;
            
            
            
            for column := (current.geographicMapCellPosition.getColumn()) - (1) to (current.geographicMapCellPosition.getColumn()) + (2) - 1 do begin
                for row := (current.geographicMapCellPosition.getRow()) - (1) to (current.geographicMapCellPosition.getRow()) + (2) - 1 do begin
                    if (((((column) > (0)) and ((row) > (0))) and ((column) < (allBinaryTiledLayer_.getColumns()))) and ((row) < (allBinaryTiledLayer_.getRows()))) and (geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory_.getAt(column, row))) then begin
                        neighbor := Self.costArray[column][row];
                        if Self.closedSet.contains(neighbor) then begin
                            Continue;
                        end;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or (not (Self.openPriorityQueue.contains(neighbor))) then begin
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (Self.openPriorityQueue.contains(neighbor)) then begin
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then begin
                                    Self.openPriorityQueue.add(neighbor);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        until not (not (Self.openPriorityQueue.isEmpty()));
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TPathFinder.findPathStart(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState_: TMultipassState);
var
  discoveryCalculation: Int64;
  node: TPathFindingNodeCost;
  targetColumn: Integer;
  targetRow: Integer;
  sizeX: Integer;
  sizeY: Integer;
  row: Integer;
  column: Integer;
  startNode: TPathFindingNodeCost;
begin
        Self.openPriorityQueue.clear();
        Self.closedSet.clear();
        
        
        targetColumn := target.getColumn();
        targetRow := target.getRow();
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                discoveryCalculation := (Int64(Trunc(Self.mathUtil.abs((column) - (targetColumn))))) + (Self.mathUtil.abs((row) - (targetRow)));
                node := Self.costArray[column][row];
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end;
        end;
        startNode := Self.costArray[start.getColumn()][start.getRow()];
        Self.openPriorityQueue.add(startNode);
        Inc(multipassState_.step);
end;
    

// throws Exception
function TPathFinder.findPathEnd(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState_: TMultipassState): TBasicArrayList;
var
  geographicMapInterface: TBasicGeographicMap;
  basicGeographicMapCellPositionFactory_: TBasicGeographicMapCellPositionFactory;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  targetNode: TPathFindingNodeCost;
  current: TPathFindingNodeCost;
  total: Integer;
  neighbor: TPathFindingNodeCost;
  neighborInfo: TPathFindingNodeCostInfo;
  calculatedCost: Int64;
  row: Integer;
  column: Integer;
begin
        geographicMapInterface := TBasicGeographicMap(TJava.ToObject(Self.geographicMapInterface));
        basicGeographicMapCellPositionFactory_ := geographicMapInterface.getGeographicMapCellPositionFactory();
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        targetNode := Self.costArray[target.getColumn()][target.getRow()];
        
        total := 0;
        repeat
            current := Self.openPriorityQueue.poll();
            Self.closedSet.add(current);
            if current.equals(targetNode) then begin
                Exit(Self.extractPath(start, current));
            end;
            
            
            
            for column := (current.geographicMapCellPosition.getColumn()) - (1) to (current.geographicMapCellPosition.getColumn()) + (2) - 1 do begin
                for row := (current.geographicMapCellPosition.getRow()) - (1) to (current.geographicMapCellPosition.getRow()) + (2) - 1 do begin
                    if (((((column) > (0)) and ((row) > (0))) and ((column) < (allBinaryTiledLayer_.getColumns()))) and ((row) < (allBinaryTiledLayer_.getRows()))) and (geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory_.getAt(column, row))) then begin
                        neighbor := Self.costArray[column][row];
                        if Self.closedSet.contains(neighbor) then begin
                            Continue;
                        end;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or (not (Self.openPriorityQueue.contains(neighbor))) then begin
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (Self.openPriorityQueue.contains(neighbor)) then begin
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then begin
                                    Self.openPriorityQueue.add(neighbor);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            Inc(total);
            if (total) > (10) then begin
                Exit(Self.basicArrayListUtil.getImmutableInstance());
            end;
        until not (not (Self.openPriorityQueue.isEmpty()));
        raise SysUtils.Exception.Create('');
end;
    

function TPathFinder.extractPath(start: TGeographicMapCellPosition; current: TPathFindingNodeCost): TBasicArrayList;
var
  path: TBasicArrayList;
begin
        path := TBasicArrayListD.Create();
        while (current.parent) <> (TNullUtil.getInstance().NULL_OBJECT) do begin
            path.add(TJava.Box(current.geographicMapCellPosition));
            current := TPathFindingNodeCost(TJava.ToObject(current.parent));
        end;
        path.add(TJava.Box(start));
        Self.basicArrayListUtil.reverse(path);
        Exit(path);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

