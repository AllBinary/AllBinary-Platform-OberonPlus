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
unit UpgradableWideRTSLayerPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, UpgradableRTSLayerHudPaintable, RTSLayer, RTSLayerCompositePaintable;

type
  {AB:TYPES}
  TUpgradableWideRTSLayerPaintable = class(TRTSLayerCompositePaintable)
  public
    cost: string;
    procedure InitFields;
        constructor Create(upgradableRTSLayerHudPaintable_: TUpgradableRTSLayerHudPaintable);
        procedure update(rtsLayer_: TRTSLayer); override;
        procedure paint(graphics_: TGraphics); override;
        procedure setCost(cost: string); virtual;
        function getCost: string; virtual;
  end;

implementation
uses
  CommonSeps, StringMaker, StringUtil;


{AB:CODE}

procedure TUpgradableWideRTSLayerPaintable.InitFields;
begin
  Self.cost := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TUpgradableWideRTSLayerPaintable.Create(upgradableRTSLayerHudPaintable_: TUpgradableRTSLayerHudPaintable);
begin
        inherited Create(upgradableRTSLayerHudPaintable_);
        InitFields;
end;
    

procedure TUpgradableWideRTSLayerPaintable.update(rtsLayer_: TRTSLayer);
begin
        inherited update(rtsLayer_);
        Self.setCost(TStringMaker.Create().append(Self.getUpgradeCost()).append(TCommonSeps.getInstance().SPACE).append(Self.getDownGradeCost()).toString());
end;
    

procedure TUpgradableWideRTSLayerPaintable.paint(graphics_: TGraphics);
begin
        graphics_.drawString(Self.getCost(), Self.upgradableRTSLayerHudPaintable.textX, Self.upgradableRTSLayerHudPaintable.costY, 0);
end;
    

procedure TUpgradableWideRTSLayerPaintable.setCost(cost: string);
begin
        Self.cost := cost;
end;
    

function TUpgradableWideRTSLayerPaintable.getCost: string;
begin
        Exit(Self.cost);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

