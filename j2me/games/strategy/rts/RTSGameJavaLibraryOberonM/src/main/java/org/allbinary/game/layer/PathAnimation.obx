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
unit PathAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, LogUtil, LinePathAnimation, PathFindingLayerInterface, AllBinaryGameLayerManager;

type
  {AB:TYPES}
  TPathAnimation = class(TAnimation)
  public
    logUtil: TLogUtil;
    linePathAnimation: TLinePathAnimation;
    pathFindingLayer: IPathFindingLayerInterface;
    allBinaryGameLayerManagerP: TAllBinaryGameLayerManager;
    startColor: TBasicColor;
    middleColor: TBasicColor;
    endColor: TBasicColor;
    procedure InitFields;
        constructor Create(pathFindingLayer: IPathFindingLayerInterface; linePathAnimation_: TLinePathAnimation);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure nextFrame; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  WaypointBehaviorBase, AllBinaryTiledLayer, GPoint, BasicColorFactory, CanvasStrings, BasicGeographicMap, GeographicMapCellHistory, GeographicMapCellPosition, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, BasicArrayList;


{AB:CODE}

procedure TPathAnimation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  Self.allBinaryGameLayerManagerP := TAllBinaryGameLayerManager.getNullInstance();
  Self.startColor := TBasicColorFactory.getInstance().RED;
  Self.middleColor := TBasicColorFactory.getInstance().BLUE;
  Self.endColor := TBasicColorFactory.getInstance().GREEN;
end;
    

constructor TPathAnimation.Create(pathFindingLayer: IPathFindingLayerInterface; linePathAnimation_: TLinePathAnimation);
begin
    inherited Create;
    InitFields;
        Self.pathFindingLayer := pathFindingLayer;
        Self.linePathAnimation := linePathAnimation_;
end;
    

// throws Exception
procedure TPathAnimation.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        Self.allBinaryGameLayerManagerP := allBinaryGameLayerManager_;
end;
    

// throws Exception
procedure TPathAnimation.nextFrame;
begin
end;
    

procedure TPathAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  waypointBehaviorBase_: TWaypointBehaviorBase;
  geographicMapCellHistory_: TGeographicMapCellHistory;
  list: TBasicArrayList;
  size: Integer;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  nextPoint: TGPoint;
  point: TGPoint;
  start: Integer;
  index: Integer;
begin
        try
            waypointBehaviorBase_ := Self.pathFindingLayer.getWaypointBehavior();
            if (waypointBehaviorBase_) <> (nil) then begin
                geographicMapCellHistory_ := waypointBehaviorBase_.getCurrentGeographicMapCellHistory();
                list := geographicMapCellHistory_.getTracked();
                size := list.size();
                if (size) > (0) then begin
                    geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
                    geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
                    geographicMapCellPosition_ := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    
                    
                    start := (size) - (2);
                    for index := 0 to (size) - (1) - 1 do begin
                        if (index) = (start) then begin
                            Self.setBasicColorP(Self.startColor);
                            Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
                        end else if geographicMapCellHistory_.isVisited(geographicMapCellPosition_) then begin
                            Self.setBasicColorP(Self.endColor);
                            Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
                        end else begin
                            Self.setBasicColorP(Self.middleColor);
                            Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
                        end;
                        geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(list.get(index)));
                        point := geographicMapCellPosition_.getMidPoint();
                        geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(list.get((index) + (1))));
                        nextPoint := geographicMapCellPosition_.getMidPoint();
                        Self.linePathAnimation.paint(graphics_, point, nextPoint, tiledLayer);
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF('Cleared Target', TJava.Box(Self), TCanvasStrings.getInstance().PAINT);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

