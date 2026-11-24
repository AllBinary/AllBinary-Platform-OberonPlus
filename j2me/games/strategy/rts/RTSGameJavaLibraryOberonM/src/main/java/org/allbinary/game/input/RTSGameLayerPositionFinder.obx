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
// package org.allbinary.game.input
unit RTSGameLayerPositionFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, GeographicMapCellPosition, LayerPositionFinderInterface;

type
  {AB:TYPES}
  TRTSGameLayerPositionFinder = class(TInterfacedObject, ILayerPositionFinderInterface)
  public
    class var instance: TRTSGameLayerPositionFinder;
    function JavaObject: TObject;
        class function getInstance: TRTSGameLayerPositionFinder; static;
        constructor Create;
        function getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer; virtual;
  end;

implementation
uses
  DropCellPositionHistory;


{AB:CODE}

function TRTSGameLayerPositionFinder.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TRTSGameLayerPositionFinder.getInstance: TRTSGameLayerPositionFinder;
begin
        Exit(TRTSGameLayerPositionFinder.instance);
end;
    

constructor TRTSGameLayerPositionFinder.Create;
begin
    inherited Create;
end;
    

function TRTSGameLayerPositionFinder.getLayerInterface(geographicMapCellPosition_: TGeographicMapCellPosition): TAllBinaryLayer;
begin
        Exit(TDropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition_));
end;

initialization
  {AB:INITIALIZATION}
  TRTSGameLayerPositionFinder.instance := TRTSGameLayerPositionFinder.Create();
  {AB:END}

end.

