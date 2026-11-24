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
unit BasicGeographicMapUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABLayer, LogUtil, GeographicMapCellPosition, BasicGeographicMap;

type
  {AB:TYPES}
  TBasicGeographicMapUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TBasicGeographicMapUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicGeographicMapUtil; static;
        function getBorderingRow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): Integer; virtual;
        function getBorderingColumn(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): Integer; virtual;
        function isSameCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function createAllBinaryTiledLayerArray(geographicMapInterfaceArray: TArray<TBasicGeographicMap>): TArray<TABLayer>; virtual;
        function getAllBinaryTiledLayerArray(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; tiledLayerArray: TArray<TABLayer>; startIndex: Integer): TArray<TABLayer>; virtual;
        procedure move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; dx: Integer; dy: Integer); virtual;
        procedure setPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TBasicGeographicMapUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBasicGeographicMapUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicGeographicMapUtil.getInstance: TBasicGeographicMapUtil;
begin
        Exit(TBasicGeographicMapUtil.instance);
end;
    

// throws Exception
function TBasicGeographicMapUtil.getBorderingRow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): Integer;
var
  LOCATION_CHANGE: Integer;
begin
        LOCATION_CHANGE := 1;
        case direction of
            0: begin
                Exit(oldGeographicMapCellPosition.getRow());
            end;
            1: begin
                Exit(oldGeographicMapCellPosition.getRow());
            end;
            2: begin
                Exit((oldGeographicMapCellPosition.getRow()) + (LOCATION_CHANGE));
            end;
            3: begin
                Exit((oldGeographicMapCellPosition.getRow()) - (LOCATION_CHANGE));
            end;
            else begin
                raise SysUtils.Exception.Create('Only Four Directions');
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMapUtil.getBorderingColumn(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): Integer;
var
  LOCATION_CHANGE: Integer;
begin
        LOCATION_CHANGE := 1;
        case direction of
            0: begin
                Exit((oldGeographicMapCellPosition.getColumn()) - (LOCATION_CHANGE));
            end;
            1: begin
                Exit((oldGeographicMapCellPosition.getColumn()) + (LOCATION_CHANGE));
            end;
            2: begin
                Exit(oldGeographicMapCellPosition.getColumn());
            end;
            3: begin
                Exit(oldGeographicMapCellPosition.getColumn());
            end;
            else begin
                raise SysUtils.Exception.Create('Only Four Directions');
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMapUtil.isSameCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): Boolean;
var
  fromColumn: Integer;
  fromRow: Integer;
  goColumn: Integer;
  goRow: Integer;
begin
        fromColumn := fromGeographicMapCellPosition.getColumn();
        fromRow := fromGeographicMapCellPosition.getRow();
        goColumn := toGeographicMapCellPosition.getColumn();
        goRow := toGeographicMapCellPosition.getRow();
        if ((fromColumn) = (goColumn)) and ((fromRow) = (goRow)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TBasicGeographicMapUtil.createAllBinaryTiledLayerArray(geographicMapInterfaceArray: TArray<TBasicGeographicMap>): TArray<TABLayer>;
var
  tiledLayerArray: TArray<TABLayer>;
begin
        tiledLayerArray := TJava.NewArray<TABLayer>(System.Length(geographicMapInterfaceArray));
        Exit(Self.getAllBinaryTiledLayerArray(geographicMapInterfaceArray, tiledLayerArray, 0));
end;
    

function TBasicGeographicMapUtil.getAllBinaryTiledLayerArray(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; tiledLayerArray: TArray<TABLayer>; startIndex: Integer): TArray<TABLayer>;
var
  geographicMapInterface: TBasicGeographicMap;
  size: Integer;
  count: Integer;
  index: Integer;
begin
        
        size := System.Length(geographicMapInterfaceArray);
        count := 0;
        index := (size) + (startIndex);
        while (TJava.PreDec(index)) >= (startIndex) do begin
            geographicMapInterface := geographicMapInterfaceArray[index];
            tiledLayerArray[TJava.PostInc(count)] := geographicMapInterface.getAllBinaryTiledLayer();
        end;
        Exit(tiledLayerArray);
end;
    

procedure TBasicGeographicMapUtil.move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; dx: Integer; dy: Integer);
var
  geographicMapInterface: TBasicGeographicMap;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(geographicMapInterfaceArray);
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            geographicMapInterface := geographicMapInterfaceArray[index];
            geographicMapInterface.getAllBinaryTiledLayer().moveDXY(dx, dy);
        end;
end;
    

procedure TBasicGeographicMapUtil.setPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer);
var
  geographicMapInterface: TBasicGeographicMap;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(geographicMapInterfaceArray);
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            geographicMapInterface := geographicMapInterfaceArray[index];
            geographicMapInterface.getAllBinaryTiledLayer().setPosition(x, y, geographicMapInterface.getAllBinaryTiledLayer().getZP());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicGeographicMapUtil.instance := TBasicGeographicMapUtil.Create();
  {AB:END}

end.

