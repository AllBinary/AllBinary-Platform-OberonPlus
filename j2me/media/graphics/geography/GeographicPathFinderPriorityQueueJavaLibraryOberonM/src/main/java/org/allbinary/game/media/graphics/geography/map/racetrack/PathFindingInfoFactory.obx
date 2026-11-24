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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, BasePathFindingInfoFactory, PathFinder, PathFindingInfo;

type
  {AB:TYPES}
  // 1.4.2
  TPathFindingInfoFactory = class(TBasePathFindingInfoFactory)
  public
    pathFindingInfo: TPathFindingInfo;
    pathFinder: TPathFinder;
    class var instance: TPathFindingInfoFactory;
    class var MAX: Integer;
    procedure InitFields;
        class function getInstance: TPathFindingInfoFactory; static;
        class procedure initMax(max: Integer); static;
        constructor Create;
        function getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; mapArray: TArray<TArray<Integer>>): TPathFindingInfo; override;
        procedure init(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>); override;
        procedure buildPathFindingNodesForCellPosition(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>; cellPosition: TGeographicMapCellPosition);
        procedure buildPathFindingNodes(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>);
  end;

implementation
uses
  AllBinaryTiledLayer, BasicGeographicMapCellPositionFactory, RaceTrackRoadsGeographicMapCellHistoryFactory, PathFindingNodeCostInfoFactory, BasicArrayListS;


{AB:CODE}

procedure TPathFindingInfoFactory.InitFields;
begin
  
  
end;
    

class function TPathFindingInfoFactory.getInstance: TPathFindingInfoFactory;
begin
        Exit(TPathFindingInfoFactory.instance);
end;
    

class procedure TPathFindingInfoFactory.initMax(max: Integer);
begin
        TPathFindingInfoFactory.MAX := max;
end;
    

constructor TPathFindingInfoFactory.Create;
begin
    inherited Create;
    InitFields;
        Self.pathFindingInfo := TPathFindingInfo.Create(TPathFindingNodeCostInfoFactory.Create(TPathFindingInfoFactory.MAX), TBasicArrayListS.Create(1), TBasicArrayListS.Create(1));
        Self.pathFinder := TPathFinder.Create();
end;
    

// throws Exception
function TPathFindingInfoFactory.getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; mapArray: TArray<TArray<Integer>>): TPathFindingInfo;
var
  pathFindingInfo_: TPathFindingInfo;
begin
        pathFindingInfo_ := TPathFindingInfo.Create(Self.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), TBasicArrayListS.Create(1), TBasicArrayListS.Create(1));
        TRaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init();
        Self.init(geographicMapInterface, pathFindingInfo_, mapArray);
        Self.pathFinder.init(geographicMapInterface);
        pathFindingInfo_.setPathFinder(Self.pathFinder);
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
begin
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
  TPathFindingInfoFactory.instance := TPathFindingInfoFactory.Create();
  TPathFindingInfoFactory.MAX := 32768;
  {AB:END}

end.

