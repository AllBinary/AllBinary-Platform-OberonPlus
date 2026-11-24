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
unit CachingGeographicMapCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, BasicGeographicMapCellPositionFactory;

type
  {AB:TYPES}
  TCachingGeographicMapCellPositionFactory = class(TBasicGeographicMapCellPositionFactory)
  public
        constructor Create(geographicMapInterface: TBasicGeographicMap);
        function createInstance(i_column: Integer; i_row: Integer; width: Integer; height: Integer): TGeographicMapCellPosition; override;
  end;

implementation
uses
  GeographicMapCellPositionFactory, CellPosition, ABHashtable;


{AB:CODE}
    

constructor TCachingGeographicMapCellPositionFactory.Create(geographicMapInterface: TBasicGeographicMap);
begin
        inherited Create(geographicMapInterface);
end;
    

// throws Exception
function TCachingGeographicMapCellPositionFactory.createInstance(i_column: Integer; i_row: Integer; width: Integer; height: Integer): TGeographicMapCellPosition;
var
  hashtable: TABHashtable<TObject, TObject>;
  cellPositionKey: string;
  cellPositionCanBeNull: TObject;
begin
        hashtable := TGeographicMapCellPositionFactory.getHashtable();
        cellPositionKey := TCellPosition.toStringColRow(i_column, i_row);
        cellPositionCanBeNull := TJava.Box(hashtable.get(TJava.Box(cellPositionKey)));
        if (cellPositionCanBeNull) = (nil) then begin
            cellPositionCanBeNull := TJava.Box(Self.geographicMapCellPositionFactoryInterface.getInstance(Self.geographicMapInterface, i_column, i_row, Self.getColumns(), Self.getRows(), width, height));
            Self.geographicMapCellPositionArray[i_row][i_column] := TGeographicMapCellPosition(TJava.ToObject(cellPositionCanBeNull));
            hashtable.put(TJava.Box(cellPositionKey), TJava.Box(cellPositionCanBeNull));
        end;
        Exit(TGeographicMapCellPosition(TJava.ToObject(cellPositionCanBeNull)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

