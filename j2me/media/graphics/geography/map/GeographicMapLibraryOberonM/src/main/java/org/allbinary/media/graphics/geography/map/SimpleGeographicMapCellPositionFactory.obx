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
// package org.allbinary.media.graphics.geography.map
unit SimpleGeographicMapCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition, BasicGeographicMap, GeographicMapCellPositionFactoryInterface;

type
  {AB:TYPES}
  TSimpleGeographicMapCellPositionFactory = class(TInterfacedObject, IGeographicMapCellPositionFactoryInterface)
  public
    class var NULL_GEOGRAPHIC_MAP_CELL_POSITION: TGeographicMapCellPosition;
    function JavaObject: TObject;
    constructor Create;
        function getInstance(geographicMapInterface: TBasicGeographicMap; i_column: Integer; i_row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer): TGeographicMapCellPosition; virtual;
  end;

implementation

{AB:CODE}

function TSimpleGeographicMapCellPositionFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TSimpleGeographicMapCellPositionFactory.Create;
begin
  inherited Create;
end;
    

function TSimpleGeographicMapCellPositionFactory.getInstance(geographicMapInterface: TBasicGeographicMap; i_column: Integer; i_row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer): TGeographicMapCellPosition;
begin
        Exit(TGeographicMapCellPosition.Create(i_column, i_row, columns, rows, width, height));
end;

initialization
  {AB:INITIALIZATION}
  TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION := TGeographicMapCellPosition.Create(-1, -1, -1, -1, -1, -1);
  {AB:END}

end.

