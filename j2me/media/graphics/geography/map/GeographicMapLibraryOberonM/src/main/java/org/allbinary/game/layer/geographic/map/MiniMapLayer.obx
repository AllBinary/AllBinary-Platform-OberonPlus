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
unit MiniMapLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicArrayList, CircleFilledAnimation, AllBinaryTiledLayer, AllBinaryLayer, AllBinaryEventObject, BasicGeographicMap, BasicGeographicMapCellPositionFactory, GeographicMapCellPositionEvent, GeographicMapCellPositionEventListenerInterface, ViewPositionBase;

type
  {AB:TYPES}
  TMiniMapLayer = class(TAllBinaryLayer, IGeographicMapCellPositionEventListenerInterface)
  public
    allBinaryTiledLayer: TAllBinaryTiledLayer;
    geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
    list: TBasicArrayList;
    basicColorList: TBasicArrayList;
    positionList: TBasicArrayList;
    animationInterface: TCircleFilledAnimation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(geographicMapInterface: TBasicGeographicMap; viewPosition: TViewPositionBase);
        procedure init; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onRemoveGeographicMapCellPositionEvent(geographicMapCellPositionEvent_: TGeographicMapCellPositionEvent); virtual;
        procedure onGeographicMapCellPositionEvent(geographicMapCellPositionEvent_: TGeographicMapCellPositionEvent); virtual;
        procedure paintDots(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  StringUtil, BasicArrayListD, ForcedLogUtil, GPoint, PointFactory, Rectangle, BasicColor, BasicColorFactory, ColorCompositeInterface, EventStrings, GeographicMapCellPosition, GeographicMapCellPositionEventHandler;


{AB:CODE}

procedure TMiniMapLayer.InitFields;
begin
  
  
  
  
  
  
end;

function TMiniMapLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMiniMapLayer.Create(geographicMapInterface: TBasicGeographicMap; viewPosition: TViewPositionBase);
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().createXY(0, viewPosition.getY()), geographicMapInterface.getAllBinaryTiledLayer().getWidth(), geographicMapInterface.getAllBinaryTiledLayer().getHeight()), viewPosition);
        InitFields;
        Self.allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        Self.geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        Self.animationInterface := TCircleFilledAnimation.Create(Self.allBinaryTiledLayer.getCellWidth(), Self.allBinaryTiledLayer.getCellHeight(), TBasicColorFactory.getInstance().WHITE);
        Self.list := TBasicArrayListD.Create();
        Self.basicColorList := TBasicArrayListD.Create();
        Self.positionList := TBasicArrayListD.Create();
        TGeographicMapCellPositionEventHandler.getInstance().addListener(Self);
        Self.init();
end;
    

// throws Exception
procedure TMiniMapLayer.init;
begin
        Self.allBinaryTiledLayer.setPosition(Self.x, Self.y, Self.z);
end;
    

procedure TMiniMapLayer.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TMiniMapLayer.onRemoveGeographicMapCellPositionEvent(geographicMapCellPositionEvent_: TGeographicMapCellPositionEvent);
var
  colorCompositeInterface_: IColorCompositeInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        colorCompositeInterface_ := (TJava.ToObject(geographicMapCellPositionEvent_.getSource()) as IColorCompositeInterface);
        index := Self.list.indexOf(TJava.Box(colorCompositeInterface_));
        if (index) >= (0) then begin
            Self.list.removeAt(index);
            Self.basicColorList.removeAt(index);
            Self.positionList.removeAt(index);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TMiniMapLayer.onGeographicMapCellPositionEvent(geographicMapCellPositionEvent_: TGeographicMapCellPositionEvent);
var
  colorCompositeInterface_: IColorCompositeInterface;
  layerIndex: Integer;
  size: Integer;
  nextColorCompositeInterface: IColorCompositeInterface;
  index: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  point: TGPoint;
  basicColor_: TBasicColor;
begin
    TJava.MonitorEnter(Self);
    try
        colorCompositeInterface_ := (TJava.ToObject(geographicMapCellPositionEvent_.getSource()) as IColorCompositeInterface);
        layerIndex := -1;
        size := Self.list.size();
        
        for index := 0 to size - 1 do begin
            nextColorCompositeInterface := (TJava.ToObject(Self.list.get(index)) as IColorCompositeInterface);
            if TJava.ToObject(nextColorCompositeInterface) = TJava.ToObject(colorCompositeInterface_) then begin
                layerIndex := index;
                Break;
            end;
        end;
        geographicMapCellPosition_ := Self.geographicMapCellPositionFactory.getInstance(geographicMapCellPositionEvent_.getGeographicMapCellPosition());
        point := geographicMapCellPosition_.getPoint();
        if (layerIndex) = (-1) then begin
            Self.list.add(TJava.Box(colorCompositeInterface_));
            basicColor_ := colorCompositeInterface_.getBasicColorP();
            Self.basicColorList.add(TJava.Box(basicColor_));
            Self.positionList.add(TJava.Box(point));
            layerIndex := (Self.basicColorList.size()) - (1);
        end else begin
            Self.positionList.set_(layerIndex, TJava.Box(point));
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMiniMapLayer.paintDots(graphics_: TGraphics);
var
  localPositionList: TBasicArrayList;
  localBasicColorList: TBasicArrayList;
  length: Integer;
  point: TGPoint;
  basicColor_: TBasicColor;
  index: Integer;
begin
        localPositionList := Self.positionList;
        localBasicColorList := Self.basicColorList;
        length := localPositionList.size();
        
        
        index := length;
        while (TJava.PreDec(index)) >= (0) do begin
            point := TGPoint(TJava.ToObject(localPositionList.get(index)));
            basicColor_ := TBasicColor(TJava.ToObject(localBasicColorList.get(index)));
            graphics_.setColor(basicColor_.intValue());
            Self.animationInterface.setBasicColorP(basicColor_);
            Self.animationInterface.paintXY(graphics_, (point.getX()) + (Self.x), (point.getY()) + (Self.y));
        end;
end;
    

procedure TMiniMapLayer.paint(graphics_: TGraphics);
begin
        Self.allBinaryTiledLayer.paint(graphics_);
        Self.paintDots(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

