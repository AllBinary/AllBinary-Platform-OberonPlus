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
unit TechRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSPlayerLayerInterface, ABCustomItem, Group, AllBinaryGameLayerManager, GameNotificationEvent, CollidableDestroyableDamageableLayer, AllBinaryLayerManager, AllBinaryEventObject, RTSFormInput;

type
  {AB:TYPES}
  TTechRTSFormInput = class(TRTSFormInput)
  public
    EVENT: TAllBinaryEventObject;
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); override;
  end;

implementation
uses
  RTSGameStrings, RTSInterface, TechnologyRTSInterfaceImageItem, Capital, TechEventHandler, BuildingSound, CommonStrings, BooleanFactory, GameNotificationEventHandler, BasicColorFactory, SmallIntegerSingletonFactory, StringMaker, ErrorSound, BasicGeographicMap, GeographicMapCompositeInterface;


{AB:CODE}

procedure TTechRTSFormInput.InitFields;
begin
  Self.EVENT := TAllBinaryEventObject.Create(TJava.Box(Self));
  
end;
    

constructor TTechRTSFormInput.Create(groupInterface: TArray<TGroup>);
var
  basicColorFactory_: TBasicColorFactory;
begin
        inherited Create(groupInterface);
        InitFields;
        basicColorFactory_ := TBasicColorFactory.getInstance();
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TRTSGameStrings.getInstance().NO_MONEY, TSmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory_.WHITE, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TTechRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
procedure TTechRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
var
  commonStrings_: TCommonStrings;
  stringMaker_: TStringMaker;
  technologyRTSInterfaceImageItem_: TTechnologyRTSInterfaceImageItem;
  rtsInterface_: IRTSInterface;
  cost: Integer;
  capital_: TCapital;
begin
        inherited process(layerManager);
        commonStrings_ := TCommonStrings.getInstance();
        stringMaker_ := TStringMaker.Create();
        technologyRTSInterfaceImageItem_ := TTechnologyRTSInterfaceImageItem(TJava.ToObject(item));
        rtsInterface_ := technologyRTSInterfaceImageItem_.getRtsInterface();
        Self.logUtil.putF(stringMaker_.append('isUpgradeable: ').appendboolean(rtsInterface_.isUpgradeable()).toString(), TJava.Box(Self), commonStrings_.PROCESS);
        if rtsInterface_.isUpgradeable() then begin
            cost := rtsInterface_.getUpgradeCost();
            capital_ := rtsPlayerLayerInterface_.getCapital();
            stringMaker_.delete_(0, stringMaker_.length());
            Self.logUtil.putF(stringMaker_.appendint(cost).append('<=').appendint(Integer(Trunc(capital_.getTotalMoney()))).toString(), TJava.Box(Self), commonStrings_.PROCESS);
            if (cost) <= (capital_.getTotalMoney()) then begin
                rtsPlayerLayerInterface_.add(TBuildingSound.getInstance());
                capital_.removeMoney(cost);
                rtsInterface_.upgrade();
                technologyRTSInterfaceImageItem_.update();
                TTechEventHandler.getInstance().fireEvent(Self.EVENT);
            end else begin
                rtsPlayerLayerInterface_.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface_.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.noMoneyGameNotificationEvent);
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

