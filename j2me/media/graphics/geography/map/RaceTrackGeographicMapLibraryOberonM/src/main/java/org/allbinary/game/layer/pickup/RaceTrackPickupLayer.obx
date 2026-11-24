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
// package org.allbinary.game.layer.pickup
unit RaceTrackPickupLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, ViewPositionEventHandler, PickupLayer;

type
  {AB:TYPES}
  TRaceTrackPickupLayer = class(TPickupLayer)
  public
    viewPositionEventHandler: TViewPositionEventHandler;
    class var NAME: string;
    procedure InitFields;
        constructor Create;
        procedure setTiledLayer(tiledLayer: TAllBinaryTiledLayer); virtual;
        procedure setDestroyed(destroyed: Boolean); override;
  end;

implementation
uses
  CountedPickedUpLayerInterfaceFactory, NullAnimationFactory, BasicGroupFactory, RemoteInfo, TileLayerPositionIntoViewPosition, PointFactory, Rectangle, AllBinaryLayer, ViewPosition;


{AB:CODE}

procedure TRaceTrackPickupLayer.InitFields;
begin
  Self.viewPositionEventHandler := TViewPositionEventHandler.getInstance();
end;
    

constructor TRaceTrackPickupLayer.Create;
begin
        inherited Create(TRaceTrackPickupLayer.NAME, TRemoteInfo.REMOTE_INFO, 0, TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, TNullAnimationFactory.getFactoryInstance().getInstance(0), TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TTileLayerPositionIntoViewPosition.Create());
        InitFields;
end;
    

procedure TRaceTrackPickupLayer.setTiledLayer(tiledLayer: TAllBinaryTiledLayer);
var
  viewPosition: TTileLayerPositionIntoViewPosition;
begin
        viewPosition := TTileLayerPositionIntoViewPosition(TJava.ToObject(Self.getViewPosition()));
        viewPosition.setTiledLayer(tiledLayer);
        Self.viewPositionEventHandler.addListener(TAllBinaryLayer(TJava.ToObject(Self)));
end;
    

procedure TRaceTrackPickupLayer.setDestroyed(destroyed: Boolean);
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            Self.viewPositionEventHandler.removeListener(Self);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TRaceTrackPickupLayer.NAME := 'RaceTrackPickupLayer';
  {AB:END}

end.

