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
// package org.allbinary.game.layer.unit
unit CollidableUnitBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SteeringVisitor, CollidableCompositeLayer, CollidableRTSBehavior, LayerPartialCellPositionsUtil, UnitLayer;

type
  {AB:TYPES}
  TSimpleSteeringVisitor = class(TSteeringVisitor)
  public
    constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;
  TCollidableUnitBehavior = class(TCollidableRTSBehavior)
  public
    layerPartialCellPositionsUtil: TLayerPartialCellPositionsUtil;
    simpleSteeringVisitor: TSimpleSteeringVisitor;
    procedure InitFields;
        constructor Create(collidable: Boolean);
        procedure collideNone(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer); override;
        function steer(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer): Boolean;
        procedure chase(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
        procedure collideUnit(ownerLayer: TCollidableCompositeLayer; unitLayer_: TUnitLayer); virtual;
  end;

implementation
uses
  Canvas, AdvancedRTSGameLayer, BasicArrayList, GameKeyEventFactory, AllBinaryTiledLayer, TiledLayerUtil, NullUtil, LogUtil, BooleanFactory, AngleInfo, BasicGeographicMap, GeographicMapCompositeInterface, DropCellPositionHistory, CommonStrings;


{AB:CODE}

constructor TSimpleSteeringVisitor.Create;
begin
  inherited Create;
end;
    

    function TSimpleSteeringVisitor.visit(anyType: TObject): TObject;
var
  logUtil_: TLogUtil;
  ownerLayer: TCollidableCompositeLayer;
  allbinaryLayer: TCollidableCompositeLayer;
  clear: Boolean;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            try
                ownerLayer := TCollidableCompositeLayer(TJava.ToObject(anyType));
                if (Self.getList().size()) > (0) then begin
                    allbinaryLayer := TCollidableCompositeLayer(TJava.ToObject(Self.getList().get(0)));
                    clear := Self.steer(ownerLayer, allbinaryLayer);
                    if clear then begin
                        Self.getList().clear();
                        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
                    end;
                    Exit(TJava.Box(TBooleanFactory.getInstance().TRUE_));
                end;
                Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'visit', TJava.Box(e));
                Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
                end;
            end;
end;

procedure TCollidableUnitBehavior.InitFields;
begin
  Self.layerPartialCellPositionsUtil := TLayerPartialCellPositionsUtil.getInstance();
  Self.simpleSteeringVisitor := TSimpleSteeringVisitor.Create();
end;
    

constructor TCollidableUnitBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
        InitFields;
end;
    

