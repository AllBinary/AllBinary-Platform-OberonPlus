{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.geological.resources
unit GeologicalGeographicMapCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellPositionFactoryInterface;

type
  {AB:TYPES}
  TGeologicalGeographicMapCellPositionFactory = class(TInterfacedObject, IGeographicMapCellPositionFactoryInterface)
  public
    resourcePerMapCellType: TArray<Integer>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(resourcePerMapCellType: TArray<Integer>);
        function getInstance(geographicMapInterface: TBasicGeographicMap; i_column: Integer; i_row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer): TGeographicMapCellPosition; virtual;
  end;

implementation
uses
  GeologicalGeographicMapCellPosition, GeologicalResource, AllBinaryTiledLayer, MyRandomFactory;


{AB:CODE}

procedure TGeologicalGeographicMapCellPositionFactory.InitFields;
begin
  
end;

function TGeologicalGeographicMapCellPositionFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGeologicalGeographicMapCellPositionFactory.Create(resourcePerMapCellType: TArray<Integer>);
begin
    inherited Create;
    InitFields;
        Self.resourcePerMapCellType := resourcePerMapCellType;
end;
    

// throws Exception
function TGeologicalGeographicMapCellPositionFactory.getInstance(geographicMapInterface: TBasicGeographicMap; i_column: Integer; i_row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer): TGeographicMapCellPosition;
var
  tiledLayer: TAllBinaryTiledLayer;
  resources: Integer;
begin
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        resources := (Self.resourcePerMapCellType[tiledLayer.getCell(i_column, i_row)]) + (TMyRandomFactory.getInstance().getAbsoluteNextInt(1000));
        Exit(TGeologicalGeographicMapCellPosition.Create(i_column, i_row, columns, rows, width, height, TGeologicalResource.Create(resources)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

