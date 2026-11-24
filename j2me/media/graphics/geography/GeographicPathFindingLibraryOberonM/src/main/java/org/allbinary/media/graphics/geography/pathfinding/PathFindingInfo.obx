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
unit PathFindingInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GeographicPathFinderBase, PathFindingNodeCostInfoFactoryBase, PathFindingNode, PathFindingInfoInterface;

type
  {AB:TYPES}
  TPathFindingInfo = class(TInterfacedObject, IPathFindingInfoInterface)
  public
    pathFinder: TGeographicPathFinderBase;
    startPathFindingNodeList: TBasicArrayList;
    endPathFindingNodeList: TBasicArrayList;
    pathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase;
    class var NULL_PATH_FINDING_INFO: TPathFindingInfo;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(pathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
        function getStartPathFindingNodeList: TBasicArrayList; virtual;
        function getEndPathFindingNodeList: TBasicArrayList; virtual;
        function getPathFinder: TGeographicPathFinderBase; virtual;
        procedure addStartPathFindingNode(startPathFindingNode: TPathFindingNode); virtual;
        procedure addEndPathFindingNode(endPathFindingNode: TPathFindingNode); virtual;
        procedure setPathFinder(pathFinder: TGeographicPathFinderBase); virtual;
        function getPathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase; virtual;
  end;

implementation
uses
  BasicArrayListUtil;


{AB:CODE}

procedure TPathFindingInfo.InitFields;
begin
  Self.pathFinder := TGeographicPathFinderBase.NULL_GEOGRAPHIC_PATH_FINDER_BASE;
  
  
  
end;

function TPathFindingInfo.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPathFindingInfo.Create(pathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.pathFindingNodeCostInfoFactoryInterface := pathFindingNodeCostInfoFactoryInterface;
        Self.startPathFindingNodeList := startPathFindingNodeList;
        Self.endPathFindingNodeList := endPathFindingNodeList;
end;
    

function TPathFindingInfo.getStartPathFindingNodeList: TBasicArrayList;
begin
        Exit(Self.startPathFindingNodeList);
end;
    

function TPathFindingInfo.getEndPathFindingNodeList: TBasicArrayList;
begin
        Exit(Self.endPathFindingNodeList);
end;
    

function TPathFindingInfo.getPathFinder: TGeographicPathFinderBase;
begin
        Exit(Self.pathFinder);
end;
    

procedure TPathFindingInfo.addStartPathFindingNode(startPathFindingNode: TPathFindingNode);
begin
        Self.startPathFindingNodeList.add(TJava.Box(startPathFindingNode));
end;
    

procedure TPathFindingInfo.addEndPathFindingNode(endPathFindingNode: TPathFindingNode);
begin
        Self.endPathFindingNodeList.add(TJava.Box(endPathFindingNode));
end;
    

procedure TPathFindingInfo.setPathFinder(pathFinder: TGeographicPathFinderBase);
begin
        Self.pathFinder := pathFinder;
end;
    

function TPathFindingInfo.getPathFindingNodeCostInfoFactoryInterface: TPathFindingNodeCostInfoFactoryBase;
begin
        Exit(Self.pathFindingNodeCostInfoFactoryInterface);
end;

initialization
  {AB:INITIALIZATION}
  TPathFindingInfo.NULL_PATH_FINDING_INFO := TPathFindingInfo.Create(TPathFindingNodeCostInfoFactoryBase.NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE, TBasicArrayListUtil.getInstance().getImmutableInstance(), TBasicArrayListUtil.getInstance().getImmutableInstance());
  {AB:END}

end.