// throws Exception
procedure TCollidableUnitBehavior.collideNone(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
var
  rtsLayer: TAdvancedRTSGameLayer;
begin
        Self.chase(ownerLayer, collidableInterfaceCompositeInterface);
        rtsLayer := TAdvancedRTSGameLayer(TJava.ToObject(collidableInterfaceCompositeInterface));
        if (rtsLayer.getType()) = (TUnitLayer.getStaticType()) then begin
            Self.collideUnit(ownerLayer, TUnitLayer(TJava.ToObject(rtsLayer)));
        end;
end;
    

// throws Exception
function TCollidableUnitBehavior.steer(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer): Boolean;
var
  ownerUnitLayer: TUnitLayer;
  unitLayer_: TUnitLayer;
  angleInfo2: TAngleInfo;
  angleInfo_: TAngleInfo;
  angle: Integer;
begin
        ownerUnitLayer := TUnitLayer(TJava.ToObject(ownerLayer));
        unitLayer_ := TUnitLayer(TJava.ToObject(collidableInterfaceCompositeInterface));
        angleInfo2 := unitLayer_.getRotationAnimationInterface().getAngleInfoP();
        angleInfo_ := ownerUnitLayer.getRotationAnimationInterface().getAngleInfoP();
        angle := (angleInfo_.getAngle()) - (angleInfo2.getAngle());
        if ((angle) < (90)) or ((angle) > (270)) then begin
            Exit(True);
        end else if ((angle) >= (90)) or ((angle) <= (270)) then begin
            ownerUnitLayer.getGameKeyEventList().add(TJava.Box(TGameKeyEventFactory.getInstance().getInstanceForKey(ownerUnitLayer, TCanvas.RIGHT)));
            Exit(False);
        end;
        raise SysUtils.Exception.Create('Error');
end;
    

// throws Exception
procedure TCollidableUnitBehavior.chase(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
var
  rtsLayer: TAdvancedRTSGameLayer;
  ownerUnitLayer: TUnitLayer;
  list: TBasicArrayList;
begin
        rtsLayer := TAdvancedRTSGameLayer(TJava.ToObject(collidableInterfaceCompositeInterface));
        if (rtsLayer.getType()) = (TUnitLayer.getStaticType()) then begin
            if not (Self.simpleSteeringVisitor.getList().contains(TJava.Box(collidableInterfaceCompositeInterface))) then begin
                Self.simpleSteeringVisitor.getList().add(TJava.Box(collidableInterfaceCompositeInterface));
            end;
            ownerUnitLayer := TUnitLayer(TJava.ToObject(ownerLayer));
            list := ownerUnitLayer.getUnitWaypointBehavior().getSteeringVisitorList();
            if not (list.contains(TJava.Box(Self.simpleSteeringVisitor))) then begin
                list.add(TJava.Box(Self.simpleSteeringVisitor));
            end;
        end;
end;
    

// throws Exception
procedure TCollidableUnitBehavior.collideUnit(ownerLayer: TCollidableCompositeLayer; unitLayer_: TUnitLayer);
var
  ownerUnitLayer: TUnitLayer;
  partialPositionList: TBasicArrayList;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  basicGeographicMap_: TBasicGeographicMap;
  dropCellPositionHistory_: TDropCellPositionHistory;
  tiledLayerUtil_: TTiledLayerUtil;
  tiledLayer: TAllBinaryTiledLayer;
  diff: Integer;
  x: Integer;
  y: Integer;
begin
        ownerUnitLayer := TUnitLayer(TJava.ToObject(ownerLayer));
        partialPositionList := TUnitLayer.getPartialpositionlist();
        geographicMapCompositeInterface_ := (TJava.ToObject(ownerUnitLayer.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        basicGeographicMap_ := geographicMapInterface;
        dropCellPositionHistory_ := TDropCellPositionHistory.getInstance();
        tiledLayerUtil_ := TTiledLayerUtil.getInstance();
        tiledLayer := basicGeographicMap_.getAllBinaryTiledLayer();
        if ((ownerLayer.getXP()) < (unitLayer_.getXP())) and ((ownerLayer.getX2()) > (unitLayer_.getXP())) then begin
            diff := (ownerLayer.getWidth()) + (1);
            Self.layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap_, ownerLayer, -diff, 0, partialPositionList);
            if not (dropCellPositionHistory_.anyCellPositionWithDrop(partialPositionList)) then begin
                x := (unitLayer_.getXP()) - (diff);
                y := ownerLayer.getYP();
                x := tiledLayerUtil_.keepOnMapX(tiledLayer, x, ownerLayer.getWidth());
                y := tiledLayerUtil_.keepOnMapY(tiledLayer, y, ownerLayer.getHeight());
                ownerLayer.setPosition(x, y, ownerLayer.getZP());
            end;
            Self.layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap_, unitLayer_, diff, 0, partialPositionList);
            if not (dropCellPositionHistory_.anyCellPositionWithDrop(partialPositionList)) then begin
                x := (unitLayer_.getXP()) + (diff);
                y := unitLayer_.getYP();
                x := tiledLayerUtil_.keepOnMapX(tiledLayer, x, unitLayer_.getWidth());
                y := tiledLayerUtil_.keepOnMapY(tiledLayer, y, unitLayer_.getHeight());
                unitLayer_.setPosition(x, y, unitLayer_.getZP());
            end;
        end;
        if ((ownerLayer.getYP()) < (unitLayer_.getYP())) and ((ownerLayer.getY2()) > (unitLayer_.getYP())) then begin
            diff := (ownerLayer.getHeight()) + (1);
            Self.layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap_, ownerLayer, 0, -diff, partialPositionList);
            if not (dropCellPositionHistory_.anyCellPositionWithDrop(partialPositionList)) then begin
                x := ownerLayer.getXP();
                y := (unitLayer_.getYP()) - (diff);
                x := tiledLayerUtil_.keepOnMapX(tiledLayer, x, ownerLayer.getWidth());
                y := tiledLayerUtil_.keepOnMapY(tiledLayer, y, ownerLayer.getHeight());
                ownerLayer.setPosition(x, y, ownerLayer.getZP());
            end;
            Self.layerPartialCellPositionsUtil.getAllDXY(basicGeographicMap_, unitLayer_, 0, diff, partialPositionList);
            if not (dropCellPositionHistory_.anyCellPositionWithDrop(partialPositionList)) then begin
                x := unitLayer_.getXP();
                y := (unitLayer_.getYP()) + (diff);
                x := tiledLayerUtil_.keepOnMapX(tiledLayer, x, unitLayer_.getWidth());
                y := tiledLayerUtil_.keepOnMapY(tiledLayer, y, unitLayer_.getHeight());
                unitLayer_.setPosition(x, y, unitLayer_.getZP());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

