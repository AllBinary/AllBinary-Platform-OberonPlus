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
unit BasePathFinderGraphVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GraphPath, SimpleWeightedGraph, BasicGeographicMap, PathFinderGraphVisitorBase, BasicArrayList;

type
  {AB:TYPES}
  TBasePathFinderGraphVisitor<V, E> = class(TPathFinderGraphVisitorBase)
  public
    geographicMapInterface: TBasicGeographicMap;
    edgeMinimum: Integer;
    minPathWeight: Integer;
    maxPathWeight: Integer;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
        procedure visit(graph: TSimpleWeightedGraph; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList); virtual;
        procedure fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList); virtual;
        function isValid(graphPath_: TGraphPath): Boolean; virtual;
        function getInvalidReason(graphPath_: TGraphPath): string; virtual;
  end;

implementation
uses
  StringMaker, PathFindingNode;


{AB:CODE}

procedure TBasePathFinderGraphVisitor<V, E>.InitFields;
begin
  
  
  
  
end;
    

constructor TBasePathFinderGraphVisitor<V, E>.Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
begin
    inherited Create;
    InitFields;
        Self.geographicMapInterface := geographicMapInterface;
        Self.edgeMinimum := edgeMinimum;
        Self.minPathWeight := minPathWeight;
        Self.maxPathWeight := maxPathWeight;
end;
    

// throws Exception
procedure TBasePathFinderGraphVisitor<V, E>.visit(graph: TSimpleWeightedGraph; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
begin
end;
    

// throws Exception
procedure TBasePathFinderGraphVisitor<V, E>.fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList);
var
  startPathFindingNode: TPathFindingNode;
  index: Integer;
begin
        for index := (startPathFindingNodeList.size()) - (1) downto 0 do begin
            startPathFindingNode := TPathFindingNode(TJava.ToObject(startPathFindingNodeList.get(index)));
            pathList.remove(startPathFindingNode.geographicMapCellPosition);
            pathList.addAt(0, TJava.Box(startPathFindingNode.geographicMapCellPosition));
        end;
end;
    

function TBasePathFinderGraphVisitor<V, E>.isValid(graphPath_: TGraphPath): Boolean;
begin
        if (((graphPath_.getEdgeList().size()) > (Self.edgeMinimum)) and ((graphPath_.getWeight()) < (Self.maxPathWeight))) and ((graphPath_.getWeight()) > (Self.minPathWeight)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TBasePathFinderGraphVisitor<V, E>.getInvalidReason(graphPath_: TGraphPath): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if (graphPath_.getEdgeList().size()) < (Self.edgeMinimum) then begin
            stringBuffer.append('Ignoring Small: ' + IntToStr(graphPath_.getEdgeList().size()));
        end;
        if (graphPath_.getWeight()) <= (Self.minPathWeight) then begin
            stringBuffer.append(' Low Weighted Path: ' + TJava.ToString(graphPath_.getWeight()));
        end;
        if (graphPath_.getWeight()) >= (Self.maxPathWeight) then begin
            stringBuffer.append(' To High Weighted Path: ' + TJava.ToString(graphPath_.getWeight()));
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

