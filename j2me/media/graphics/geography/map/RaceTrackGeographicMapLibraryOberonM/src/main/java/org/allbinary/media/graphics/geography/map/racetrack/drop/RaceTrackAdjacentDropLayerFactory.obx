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
// package org.allbinary.media.graphics.geography.map.racetrack.drop
unit RaceTrackAdjacentDropLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicArrayListUtil, LayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TRaceTrackAdjacentDropLayerFactory = class(TObject)
  public
    list: TBasicArrayList;
    basicArrayListUtil: TBasicArrayListUtil;
    class var DROP_LAYER_FACTORY: TRaceTrackAdjacentDropLayerFactory;
    procedure InitFields;
        constructor Create;
        procedure clear; virtual;
        class function getInstance: TRaceTrackAdjacentDropLayerFactory; static;
        function getSize: Integer; virtual;
        function getRandomInstance: ILayerInterfaceFactoryInterface; virtual;
        procedure add(layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TRaceTrackAdjacentDropLayerFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TRaceTrackAdjacentDropLayerFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TRaceTrackAdjacentDropLayerFactory.clear;
begin
        Self.list.clear();
end;
    

class function TRaceTrackAdjacentDropLayerFactory.getInstance: TRaceTrackAdjacentDropLayerFactory;
begin
        Exit(TRaceTrackAdjacentDropLayerFactory.DROP_LAYER_FACTORY);
end;
    

function TRaceTrackAdjacentDropLayerFactory.getSize: Integer;
begin
        Exit(Self.list.size());
end;
    

function TRaceTrackAdjacentDropLayerFactory.getRandomInstance: ILayerInterfaceFactoryInterface;
begin
        Exit((TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.list)) as ILayerInterfaceFactoryInterface));
end;
    

procedure TRaceTrackAdjacentDropLayerFactory.add(layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface);
begin
        Self.list.add(TJava.Box(layerInterfaceFactoryInterface_));
end;

initialization
  {AB:INITIALIZATION}
  TRaceTrackAdjacentDropLayerFactory.DROP_LAYER_FACTORY := TRaceTrackAdjacentDropLayerFactory.Create();
  {AB:END}

end.

