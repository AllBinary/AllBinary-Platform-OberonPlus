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
// package org.allbinary.game.layer.geological.resources
unit GeologicalGeographicMapCellPositionFactoryInitVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, GeographicMapCellPosition, GeographicMapCellPositionFactoryInitVisitorInterface;

type
  {AB:TYPES}
  TGeologicalGeographicMapCellPositionFactoryInitVisitor = class(TInterfacedObject, IGeographicMapCellPositionFactoryInitVisitorInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure visit(tiledLayer: TAllBinaryTiledLayer; cellPosition: TGeographicMapCellPosition); virtual;
  end;

implementation
uses
  GeologicalGeographicMapCellPosition;


{AB:CODE}

function TGeologicalGeographicMapCellPositionFactoryInitVisitor.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TGeologicalGeographicMapCellPositionFactoryInitVisitor.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TGeologicalGeographicMapCellPositionFactoryInitVisitor.visit(tiledLayer: TAllBinaryTiledLayer; cellPosition: TGeographicMapCellPosition);
var
  geologicalGeographicMapCellPosition_: TGeologicalGeographicMapCellPosition;
begin
        geologicalGeographicMapCellPosition_ := (TGeologicalGeographicMapCellPosition(TJava.ToObject(cellPosition)));
        geologicalGeographicMapCellPosition_.getGeologicalResource().init();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

