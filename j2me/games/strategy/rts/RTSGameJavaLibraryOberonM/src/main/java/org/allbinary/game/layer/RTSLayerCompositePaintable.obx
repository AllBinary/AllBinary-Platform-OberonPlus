{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayerCompositePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, UpgradableRTSLayerHudPaintable, RTSLayer;

type
  {AB:TYPES}
  TRTSLayerCompositePaintable = class(TPaintable)
  public
    upgradeCost: string;
    downGradeCost: string;
    UPGRADE: string;
    DOWNGRADE: string;
    upgradableRTSLayerHudPaintable: TUpgradableRTSLayerHudPaintable;
    procedure InitFields;
        constructor Create(upgradableRTSLayerHudPaintable_: TUpgradableRTSLayerHudPaintable);
        procedure update(rtsLayer_: TRTSLayer); virtual;
        procedure paint(graphics_: TGraphics); override;
        procedure setUpgradeCost(upgradeCost: string); virtual;
        function getUpgradeCost: string; virtual;
        procedure setDownGradeCost(downGradeCost: string); virtual;
        function getDownGradeCost: string; virtual;
  end;

implementation
uses
  StringUtil, StringMaker;


{AB:CODE}

procedure TRTSLayerCompositePaintable.InitFields;
begin
  Self.upgradeCost := TStringUtil.getInstance().EMPTY_STRING;
  Self.downGradeCost := TStringUtil.getInstance().EMPTY_STRING;
  Self.UPGRADE := 'Up: $';
  Self.DOWNGRADE := 'Down: $-';
  
end;
    

constructor TRTSLayerCompositePaintable.Create(upgradableRTSLayerHudPaintable_: TUpgradableRTSLayerHudPaintable);
begin
    inherited Create;
    InitFields;
        Self.upgradableRTSLayerHudPaintable := upgradableRTSLayerHudPaintable_;
end;
    

procedure TRTSLayerCompositePaintable.update(rtsLayer_: TRTSLayer);
begin
        if rtsLayer_.isUpgradeable() then begin
            Self.setUpgradeCost(TStringMaker.Create().append(Self.UPGRADE).appendint(Integer(Trunc(rtsLayer_.getUpgradeCost()))).toString());
        end else begin
            Self.setUpgradeCost(TStringUtil.getInstance().EMPTY_STRING);
        end;
        if rtsLayer_.isDowngradeable() then begin
            Self.setDownGradeCost(TStringMaker.Create().append(Self.DOWNGRADE).appendint(Integer(Trunc(rtsLayer_.getDowngradeCost()))).toString());
        end else begin
            Self.setDownGradeCost(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;
    

procedure TRTSLayerCompositePaintable.paint(graphics_: TGraphics);
begin
        graphics_.drawString(Self.getDownGradeCost(), Self.upgradableRTSLayerHudPaintable.textX, Self.upgradableRTSLayerHudPaintable.costY1, 0);
        graphics_.drawString(Self.getUpgradeCost(), Self.upgradableRTSLayerHudPaintable.textX, Self.upgradableRTSLayerHudPaintable.costY, 0);
end;
    

procedure TRTSLayerCompositePaintable.setUpgradeCost(upgradeCost: string);
begin
        Self.upgradeCost := upgradeCost;
end;
    

function TRTSLayerCompositePaintable.getUpgradeCost: string;
begin
        Exit(Self.upgradeCost);
end;
    

procedure TRTSLayerCompositePaintable.setDownGradeCost(downGradeCost: string);
begin
        Self.downGradeCost := downGradeCost;
end;
    

function TRTSLayerCompositePaintable.getDownGradeCost: string;
begin
        Exit(Self.downGradeCost);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

