{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.form
unit UnitRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem, RTSLayer, RTSPlayerLayerInterface, Group, AllBinaryGameLayerManager, GameNotificationEvent, CollidableDestroyableDamageableLayer, AllBinaryLayerManager, RTSFormInput;

type
  {AB:TYPES}
  TUnitRTSFormInput = class(TRTSFormInput)
  public
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    newUnitGameNotificationEvent: TGameNotificationEvent;
    class var DECAL_ID: Integer;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); override;
        procedure attemptBuild(associatedRtsLayer: TRTSLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer);
  end;

implementation
uses
  AssignWaypointsUtil, PlayersSingletonFactory, StringMaker, AdvancedPlayerOwnedRTSLayers, AdvancedRTSGameLayer, AdvancedRTSPlayerLayerInterface, RTSGameStrings, Capital, UnitLayer, WorkWaypoint, BuildingSound, BooleanFactory, GeographicMapCellPositionAreaBase, GameNotificationEventHandler, GPoint, BasicColorFactory, ABLayer, SmallIntegerSingletonFactory, ErrorSound, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCompositeInterface;


{AB:CODE}

procedure TUnitRTSFormInput.InitFields;
begin
  
  
end;
    

constructor TUnitRTSFormInput.Create(groupInterface: TArray<TGroup>);
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(groupInterface);
        InitFields;
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.newUnitGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NEW_UNIT, smallIntegerSingletonFactory_.getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
        Self.getHashtable().put(TJava.Box(TWorkWaypoint.ID), TJava.Box(smallIntegerSingletonFactory_.getAt(50)));
end;
    

// throws Exception
procedure TUnitRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.newUnitGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
procedure TUnitRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
var
  associatedRtsLayer2: TRTSLayer;
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  cellPoint: TGPoint;
  rtsLayer_: TRTSLayer;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited process(layerManager);
        associatedRtsLayer2 := TRTSLayer(TJava.ToObject(associatedRtsLayer));
        geographicMapCellPositionArea := associatedRtsLayer2.geographicMapCellPositionAreaBase;
        geographicMapCellPosition_ := geographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition();
        Self.getHashtable().put(TJava.Box(TABLayer.ID), TJava.Box(associatedRtsLayer));
        Self.getHashtable().put(TJava.Box(TUnitRTSFormInput.DECAL_ID), TJava.Box(((TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface)).getDecalBasicColor()));
        if (Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]) = (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := Self.getInstance(layerManager, item, geographicMapCellPosition_);
        end else begin
            cellPoint := geographicMapCellPosition_.getPoint();
            rtsLayer_ := TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]));
            rtsLayer_.setPosition(cellPoint.getX(), cellPoint.getY(), rtsLayer_.getZP());
            geographicMapCompositeInterface_ := (TJava.ToObject(rtsLayer_.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            rtsLayer_.geographicMapCellPositionAreaBase.update(geographicMapInterface);
        end;
        cellPoint := geographicMapCellPosition_.getMidPoint();
        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]));
        rtsLayer_.setPosition((cellPoint.getX()) - (rtsLayer_.getHalfWidth()), (cellPoint.getY()) - (rtsLayer_.getHalfHeight()), rtsLayer_.getZP());
        Self.attemptBuild(associatedRtsLayer2, rtsPlayerLayerInterface_, layerManager, TRTSLayer(TJava.ToObject(rtsLayer_)), itemIndex);
end;
    

// throws Exception
procedure TUnitRTSFormInput.attemptBuild(associatedRtsLayer: TRTSLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer);
var
  cost: Integer;
  capital_: TCapital;
  stringBuffer: TStringMaker;
  advancedRTSPlayerLayerInterface_: IAdvancedRTSPlayerLayerInterface;
  advancedPlayerOwnedRTSLayers_: TAdvancedPlayerOwnedRTSLayers;
begin
        cost := layerInterface.getCost();
        capital_ := rtsPlayerLayerInterface_.getCapital();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Trying to Build: ');
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' for: $');
        stringBuffer.appendint(cost);
        stringBuffer.append(' with ');
        stringBuffer.appendint(Integer(Trunc(capital_.getTotalMoney())));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'attemptBuild');
        if (cost) <= (capital_.getTotalMoney()) then begin
            layerInterface.construct(rtsPlayerLayerInterface_);
            Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := TCollidableDestroyableDamageableLayer.getNullInstance();
            rtsPlayerLayerInterface_.add(TBuildingSound.getInstance());
            capital_.removeMoney(cost);
            TAssignWaypointsUtil.getInstance().set_(TUnitLayer(TJava.ToObject(layerInterface)), TAdvancedRTSGameLayer(TJava.ToObject(associatedRtsLayer)));
            layerManager.appendAt(layerInterface, TPlayersSingletonFactory.total);
            advancedRTSPlayerLayerInterface_ := (TJava.ToObject(rtsPlayerLayerInterface_) as IAdvancedRTSPlayerLayerInterface);
            advancedPlayerOwnedRTSLayers_ := advancedRTSPlayerLayerInterface_.getAdvancedPlayerOwnedRTSLayers();
            advancedPlayerOwnedRTSLayers_.addUnit(layerInterface);
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.newUnitGameNotificationEvent);
            end;
        end else begin
            rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.noMoneyGameNotificationEvent);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUnitRTSFormInput.DECAL_ID := TSmallIntegerSingletonFactory.getInstance().getAt(23);
  {AB:END}

end.

