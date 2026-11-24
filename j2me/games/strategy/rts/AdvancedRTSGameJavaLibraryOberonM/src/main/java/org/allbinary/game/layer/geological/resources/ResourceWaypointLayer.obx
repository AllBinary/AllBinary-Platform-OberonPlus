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
unit ResourceWaypointLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SelectionHudPaintable, WaypointLayer, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, Group, PathFindingLayerInterface, Rectangle, RemoteInfo;

type
  {AB:TYPES}
  TResourceWaypointLayer = class(TWaypointLayer)
  public
        constructor Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; groupInterface: TArray<TGroup>; rootName: string; name: string; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
        function createHudPaintable: TSelectionHudPaintable; override;
        function getHudPaintable: TSelectionHudPaintable; override;
  end;

implementation
uses
  GeologicalResourceInfoHudPaintableSingleton, GeologicalResourceInfoHudPaintable;


{AB:CODE}
    

constructor TResourceWaypointLayer.Create(remoteInfo_: TRemoteInfo; parentLayer: IPathFindingLayerInterface; groupInterface: TArray<TGroup>; rootName: string; name: string; animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface_: IProceduralAnimationInterfaceFactoryInterface; rectangle_: TRectangle; x: Integer; y: Integer);
begin
        inherited Create(remoteInfo_, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface_, proceduralAnimationInterfaceFactoryInterface_, rectangle_, x, y);
end;
    

function TResourceWaypointLayer.createHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable: TGeologicalResourceInfoHudPaintable;
begin
        rtsLayerHudPaintable := TGeologicalResourceInfoHudPaintableSingleton.getInstance();
        rtsLayerHudPaintable.setBasicColorP(Self.allBinaryGameLayerManagerP.getForegroundBasicColor());
        rtsLayerHudPaintable.setRtsLayer(Self);
        Exit(rtsLayerHudPaintable);
end;
    

function TResourceWaypointLayer.getHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable: TGeologicalResourceInfoHudPaintable;
begin
        rtsLayerHudPaintable := TGeologicalResourceInfoHudPaintableSingleton.getInstance();
        Exit(rtsLayerHudPaintable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

