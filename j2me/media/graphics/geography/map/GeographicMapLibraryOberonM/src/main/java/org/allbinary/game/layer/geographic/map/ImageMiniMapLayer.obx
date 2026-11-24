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
// package org.allbinary.game.layer.geographic.map
unit ImageMiniMapLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, BasicGeographicMap, ViewPositionBase, MiniMapLayer;

type
  {AB:TYPES}
  TImageMiniMapLayer = class(TMiniMapLayer)
  public
    image: TImage;
    anchor: Integer;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap; viewPosition: TViewPositionBase);
        procedure init; override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  NullImage, Anchor, PaintableToImageUtil;


{AB:CODE}

procedure TImageMiniMapLayer.InitFields;
begin
  Self.image := TNullImage.NULL_IMAGE;
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TImageMiniMapLayer.Create(geographicMapInterface: TBasicGeographicMap; viewPosition: TViewPositionBase);
begin
        inherited Create(geographicMapInterface, viewPosition);
        InitFields;
end;
    

// throws Exception
procedure TImageMiniMapLayer.init;
var
  aWidth: Integer;
  aHeight: Integer;
begin
        aWidth := Self.allBinaryTiledLayer.getWidth();
        aHeight := Self.allBinaryTiledLayer.getHeight();
        Self.image := TPaintableToImageUtil.getImage(Self.allBinaryTiledLayer, aWidth, aHeight);
end;
    

procedure TImageMiniMapLayer.paint(graphics_: TGraphics);
begin
        graphics_.drawImage(Self.image, Self.x, Self.y, Self.anchor);
        Self.paintDots(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

