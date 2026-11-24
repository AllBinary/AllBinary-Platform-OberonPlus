{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit PathFindingLayerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DestroyableInterface, GroupInterfaceCompositeInterface, GameKeyEventSourceInterface, WaypointLayerInterface, BasicArrayList, GeographicMapCellPositionAreaBase, SelectionHudPaintable, RTSLayer2LogHelper;

type
  {AB:TYPES}
  IPathFindingLayerInterface = interface(IWaypointLayerInterface) ['IPathFindingLayerInterface']
        function getEndGeographicMapCellPositionList: TBasicArrayList;
        function shouldHandleStartSameAsEnd: Boolean;
        function getGeographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
        function getHudPaintable: TSelectionHudPaintable;
        procedure handleCost(ownerLayer: IPathFindingLayerInterface);
        function getParentLayer: IPathFindingLayerInterface;
        function getRTSLayer2LogHelper: TRTSLayer2LogHelper;
        procedure setTarget(targetGameLayer: IPathFindingLayerInterface);
  end;
  TPathFindingLayerInterface = IPathFindingLayerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

