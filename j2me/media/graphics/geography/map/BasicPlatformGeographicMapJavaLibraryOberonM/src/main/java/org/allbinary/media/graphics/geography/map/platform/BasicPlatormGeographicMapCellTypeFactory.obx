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
// package org.allbinary.media.graphics.geography.map.platform
unit BasicPlatormGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellType, GeographicMapCellTypeFactory, ABHashtable, EnumerationUtil, BasicPlatormGeographicMapCellType;

type
  {AB:TYPES}
  TBasicPlatormGeographicMapCellTypeFactory = class(TGeographicMapCellTypeFactory)
  public
    enumerationUtil: TEnumerationUtil;
    BLOCK_CELL_TYPE: TBasicPlatormGeographicMapCellType;
    JUMP_THRU_CELL_TYPE: TBasicPlatormGeographicMapCellType;
    LADDER_CELL_TYPE: TBasicPlatormGeographicMapCellType;
    maxTileId: Integer;
    procedure InitFields;
        constructor Create(tileTypeToTileIdsMap: TABHashtable<TObject, TObject>; maxTileId: Integer);
        function getStartType: Integer; override;
        function getEndType: Integer; override;
        function getEmptyType: Integer; override;
        function isPath(cellType: TGeographicMapCellType): Boolean; override;
  end;

implementation
uses
  CommonStrings, BasicArrayList;


{AB:CODE}

procedure TBasicPlatormGeographicMapCellTypeFactory.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  
  
  
  
end;
    

constructor TBasicPlatormGeographicMapCellTypeFactory.Create(tileTypeToTileIdsMap: TABHashtable<TObject, TObject>; maxTileId: Integer);
var
  commonStrings_: TCommonStrings;
  BLOCK_CELL_TYPE: TBasicPlatormGeographicMapCellType;
  JUMP_THRU_CELL_TYPE: TBasicPlatormGeographicMapCellType;
  LADDER_CELL_TYPE: TBasicPlatormGeographicMapCellType;
  PLATFORM: string;
  JUMP_TRHU: string;
  LADDER: string;
  enumeration: TObject;
  idsWithTypeList: TBasicArrayList;
  key: string;
  basicPlatormGeographicMapCellType_: TBasicPlatormGeographicMapCellType;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.INIT);
        Self.maxTileId := maxTileId;
        TGeographicMapCellType.Create(0, 0);
        BLOCK_CELL_TYPE := TBasicPlatormGeographicMapCellType.createType(1);
        JUMP_THRU_CELL_TYPE := BLOCK_CELL_TYPE;
        LADDER_CELL_TYPE := BLOCK_CELL_TYPE;
        PLATFORM := 'Platform';
        JUMP_TRHU := 'JumpThru';
        LADDER := 'Ladder';
        enumeration := tileTypeToTileIdsMap.keys();
        
        
        
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            key := TJava.UnboxString(TJava.ToObject(Self.enumerationUtil.nextElement(enumeration)));
            Self.logUtil.putF(key, TJava.Box(Self), commonStrings_.INIT);
            idsWithTypeList := TBasicArrayList(TJava.ToObject(tileTypeToTileIdsMap.get(TJava.Box(key))));
            basicPlatormGeographicMapCellType_ := TBasicPlatormGeographicMapCellType.Create(idsWithTypeList);
            if (key = PLATFORM) then begin
                BLOCK_CELL_TYPE := basicPlatormGeographicMapCellType_;
            end;
            if (key = JUMP_TRHU) then begin
                JUMP_THRU_CELL_TYPE := basicPlatormGeographicMapCellType_;
            end;
            if (key = LADDER) then begin
                LADDER_CELL_TYPE := basicPlatormGeographicMapCellType_;
            end;
        end;
        Self.BLOCK_CELL_TYPE := BLOCK_CELL_TYPE;
        Self.JUMP_THRU_CELL_TYPE := JUMP_THRU_CELL_TYPE;
        Self.LADDER_CELL_TYPE := LADDER_CELL_TYPE;
        TGeographicMapCellType.Create((Self.maxTileId) - (1), 0);
        TGeographicMapCellType.Create((Self.maxTileId) - (2), 0);
end;
    

function TBasicPlatormGeographicMapCellTypeFactory.getStartType: Integer;
begin
        Exit((Self.maxTileId) - (1));
end;
    

function TBasicPlatormGeographicMapCellTypeFactory.getEndType: Integer;
begin
        Exit((Self.maxTileId) - (2));
end;
    

function TBasicPlatormGeographicMapCellTypeFactory.getEmptyType: Integer;
begin
        Exit(0);
end;
    

function TBasicPlatormGeographicMapCellTypeFactory.isPath(cellType: TGeographicMapCellType): Boolean;
begin
        if (cellType.getType()) = (0) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

