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
unit SimplePathFinderGraphVisitorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, PathFinderGraphVisitorFactoryBase, PathFinderGraphVisitorBase;

type
  {AB:TYPES}
  TSimplePathFinderGraphVisitorFactory = class(TPathFinderGraphVisitorFactoryBase)
  public
    edgeMinimum: Integer;
    minPathWeight: Integer;
    maxPathWeight: Integer;
    procedure InitFields;
        constructor Create(edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
        function getInstance(geographicMapInterface: TBasicGeographicMap): TPathFinderGraphVisitorBase; virtual;
  end;

implementation
uses
  BasePathFinderGraphVisitor;


{AB:CODE}

procedure TSimplePathFinderGraphVisitorFactory.InitFields;
begin
  
  
  
end;
    

constructor TSimplePathFinderGraphVisitorFactory.Create(edgeMinimum: Integer; minPathWeight: Integer; maxPathWeight: Integer);
begin
    inherited Create;
    InitFields;
        Self.edgeMinimum := edgeMinimum;
        Self.minPathWeight := minPathWeight;
        Self.maxPathWeight := maxPathWeight;
end;
    

function TSimplePathFinderGraphVisitorFactory.getInstance(geographicMapInterface: TBasicGeographicMap): TPathFinderGraphVisitorBase;
begin
        Exit(TBasePathFinderGraphVisitor.Create(geographicMapInterface, Self.edgeMinimum, Self.minPathWeight, Self.maxPathWeight));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

