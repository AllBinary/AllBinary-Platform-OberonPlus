{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.geological.resources
unit GeologicalResourceInfoHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, WaypointInfoHudPaintable, KeyValueDrawCharArray;

type
  {AB:TYPES}
  TGeologicalResourceInfoHudPaintable = class(TWaypointInfoHudPaintable)
  public
    keyvalueDrawString: TKeyValueDrawCharArray;
    fontHeight: Integer;
    class var RESOURCES: string;
    procedure InitFields;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure updateSelectionInfo; override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  GeologicalGeographicMapCellPosition, Font, RTSLayer, BasicArrayList;


{AB:CODE}

procedure TGeologicalResourceInfoHudPaintable.InitFields;
begin
  
  Self.fontHeight := 0;
end;
    

constructor TGeologicalResourceInfoHudPaintable.Create;
begin
    inherited Create;
    InitFields;
        Self.keyvalueDrawString := TKeyValueDrawCharArray.Create(TGeologicalResourceInfoHudPaintable.RESOURCES, Self.textX);
end;
    

procedure TGeologicalResourceInfoHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        inherited updateMeasurement(graphics_);
        font_ := graphics_.getFont();
        Self.fontHeight := ((2) * (font_.getHeight()));
end;
    

procedure TGeologicalResourceInfoHudPaintable.updateSelectionInfo;
var
  rtsLayer_: TRTSLayer;
  list: TBasicArrayList;
  total: Integer;
  geographicMapCellPosition: TGeologicalGeographicMapCellPosition;
  index: Integer;
begin
        inherited updateSelectionInfo();
        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.rtsLayerP));
        list := rtsLayer_.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        total := 0;
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            geographicMapCellPosition := TGeologicalGeographicMapCellPosition(TJava.ToObject(list.get(index)));
            total := (total) + (geographicMapCellPosition.getGeologicalResource().getTotal());
        end;
        Self.keyvalueDrawString.update(Self.getPrimitiveLongUtil().getCharArray(total), Self.getPrimitiveLongUtil().getCurrentTotalDigits());
end;
    

procedure TGeologicalResourceInfoHudPaintable.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.keyvalueDrawString.paint(graphics_, ((Self.y) + (Self.fontHeight)));
end;

initialization
  {AB:INITIALIZATION}
  TGeologicalResourceInfoHudPaintable.RESOURCES := 'Resources: ';
  {AB:END}

end.

