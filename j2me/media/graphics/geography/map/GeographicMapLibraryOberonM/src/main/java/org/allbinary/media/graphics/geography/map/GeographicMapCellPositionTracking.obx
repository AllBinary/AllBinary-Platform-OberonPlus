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
unit GeographicMapCellPositionTracking;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameCanvasInterface, AllBinaryLayer, GeographicMapCellPosition, GeographicMapCellType, BasicGeographicMap;

type
  {AB:TYPES}
  TGeographicMapCellPositionTracking = class(TObject)
  public
    currentGeographicMapCellPosition: TGeographicMapCellPosition;
    previousGeographicMapCellPosition: TGeographicMapCellPosition;
    newGeographicMapCellPosition: TGeographicMapCellPosition;
    currentCellType: TGeographicMapCellType;
    procedure InitFields;
        constructor Create;
        function getCurrentOverCellType(geographicMap: TBasicGeographicMap): TGeographicMapCellType; virtual;
        function updateStart(gameCanvasInterface: IAllBinaryGameCanvasInterface; layer: TAllBinaryLayer): Boolean; virtual;
        function updateEnd: Boolean; virtual;
        function getPreviousGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
  end;

implementation
uses
  SimpleGeographicMapCellPositionFactory, GeographicMapCompositeInterface;


{AB:CODE}

procedure TGeographicMapCellPositionTracking.InitFields;
begin
  Self.currentGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.newGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.currentCellType := TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
end;
    

constructor TGeographicMapCellPositionTracking.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TGeographicMapCellPositionTracking.getCurrentOverCellType(geographicMap: TBasicGeographicMap): TGeographicMapCellType;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
begin
        geographicMapCellPosition_ := Self.currentGeographicMapCellPosition;
        if (geographicMapCellPosition_) <> (Self.previousGeographicMapCellPosition) then begin
            Self.currentCellType := geographicMap.getCellTypeAt(geographicMapCellPosition_);
        end;
        Exit(Self.currentCellType);
end;
    

// throws Exception
function TGeographicMapCellPositionTracking.updateStart(gameCanvasInterface: IAllBinaryGameCanvasInterface; layer: TAllBinaryLayer): Boolean;
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        if TJava.ToObject(gameCanvasInterface) <> TJava.ToObject(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            geographicMapCompositeInterface_ := (TJava.ToObject(gameCanvasInterface.getLayerManager()) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            Self.newGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY((layer.getXP()) + (layer.getHalfWidth()), (layer.getYP()) + (layer.getHalfHeight()));
            if (Self.newGeographicMapCellPosition) <> (Self.currentGeographicMapCellPosition) then begin
                Self.currentGeographicMapCellPosition := Self.newGeographicMapCellPosition;
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TGeographicMapCellPositionTracking.updateEnd: Boolean;
begin
        if (Self.currentGeographicMapCellPosition) <> (Self.previousGeographicMapCellPosition) then begin
            Self.previousGeographicMapCellPosition := Self.currentGeographicMapCellPosition;
            Exit(True);
        end;
        Exit(False);
end;
    

function TGeographicMapCellPositionTracking.getPreviousGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.previousGeographicMapCellPosition);
end;
    

function TGeographicMapCellPositionTracking.getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.currentGeographicMapCellPosition);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

