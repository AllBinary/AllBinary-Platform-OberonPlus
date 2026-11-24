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
unit PathFindingNodeCost;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonSeps, GeographicMapCellPosition, PathFindingNodeCostInfo, PathFindingNode;

type
  {AB:TYPES}
  TPathFindingNodeCost = class(TPathFindingNode, IComparable<TPathFindingNodeCost>)
  public
    commonSeps: TCommonSeps;
    pathFindingNodeCostInfoP: TPathFindingNodeCostInfo;
    class var NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY: TArray<TArray<TPathFindingNodeCost>>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(parent: TObject; geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingNodeCostInfo_: TPathFindingNodeCostInfo);
        function getPathFindingNodeCostInfo: TPathFindingNodeCostInfo; virtual;
        procedure setPathFindingNodeCostInfo(pathFindingNodeCostInfo_: TPathFindingNodeCostInfo); virtual;
        function compareTo(pathFindingNodeCost_: TPathFindingNodeCost): Integer; virtual;
        function toString: string; override;
  end;

implementation
uses
  StringMaker, CommonLabels;


{AB:CODE}

procedure TPathFindingNodeCost.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  
end;

function TPathFindingNodeCost.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPathFindingNodeCost.Create(parent: TObject; geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingNodeCostInfo_: TPathFindingNodeCostInfo);
begin
        inherited Create(parent, geographicMapCellPosition_);
        InitFields;
        Self.pathFindingNodeCostInfoP := pathFindingNodeCostInfo_;
        if (Self.geographicMapCellPosition) = (nil) then begin
            raise SysUtils.Exception.Create('No GeographicMapCellPosition');
        end;
        if (Self.getPathFindingNodeCostInfo()) = (nil) then begin
            raise SysUtils.Exception.Create('No PathFindingNodeCostInfo');
        end;
end;
    

function TPathFindingNodeCost.getPathFindingNodeCostInfo: TPathFindingNodeCostInfo;
begin
        Exit(Self.pathFindingNodeCostInfoP);
end;
    

procedure TPathFindingNodeCost.setPathFindingNodeCostInfo(pathFindingNodeCostInfo_: TPathFindingNodeCostInfo);
begin
        Self.pathFindingNodeCostInfoP := pathFindingNodeCostInfo_;
end;
    

function TPathFindingNodeCost.compareTo(pathFindingNodeCost_: TPathFindingNodeCost): Integer;
begin
        Exit(Self.pathFindingNodeCostInfoP.compareTo(pathFindingNodeCost_.pathFindingNodeCostInfoP));
end;
    

function TPathFindingNodeCost.toString: string;
var
  stringBuffer: TStringMaker;
  pathFindingNode_: TPathFindingNode;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(TCommonLabels.getInstance().COLON_SEP);
        stringBuffer.append(Self.getPathFindingNodeCostInfo().toString());
        stringBuffer.append(' Path: ');
        stringBuffer.append(Self.geographicMapCellPosition.toString());
        pathFindingNode_ := TPathFindingNode(TJava.ToObject(Self.parent));
        while (pathFindingNode_) <> (nil) do begin
            stringBuffer.append(pathFindingNode_.geographicMapCellPosition.toString());
            stringBuffer.append(Self.commonSeps.SPACE);
            pathFindingNode_ := TPathFindingNode(TJava.ToObject(pathFindingNode_.parent));
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TPathFindingNodeCost.NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY := TJava.NewArray2<TPathFindingNodeCost>(0, 0);
  {AB:END}

end.

