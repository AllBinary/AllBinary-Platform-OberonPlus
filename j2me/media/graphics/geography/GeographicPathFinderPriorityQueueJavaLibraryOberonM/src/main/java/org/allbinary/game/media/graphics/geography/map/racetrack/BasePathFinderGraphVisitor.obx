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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, PathFinderGraphVisitorBase, BasicArrayList;

type
  {AB:TYPES}
  // 1.4.2
  TBasePathFinderGraphVisitor = class(TPathFinderGraphVisitorBase)
  public
    geographicMapInterface: TBasicGeographicMap;
    edgeMinimum: Integer;
    minPathWeight: Integer;
    maxPathWeight: Integer;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
        procedure visit(graph: TObject; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList); override;
        procedure fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList); override;
        function isValid(graphPath: TObject): Boolean; override;
        function getInvalidReason(graphPath: TObject): string; override;
  end;

implementation
uses
  StringUtil, PathFindingNode;


{AB:CODE}

procedure TBasePathFinderGraphVisitor.InitFields;
begin
  
  
  
  
end;
    

constructor TBasePathFinderGraphVisitor.Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
begin
    inherited Create;
    InitFields;
        Self.geographicMapInterface := geographicMapInterface;
        Self.edgeMinimum := edgeMinimum;
        Self.minPathWeight := minPathWeight;
        Self.maxPathWeight := maxPathWeight;
end;
    

// throws Exception
procedure TBasePathFinderGraphVisitor.visit(graph: TObject; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
begin
end;
    

// throws Exception
procedure TBasePathFinderGraphVisitor.fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList);
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
    

function TBasePathFinderGraphVisitor.isValid(graphPath: TObject): Boolean;
begin
        Exit(False);
end;
    

function TBasePathFinderGraphVisitor.getInvalidReason(graphPath: TObject): string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

