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
// package org.allbinary.game.input.form
unit AdvancedRTSGameLayerPositionFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerPositionFinderInterface, AllBinaryLayer, GeographicMapCellPosition;

type
  {AB:TYPES}
  TAdvancedRTSGameLayerPositionFinder = class(TInterfacedObject, ILayerPositionFinderInterface)
  public
    class var instance: TAdvancedRTSGameLayerPositionFinder;
    function JavaObject: TObject;
        class function getInstance: TAdvancedRTSGameLayerPositionFinder; static;
        constructor Create;
        function getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer; virtual;
  end;

implementation
uses
  WaypointCellPositionHistory, DropCellPositionHistory;


{AB:CODE}

function TAdvancedRTSGameLayerPositionFinder.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TAdvancedRTSGameLayerPositionFinder.getInstance: TAdvancedRTSGameLayerPositionFinder;
begin
        Exit(TAdvancedRTSGameLayerPositionFinder.instance);
end;
    

constructor TAdvancedRTSGameLayerPositionFinder.Create;
begin
    inherited Create;
end;
    

function TAdvancedRTSGameLayerPositionFinder.getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer;
var
  layerInterface: TAllBinaryLayer;
begin
        layerInterface := TDropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition_);
        if (layerInterface) = (TAllBinaryLayer.NULL_ALLBINARY_LAYER) then begin
            layerInterface := TWaypointCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition_);
        end;
        Exit(layerInterface);
end;

initialization
  {AB:INITIALIZATION}
  TAdvancedRTSGameLayerPositionFinder.instance := TAdvancedRTSGameLayerPositionFinder.Create();
  {AB:END}

end.

