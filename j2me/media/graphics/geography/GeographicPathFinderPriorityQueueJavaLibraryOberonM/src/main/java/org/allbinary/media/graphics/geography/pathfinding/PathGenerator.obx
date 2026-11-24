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
unit PathGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellHistory, BasicArrayList, PathFindingInfo, MultipassState, PathGeneratorInterface;

type
  {AB:TYPES}
  TPathGenerator = class(TInterfacedObject, IPathGeneratorInterface)
  public
    class var SINGLETON: TPathGenerator;
    function JavaObject: TObject;
        class function getInstance: TPathGenerator; static;
        constructor Create;
        procedure init(geographicMapInterface: TObject; totalPaths: Integer); virtual;
        function getInstanceNoCache(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList; virtual;
        function createList(geographicMapInterface: TBasicGeographicMap; geographicMapCellHistory_: TGeographicMapCellHistory; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList; virtual;
        function create_(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList;
        function createN(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer; multipassState_: TMultipassState): TBasicArrayList; virtual;
        function isValid(pathList: TBasicArrayList; geographicMapCellHistory_: TGeographicMapCellHistory): Boolean;
  end;

implementation
uses
  GeographicPathFinderBase;


{AB:CODE}

function TPathGenerator.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TPathGenerator.getInstance: TPathGenerator;
begin
        Exit(TPathGenerator.SINGLETON);
end;
    

constructor TPathGenerator.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TPathGenerator.init(geographicMapInterface: TObject; totalPaths: Integer);
begin
end;
    

// throws Exception
function TPathGenerator.getInstanceNoCache(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList;
var
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
begin
        geographicMapCellPositionBasicArrayList := Self.create_(geographicMapInterface, pathFindingInfo_, totalPaths);
        Exit(geographicMapCellPositionBasicArrayList);
end;
    

// throws Exception
function TPathGenerator.createList(geographicMapInterface: TBasicGeographicMap; geographicMapCellHistory_: TGeographicMapCellHistory; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TPathGenerator.create_(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList;
var
  startPathFindingNodeList: TBasicArrayList;
  endPathFindingNodeList: TBasicArrayList;
  geographicPathFinderInterface: TGeographicPathFinderBase;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
begin
        startPathFindingNodeList := pathFindingInfo_.getStartPathFindingNodeList();
        endPathFindingNodeList := pathFindingInfo_.getEndPathFindingNodeList();
        geographicPathFinderInterface := pathFindingInfo_.getPathFinder();
        geographicMapCellPositionBasicArrayList := geographicPathFinderInterface.searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths);
        Exit(geographicMapCellPositionBasicArrayList);
end;
    

// throws Exception
function TPathGenerator.createN(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer; multipassState_: TMultipassState): TBasicArrayList;
var
  startPathFindingNodeList: TBasicArrayList;
  endPathFindingNodeList: TBasicArrayList;
  geographicPathFinderInterface: TGeographicPathFinderBase;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
begin
        startPathFindingNodeList := pathFindingInfo_.getStartPathFindingNodeList();
        endPathFindingNodeList := pathFindingInfo_.getEndPathFindingNodeList();
        geographicPathFinderInterface := pathFindingInfo_.getPathFinder();
        geographicMapCellPositionBasicArrayList := geographicPathFinderInterface.searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState_);
        Exit(geographicMapCellPositionBasicArrayList);
end;
    

// throws Exception
function TPathGenerator.isValid(pathList: TBasicArrayList; geographicMapCellHistory_: TGeographicMapCellHistory): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TPathGenerator.SINGLETON := TPathGenerator.Create();
  {AB:END}

end.

