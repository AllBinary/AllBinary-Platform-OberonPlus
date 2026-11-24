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
unit PathFindingInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, BasePathFindingInfoFactory, BasicGeographicMapGraph, BasicGeographicMapPathFinder, PathFinderGraphVisitorFactoryBase, PathFindingInfo;

type
  {AB:TYPES}
  TPathFindingInfoFactory = class(TBasePathFindingInfoFactory)
  public
    MAX_DIRECTIONS: Integer;
    pathFindingInfo: TPathFindingInfo;
    basicGeographicMapGraph: TBasicGeographicMapGraph;
    basicGeographicMapPathFinder: TBasicGeographicMapPathFinder;
    pathFinderGraphVisitorFactoryInterface: TPathFinderGraphVisitorFactoryBase;
    class var instance: TPathFindingInfoFactory;
    procedure InitFields;
        class function getInstance: TPathFindingInfoFactory; static;
        class procedure initMax(max: Integer); static;
        constructor Create(pathFinderGraphVisitorFactoryInterface: TPathFinderGraphVisitorFactoryBase; max: Integer);
        function getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; mapArray: TArray<TArray<Integer>>): TPathFindingInfo; override;
        procedure init(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>); virtual;
        procedure buildPathFindingNodesForCellPosition(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>; cellPosition: TGeographicMapCellPosition);
        procedure buildPathFindingNodes(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>);
  end;

implementation
uses
  SimplePathFinderGraphVisitorFactory, CommonStrings, PreLogUtil, AllBinaryTiledLayer, BasicGeographicMapCellPositionFactory, BasicGeographicMapUtil, GeographicMapCellType, GeographicMapCellTypeFactory, RaceTrackGeographicMapCellType, RaceTrackRoadsGeographicMapCellHistoryFactory, PathFindingNodeCostInfoFactoryBase, PathFindingNodeCostInfoFactory, BasicArrayListS;


{AB:CODE}

procedure TPathFindingInfoFactory.InitFields;
begin
  Self.MAX_DIRECTIONS := 4;
  
  
  
  
end;
    

class function TPathFindingInfoFactory.getInstance: TPathFindingInfoFactory;
begin
        Exit(TPathFindingInfoFactory.instance);
end;
    

class procedure TPathFindingInfoFactory.initMax(max: Integer);
begin
        TPathFindingInfoFactory.instance := TPathFindingInfoFactory.Create(TSimplePathFinderGraphVisitorFactory.Create(1, 1, High(Integer)), max);
end;
    

constructor TPathFindingInfoFactory.Create(pathFinderGraphVisitorFactoryInterface: TPathFinderGraphVisitorFactoryBase; max: Integer);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        TPreLogUtil.put('Using Dynamic Path Finding', TJava.Box(Self), commonStrings_.GET_INSTANCE);
        Self.basicGeographicMapPathFinder := TBasicGeographicMapPathFinder.Create(max);
        Self.pathFindingInfo := TPathFindingInfo.Create(TPathFindingNodeCostInfoFactory.Create(max), TBasicArrayListS.Create(1), TBasicArrayListS.Create(1));
        Self.basicGeographicMapGraph := TBasicGeographicMapGraph.Create(TPathFindingNodeCostInfoFactory(TJava.ToObject(Self.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface())));
        Self.pathFinderGraphVisitorFactoryInterface := pathFinderGraphVisitorFactoryInterface;
end;
    

// throws Exception
function TPathFindingInfoFactory.getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; mapArray: TArray<TArray<Integer>>): TPathFindingInfo;
var
  pathFindingInfo_: TPathFindingInfo;
begin
        pathFindingInfo_ := TPathFindingInfo.Create(Self.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), TBasicArrayListS.Create(1), TBasicArrayListS.Create(1));
        TRaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init();
        Self.init(geographicMapInterface, pathFindingInfo_, mapArray);
        Self.basicGeographicMapPathFinder.init(geographicMapInterface, Self.basicGeographicMapGraph, Self.pathFinderGraphVisitorFactoryInterface.getInstance(geographicMapInterface));
        pathFindingInfo_.setPathFinder(Self.basicGeographicMapPathFinder);
        Exit(pathFindingInfo_);
end;
    

// throws Exception
procedure TPathFindingInfoFactory.init(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>);
begin
        inherited init(geographicMapInterface, pathFindingInfo_, mapArray);
        Self.buildPathFindingNodes(geographicMapInterface, pathFindingInfo_, mapArray);
end;
    

// throws Exception
procedure TPathFindingInfoFactory.buildPathFindingNodesForCellPosition(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>; cellPosition: TGeographicMapCellPosition);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  cellTypeId: Integer;
  geographicMapCellType_: TGeographicMapCellType;
  raceTrackGeographicMapCellType_: TRaceTrackGeographicMapCellType;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  pathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase;
  basicGeographicMapUtil_: TBasicGeographicMapUtil;
  row: Integer;
  column: Integer;
  goingToGeographicMapCellPosition: TGeographicMapCellPosition;
  costFromStart: Integer;
  costToEnd: Integer;
  index: Integer;
begin
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        cellTypeId := mapArray[cellPosition.getRow()][cellPosition.getColumn()];
        geographicMapCellType_ := TGeographicMapCellTypeFactory.getInstance().get(geographicMapInterface.getCellTypeFromMapCellTypeInt(cellTypeId));
        raceTrackGeographicMapCellType_ := TRaceTrackGeographicMapCellType(TJava.ToObject(geographicMapCellType_));
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        pathFindingNodeCostInfoFactoryInterface := pathFindingInfo_.getPathFindingNodeCostInfoFactoryInterface();
        basicGeographicMapUtil_ := TBasicGeographicMapUtil.getInstance();
        
        
        
        
        
        for index := 0 to Self.MAX_DIRECTIONS - 1 do begin
            row := basicGeographicMapUtil_.getBorderingRow(index, cellPosition);
            column := basicGeographicMapUtil_.getBorderingColumn(index, cellPosition);
            if ((((row) < (allBinaryTiledLayer_.getRows())) and ((column) < (allBinaryTiledLayer_.getColumns()))) and ((row) >= (0))) and ((column) >= (0)) then begin
                goingToGeographicMapCellPosition := geographicMapCellPositionFactory.getAt(column, row);
                costFromStart := raceTrackGeographicMapCellType_.getTravelCost();
                costToEnd := costFromStart;
                pathFindingNodeCostInfoFactoryInterface.create_(geographicMapInterface, goingToGeographicMapCellPosition, cellPosition, costFromStart, costToEnd);
            end;
        end;
end;
    

// throws Exception
procedure TPathFindingInfoFactory.buildPathFindingNodes(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>);
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  totalColumns: Integer;
  totalRows: Integer;
  row: Integer;
  column: Integer;
begin
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        totalColumns := allBinaryTiledLayer_.getColumns();
        totalRows := allBinaryTiledLayer_.getRows();
        for column := 0 to totalColumns - 1 do begin
            for row := 0 to totalRows - 1 do begin
                Self.buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo_, mapArray, geographicMapCellPositionFactory.getAt(column, row));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

