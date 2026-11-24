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
unit PathFinderGraphHackVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicGeographicMap, BasePathFinderGraphVisitor;

type
  {AB:TYPES}
  // 1.4.2
  TPathFinderGraphHackVisitor = class(TBasePathFinderGraphVisitor)
  public
        constructor Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
        procedure visit(graph: TObject; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList); override;
        procedure fixStart(graph: TObject; startPathFindingNodeList: TBasicArrayList);
        procedure fixEnd(graph: TObject; endPathFindingNodeList: TBasicArrayList);
        procedure fixOverPassEdges(graph: TObject);
        procedure fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList); override;
        procedure removeOverPassEdges(pathList: TBasicArrayList);
        function isValid(graphPath: TObject): Boolean; override;
  end;

implementation

{AB:CODE}
    

constructor TPathFinderGraphHackVisitor.Create(geographicMapInterface: TBasicGeographicMap; edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
begin
        inherited Create(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.visit(graph: TObject; startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList);
begin
        Self.fixStart(graph, startPathFindingNodeList);
        Self.fixEnd(graph, endPathFindingNodeList);
        Self.fixOverPassEdges(graph);
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.fixStart(graph: TObject; startPathFindingNodeList: TBasicArrayList);
begin
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.fixEnd(graph: TObject; endPathFindingNodeList: TBasicArrayList);
begin
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.fixOverPassEdges(graph: TObject);
begin
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.fixPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; pathList: TBasicArrayList);
begin
end;
    

// throws Exception
procedure TPathFinderGraphHackVisitor.removeOverPassEdges(pathList: TBasicArrayList);
begin
end;
    

function TPathFinderGraphHackVisitor.isValid(graphPath: TObject): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

