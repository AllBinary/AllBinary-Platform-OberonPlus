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
// package org.allbinary.media.graphics.geography.map.topview
unit BasicTopViewGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellType, GeographicMapCellTypeFactory, ABHashtable, BasicTopViewGeographicMapCellType;

type
  {AB:TYPES}
  TBasicTopViewGeographicMapCellTypeFactory = class(TGeographicMapCellTypeFactory)
  public
    BLOCK_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    OFF_MAP_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    FLOOR_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    DOOR_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    STAIRS_UP_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    STAIRS_DOWN_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    OTHER_CELL_TYPE: TBasicTopViewGeographicMapCellType;
    maxTileId: Integer;
    procedure InitFields;
        constructor Create(tileTypeToTileIdsMap: TABHashtable<TObject, TObject>; maxTileId: Integer);
        function getStartType: Integer; override;
        function getEndType: Integer; override;
        function getEmptyType: Integer; override;
        function isPath(cellType: TGeographicMapCellType): Boolean; override;
        function toString: string; override;
  end;

implementation
uses
  BasicTopViewGeographicMapStrings, CommonStrings, StringMaker, RaceTrackGeographicMapCellType, BasicArrayList, HashtableUtil;


{AB:CODE}

procedure TBasicTopViewGeographicMapCellTypeFactory.InitFields;
begin
  
  
  
  
  
  
  
  
end;
    

constructor TBasicTopViewGeographicMapCellTypeFactory.Create(tileTypeToTileIdsMap: TABHashtable<TObject, TObject>; maxTileId: Integer);
var
  commonStrings_: TCommonStrings;
  basicTopViewGeographicMapStrings_: TBasicTopViewGeographicMapStrings;
  geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory;
  geographicMapCellTypeArray: TArray<TGeographicMapCellType>;
  type_: Integer;
  BLOCK_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  OFF_MAP_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  FLOOR_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  DOOR_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  STAIRS_UP_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  STAIRS_DOWN_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  OTHER_CELL_TYPE: TBasicTopViewGeographicMapCellType;
  keyArray: TArray<TObject>;
  size: Integer;
  idsWithTypeList: TBasicArrayList;
  key: string;
  basicPlatormGeographicMapCellType: TBasicTopViewGeographicMapCellType;
  index: Integer;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        Self.maxTileId := maxTileId;
        basicTopViewGeographicMapStrings_ := TBasicTopViewGeographicMapStrings.getInstance();
        geographicMapCellTypeFactory_ := TGeographicMapCellTypeFactory.getInstance();
        geographicMapCellTypeArray := geographicMapCellTypeFactory_.getGeographicMapCellTypeArray();
        type_ := 0;
        if (geographicMapCellTypeArray[type_]) = (nil) then begin
            TRaceTrackGeographicMapCellType.Create(TCommonStrings.getInstance().UNKNOWN, type_, 999, 0);
        end else begin
        end;
        BLOCK_CELL_TYPE := TBasicTopViewGeographicMapCellType.createType(basicTopViewGeographicMapStrings_.DEFAULT, 1, 1);
        OFF_MAP_CELL_TYPE := BLOCK_CELL_TYPE;
        FLOOR_CELL_TYPE := BLOCK_CELL_TYPE;
        DOOR_CELL_TYPE := BLOCK_CELL_TYPE;
        STAIRS_UP_CELL_TYPE := BLOCK_CELL_TYPE;
        STAIRS_DOWN_CELL_TYPE := BLOCK_CELL_TYPE;
        OTHER_CELL_TYPE := BLOCK_CELL_TYPE;
        keyArray := THashtableUtil.getInstance().getKeysAsArray(tileTypeToTileIdsMap);
        size := System.Length(keyArray);
        
        
        
        for index := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyArray[index]));
            idsWithTypeList := TBasicArrayList(TJava.ToObject(tileTypeToTileIdsMap.get(TJava.Box(key))));
            if (key = basicTopViewGeographicMapStrings_.WALL) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.WALL, idsWithTypeList, 1000);
                BLOCK_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.OFF_MAP) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.OFF_MAP, idsWithTypeList, 1001);
                OFF_MAP_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.FLOOR) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.FLOOR, idsWithTypeList, 1);
                FLOOR_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.DOOR) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.DOOR, idsWithTypeList, 1);
                DOOR_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.STAIRS_UP) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.STAIRS_UP, idsWithTypeList, 1);
                STAIRS_UP_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.STAIRS_DOWN) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.STAIRS_DOWN, idsWithTypeList, 1);
                STAIRS_DOWN_CELL_TYPE := basicPlatormGeographicMapCellType;
            end else if (key = basicTopViewGeographicMapStrings_.OTHER) then begin
                basicPlatormGeographicMapCellType := TBasicTopViewGeographicMapCellType.Create(basicTopViewGeographicMapStrings_.OTHER, idsWithTypeList, 1);
                OTHER_CELL_TYPE := basicPlatormGeographicMapCellType;
            end;
        end;
        Self.BLOCK_CELL_TYPE := BLOCK_CELL_TYPE;
        Self.OFF_MAP_CELL_TYPE := OFF_MAP_CELL_TYPE;
        Self.FLOOR_CELL_TYPE := FLOOR_CELL_TYPE;
        Self.DOOR_CELL_TYPE := DOOR_CELL_TYPE;
        Self.STAIRS_UP_CELL_TYPE := STAIRS_UP_CELL_TYPE;
        Self.STAIRS_DOWN_CELL_TYPE := STAIRS_DOWN_CELL_TYPE;
        Self.OTHER_CELL_TYPE := OTHER_CELL_TYPE;
        type_ := (Self.maxTileId) - (1);
        if (geographicMapCellTypeArray[type_]) = (nil) then begin
            TRaceTrackGeographicMapCellType.Create(commonStrings_.START, type_, 1, 0);
        end else begin
        end;
        type_ := (Self.maxTileId) - (2);
        if (geographicMapCellTypeArray[type_]) = (nil) then begin
            TRaceTrackGeographicMapCellType.Create(commonStrings_.START, type_, 1, 0);
        end else begin
        end;
