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
unit PathFindingNodeCostInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingNodeCostInfoData;

type
  {AB:TYPES}
  TPathFindingNodeCostInfo = class(TInterfacedObject, IComparable<TPathFindingNodeCostInfo>)
  public
    pathFindingNodeCostInfoData: TPathFindingNodeCostInfoData;
    costFromStartP: Int64;
    costToEndP: Int64;
    totalCostP: Int64;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(costFromStart: Int64; costToGoal: Int64);
        procedure setCostToEnd(costToEnd: Int64); virtual;
        procedure setTotalCost(totalCost: Int64); virtual;
        procedure setCalculatedTotalCost; virtual;
        procedure setCostFromStart(cost: Int64); virtual;
        procedure addCostFromStart(cost: Int64); virtual;
        function compareTo(pathFindingNodeCostInfo_: TPathFindingNodeCostInfo): Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels;


{AB:CODE}

procedure TPathFindingNodeCostInfo.InitFields;
begin
  Self.pathFindingNodeCostInfoData := TPathFindingNodeCostInfoData.getInstance();
  
  
  
end;

function TPathFindingNodeCostInfo.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPathFindingNodeCostInfo.Create(costFromStart: Int64; costToGoal: Int64);
begin
    inherited Create;
    InitFields;
        Self.costFromStartP := costFromStart;
        Self.costToEndP := costToGoal;
        Self.setCalculatedTotalCost();
end;
    

procedure TPathFindingNodeCostInfo.setCostToEnd(costToEnd: Int64);
begin
        Self.costToEndP := costToEnd;
end;
    

procedure TPathFindingNodeCostInfo.setTotalCost(totalCost: Int64);
begin
        Self.totalCostP := totalCost;
end;
    

// throws Exception
procedure TPathFindingNodeCostInfo.setCalculatedTotalCost;
begin
        Self.totalCostP := (Self.costFromStartP) + (Self.costToEndP);
        if (Self.totalCostP) > (Self.pathFindingNodeCostInfoData.MAX_NODE_COST) then begin
            raise SysUtils.Exception.Create('Max Cost Exceeded');
        end;
end;
    

procedure TPathFindingNodeCostInfo.setCostFromStart(cost: Int64);
begin
        Self.costFromStartP := cost;
end;
    

procedure TPathFindingNodeCostInfo.addCostFromStart(cost: Int64);
begin
        Self.costFromStartP := (Self.costFromStartP) + (cost);
end;
    

function TPathFindingNodeCostInfo.compareTo(pathFindingNodeCostInfo_: TPathFindingNodeCostInfo): Integer;
begin
        if (Self.totalCostP) < (pathFindingNodeCostInfo_.totalCostP) then begin
            Exit(-1);
        end else if (Self.totalCostP) > (pathFindingNodeCostInfo_.totalCostP) then begin
            Exit(1);
        end;
        Exit(0);
end;
    

function TPathFindingNodeCostInfo.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(TCommonLabels.getInstance().COLON_SEP);
        stringBuffer.append('CostFromStart: ');
        stringBuffer.appendlong(Self.costFromStartP);
        stringBuffer.append(' CostToEnd: ');
        stringBuffer.appendlong(Self.costToEndP);
        stringBuffer.append(' TotalCost: ');
        stringBuffer.appendlong(Self.totalCostP);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

