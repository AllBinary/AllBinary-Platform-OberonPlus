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
// package org.allbinary.game.layer.waypoint
unit WaypointInfoHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, PathFindingLayerInterface, RTSLayer, SelectionHudPaintable, KeyValueDrawString;

type
  {AB:TYPES}
  TWaypointInfoHudPaintable = class(TSelectionHudPaintable)
  public
    keyvalueDrawString: TKeyValueDrawString;
    rtsLayerP: IPathFindingLayerInterface;
    textLine2Y: Integer;
    procedure InitFields;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure updateSelectionInfo; override;
        procedure setRtsLayer(rtsLayer_: TRTSLayer); virtual;
        function getRtsLayer: IPathFindingLayerInterface; virtual;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  Font, NullPathFindingLayer;


{AB:CODE}

procedure TWaypointInfoHudPaintable.InitFields;
begin
  
  Self.rtsLayerP := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  
end;
    

constructor TWaypointInfoHudPaintable.Create;
begin
    inherited Create;
    InitFields;
        Self.keyvalueDrawString := TKeyValueDrawString.Create('Owner: ', Self.textX);
end;
    

procedure TWaypointInfoHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        inherited updateMeasurement(graphics_);
        font_ := graphics_.getFont();
        Self.textLine2Y := ((Self.y) + (font_.getHeight()));
end;
    

procedure TWaypointInfoHudPaintable.updateSelectionInfo;
var
  rtsLayer_: TRTSLayer;
begin
        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.rtsLayerP));
        Self.setName(rtsLayer_.getName());
        Self.setAnimationInterface(rtsLayer_.getVerticleBuildAnimationInterface());
        Self.keyvalueDrawString.update(rtsLayer_.getParentLayer().getName());
end;
    

procedure TWaypointInfoHudPaintable.setRtsLayer(rtsLayer_: TRTSLayer);
begin
        Self.rtsLayerP := rtsLayer_;
end;
    

function TWaypointInfoHudPaintable.getRtsLayer: IPathFindingLayerInterface;
begin
        Exit(Self.rtsLayerP);
end;
    

procedure TWaypointInfoHudPaintable.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.keyvalueDrawString.paint(graphics_, Self.textLine2Y);
        Self.getAnimationInterface().paintXY(graphics_, Self.imageX, Self.y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

