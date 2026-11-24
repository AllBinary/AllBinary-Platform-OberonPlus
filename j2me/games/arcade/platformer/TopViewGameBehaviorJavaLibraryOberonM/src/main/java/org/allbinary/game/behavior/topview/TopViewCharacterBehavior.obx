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
// package org.allbinary.game.behavior.topview
unit TopViewCharacterBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, AllBinaryLayer, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType;

type
  {AB:TYPES}
  TTopViewCharacterBehavior = class(TObject)
  public
    constructor Create;
        procedure terrainEvent(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        procedure terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer); virtual;
        function hasSolidBlock(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>): Boolean; virtual;
  end;

implementation
uses
  BasicTopViewGeographicMapCellTypeFactory;


{AB:CODE}

constructor TTopViewCharacterBehavior.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TTopViewCharacterBehavior.terrainEvent(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellPosition_: TGeographicMapCellPosition);
begin
end;
    

procedure TTopViewCharacterBehavior.terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer);
begin
end;
    

function TTopViewCharacterBehavior.hasSolidBlock(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>): Boolean;
var
  size: Integer;
  basicTopViewGeographicMapCellTypeFactory_: TBasicTopViewGeographicMapCellTypeFactory;
  index: Integer;
begin
        size := System.Length(geographicMapInterfaceArray);
        
        for index := 0 to size - 1 do begin
            basicTopViewGeographicMapCellTypeFactory_ := TBasicTopViewGeographicMapCellTypeFactory(TJava.ToObject(geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()));
            if basicTopViewGeographicMapCellTypeFactory_.BLOCK_CELL_TYPE.isType(geographicMapCellTypeArray[index]) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