end;
    

function TBasicTopViewGeographicMapCellTypeFactory.getStartType: Integer;
begin
        Exit((Self.maxTileId) - (1));
end;
    

function TBasicTopViewGeographicMapCellTypeFactory.getEndType: Integer;
begin
        Exit((Self.maxTileId) - (2));
end;
    

function TBasicTopViewGeographicMapCellTypeFactory.getEmptyType: Integer;
begin
        Exit(Self.FLOOR_CELL_TYPE.getTypes()[0]);
end;
    

function TBasicTopViewGeographicMapCellTypeFactory.isPath(cellType: TGeographicMapCellType): Boolean;
begin
        if Self.FLOOR_CELL_TYPE.isType(cellType) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TBasicTopViewGeographicMapCellTypeFactory.toString: string;
begin
        Exit(TStringMaker.Create().append('key: WALL/BLOCK_CELL_TYPE: ').append(Self.BLOCK_CELL_TYPE.toString()).append('key: FLOOR_CELL_TYPE: ').append(Self.FLOOR_CELL_TYPE.toString()).append('key: OTHER_CELL_TYPE: ').append(Self.OTHER_CELL_TYPE.toString()).append('key: OFF_MAP_CELL_TYPE: ').append(Self.OFF_MAP_CELL_TYPE.toString()).append('key: DOOR_CELL_TYPE: ').append(Self.DOOR_CELL_TYPE.toString()).append('key: STAIRS_DOWN_CELL_TYPE: ').append(Self.STAIRS_DOWN_CELL_TYPE.toString()).append('key: STAIRS_UP_CELL_TYPE: ').append(Self.STAIRS_UP_CELL_TYPE.toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

