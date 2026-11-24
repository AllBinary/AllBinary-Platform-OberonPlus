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
// package org.allbinary.game.view
unit TileLayerPositionIntoViewPositionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TileLayerPositionIntoViewPosition, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TTileLayerPositionIntoViewPositionUtil = class(TObject)
  public
    constructor Create;
        class procedure init(gameCanvasInterface: TAllBinaryGameCanvas; viewPosition: TTileLayerPositionIntoViewPosition); static;
  end;

implementation
uses
  AllBinaryTiledLayer, BasicGeographicMap, GeographicMapCompositeInterface;


{AB:CODE}

constructor TTileLayerPositionIntoViewPositionUtil.Create;
begin
  inherited Create;
end;
    

class procedure TTileLayerPositionIntoViewPositionUtil.init(gameCanvasInterface: TAllBinaryGameCanvas; viewPosition: TTileLayerPositionIntoViewPosition);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
begin
        geographicMapCompositeInterface_ := (TJava.ToObject(gameCanvasInterface.getLayerManager()) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        viewPosition.setTiledLayer(tiledLayer);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

