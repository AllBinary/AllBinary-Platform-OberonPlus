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
// package org.allbinary.media.graphics.geography.pathfinding
unit PathFindingNodeCostInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, PathFindingNodeCostInfo, PathFindingNodeCostInfoFactoryBase;

type
  {AB:TYPES}
  TPathFindingNodeCostInfoFactory = class(TPathFindingNodeCostInfoFactoryBase)
  public
    pathFindingNodeCostInfoAdjacencyList: TArray<TArray<TPathFindingNodeCostInfo>>;
    procedure InitFields;
        constructor Create(max: Integer);
        procedure create_(geographicMapInterface: TBasicGeographicMap; goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64); override;
        function getInstance(goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64): TPathFindingNodeCostInfo; overload; virtual;
        function getInstance(goingToFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingNodeCostInfo; overload; virtual;
        function getTotalCost(geographicMapInterface: TBasicGeographicMap; comingFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): Int64; override;
  end;

implementation

{AB:CODE}

procedure TPathFindingNodeCostInfoFactory.InitFields;
begin
  
end;
    

constructor TPathFindingNodeCostInfoFactory.Create(max: Integer);
begin
    inherited Create;
    InitFields;
        Self.pathFindingNodeCostInfoAdjacencyList := TJava.NewArray2<TPathFindingNodeCostInfo>(max, max);
end;
    

// throws Exception
procedure TPathFindingNodeCostInfoFactory.create_(geographicMapInterface: TBasicGeographicMap; goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64);
begin
        Self.getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition_, costFromStart, costToEnd);
end;
    

// throws Exception
function TPathFindingNodeCostInfoFactory.getInstance(goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64): TPathFindingNodeCostInfo;
var
  pathFindingNodeCostInfo_: TPathFindingNodeCostInfo;
begin
        pathFindingNodeCostInfo_ := Self.getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition_);
        if (pathFindingNodeCostInfo_) = (nil) then begin
            pathFindingNodeCostInfo_ := TPathFindingNodeCostInfo.Create(costFromStart, costToEnd);
            pathFindingNodeCostInfo_.setCalculatedTotalCost();
            Self.pathFindingNodeCostInfoAdjacencyList[geographicMapCellPosition_.getId()][goingToGeographicMapCellPosition.getId()] := pathFindingNodeCostInfo_;
        end else begin
            pathFindingNodeCostInfo_.setCostFromStart(costFromStart);
            pathFindingNodeCostInfo_.setCostToEnd(costToEnd);
            pathFindingNodeCostInfo_.setCalculatedTotalCost();
        end;
        Exit(pathFindingNodeCostInfo_);
end;
    

function TPathFindingNodeCostInfoFactory.getInstance(goingToFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingNodeCostInfo;
begin
        Exit(Self.pathFindingNodeCostInfoAdjacencyList[geographicMapCellPosition_.getId()][goingToFromGeographicMapCellPosition.getId()]);
end;
    

function TPathFindingNodeCostInfoFactory.getTotalCost(geographicMapInterface: TBasicGeographicMap; comingFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): Int64;
begin
        Exit(Self.getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition_).totalCostP);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

