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
unit GeographicMapInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, BasicColor, ABLayer, GeographicMapCellPosition, GeographicMapCellType, BasicGeographicMapCellPositionFactory, GeographicMapCellPositionFactoryInterface;

type
  {AB:TYPES}
  IGeographicMapInterface = interface(IJavaObject) ['IGeographicMapInterface']
        function getId: Integer;
        function getName: string;
        procedure reset;
        function getAllBinaryTiledLayer: TAllBinaryTiledLayer;
        function getCellPositionsAt(layer: TABLayer; currentCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>; cellPositionArray: TArray<TArray<TGeographicMapCellPosition>>): Boolean;
        function getCellPositionAtXY(x: Integer; y: Integer): TGeographicMapCellPosition;
        function getCellPositionAtXYNoThrow(x: Integer; y: Integer): TGeographicMapCellPosition;
        function getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer;
        function getCellTypeAtXY(x: Integer; y: Integer): TGeographicMapCellType;
        function getCellTypeAt(geographicMapCellPosition_: TGeographicMapCellPosition): TGeographicMapCellType;
        function getGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
        function getGeographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
        function getForegroundBasicColor: TBasicColor;
        function getBackgroundBasicColor: TBasicColor;
  end;
  TGeographicMapInterface = IGeographicMapInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

