{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map
unit MultiGeographicMapBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition, GeographicMapCellType, BasicGeographicMap;

type
  {AB:TYPES}
  TMultiGeographicMapBehavior = class(TObject)
  public
    constructor Create;
        function getCellTypeAt(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition): TArray<TGeographicMapCellType>; virtual;
  end;

implementation

{AB:CODE}

constructor TMultiGeographicMapBehavior.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TMultiGeographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition): TArray<TGeographicMapCellType>;
var
  size: Integer;
  cellType: TGeographicMapCellType;
  index: Integer;
begin
        size := System.Length(geographicMapInterfaceArray);
        cellType := TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            cellType := geographicMapInterfaceArray[index].getCellTypeAt(geographicMapCellPosition_);
            geographicMapCellTypeArray[index] := cellType;
        end;
        Exit(geographicMapCellTypeArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

