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
// package org.allbinary.game.input.form
unit NullRTSGameLayerPositionFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerPositionFinderInterface, AllBinaryLayer, GeographicMapCellPosition;

type
  {AB:TYPES}
  TNullRTSGameLayerPositionFinder = class(TInterfacedObject, ILayerPositionFinderInterface)
  public
    class var instance: TNullRTSGameLayerPositionFinder;
    function JavaObject: TObject;
        class function getInstance: TNullRTSGameLayerPositionFinder; static;
        constructor Create;
        function getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer; virtual;
  end;

implementation
uses
  DropCellPositionHistory;


{AB:CODE}

function TNullRTSGameLayerPositionFinder.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TNullRTSGameLayerPositionFinder.getInstance: TNullRTSGameLayerPositionFinder;
begin
        Exit(TNullRTSGameLayerPositionFinder.instance);
end;
    

constructor TNullRTSGameLayerPositionFinder.Create;
begin
    inherited Create;
end;
    

function TNullRTSGameLayerPositionFinder.getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer;
var
  layerInterface: TAllBinaryLayer;
begin
        layerInterface := TDropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition_);
        Exit(layerInterface);
end;

initialization
  {AB:INITIALIZATION}
  TNullRTSGameLayerPositionFinder.instance := TNullRTSGameLayerPositionFinder.Create();
  {AB:END}

end.

