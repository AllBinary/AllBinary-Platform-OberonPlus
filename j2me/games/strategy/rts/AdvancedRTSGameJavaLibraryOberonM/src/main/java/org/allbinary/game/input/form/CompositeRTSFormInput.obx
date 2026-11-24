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
unit CompositeRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSPlayerLayerInterface, ABCustomItem, Group, AllBinaryGameLayerManager, CollidableDestroyableDamageableLayer, GPoint, AllBinaryLayerManager, RTSFormInput;

type
  {AB:TYPES}
  TCompositeRTSFormInput = class(TRTSFormInput)
  public
    rtsFormInputArray: TArray<TRTSFormInput>;
    itemIndex: TArray<Integer>;
    isPrimaryWaypointCreator: Boolean;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>; isPrimaryWaypointCreator: Boolean; itemIndex: TArray<Integer>);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); override;
        procedure processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint); override;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer); override;
        function processSticky(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint): Boolean; override;
        procedure processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer); override;
        function getSelectedStickyItemIndex: Integer; override;
        function isStickyItemSelected: Boolean; override;
        procedure setStickyItemSelected(stickyItemSelected: Boolean); override;
        function getSelectedStickyItem: TABCustomItem; override;
        procedure setSelectedStickyItem(selectedStickyItem: TABCustomItem); override;
  end;

implementation
uses
  WaypointRTSFormInput, UnitRTSFormInput, CommonStrings, ScrollSelectionForm, BasicGeographicMap, GeographicMapCompositeInterface, CommonLabels;


{AB:CODE}

procedure TCompositeRTSFormInput.InitFields;
begin
  
  
  
end;
    

constructor TCompositeRTSFormInput.Create(groupInterface: TArray<TGroup>; isPrimaryWaypointCreator: Boolean; itemIndex: TArray<Integer>);
begin
        inherited Create(groupInterface);
        InitFields;
        Self.itemIndex := itemIndex;
        Self.isPrimaryWaypointCreator := isPrimaryWaypointCreator;
        Self.rtsFormInputArray := TJava.NewArray<TRTSFormInput>(2);
        Self.rtsFormInputArray[0] := TWaypointRTSFormInput.Create(Self.groupInterfaceArray, isPrimaryWaypointCreator);
        Self.rtsFormInputArray[1] := TUnitRTSFormInput.Create(Self.groupInterfaceArray);
end;
    

// throws Exception
procedure TCompositeRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  size: Integer;
  index: Integer;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        size := System.Length(Self.rtsFormInputArray);
        for index := 0 to size - 1 do begin
            Self.rtsFormInputArray[index].setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        end;
end;
    

// throws Exception
procedure TCompositeRTSFormInput.processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint);
var
  scrollSelectionForm_: TScrollSelectionForm;
  index: Integer;
begin
        scrollSelectionForm_ := rtsPlayerLayerInterface_.getCurrentScrollSelectionForm();
        index := scrollSelectionForm_.getSelectedIndexForPoint(point);
        if (Self.isStickyItemSelected()) and ((associatedRtsLayer) = (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
            if (Self.getSelectedStickyItemIndex()) <= (Self.itemIndex[0]) then begin
                Self.rtsFormInputArray[0].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, point);
            end;
        end else if (index) > (Self.itemIndex[0]) then begin
            Self.rtsFormInputArray[1].processAtPoint(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, point);
        end;
end;
    

// throws Exception
procedure TCompositeRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer);
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TJava.ToString((TCommonLabels.getInstance().INDEX_LABEL) + (index)) + ' > ' + IntToStr(Self.itemIndex[0]), TJava.Box(Self), commonStrings_.PROCESS);
        if (Self.isStickyItemSelected()) and ((associatedRtsLayer) = (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
            if (Self.getSelectedStickyItemIndex()) <= (Self.itemIndex[0]) then begin
                Self.rtsFormInputArray[0].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, item, index);
            end;
        end else if (index) > (Self.itemIndex[0]) then begin
            Self.rtsFormInputArray[1].processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, item, index);
        end;
end;
    

// throws Exception
function TCompositeRTSFormInput.processSticky(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint): Boolean;
begin
        Exit(Self.rtsFormInputArray[0].processSticky(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, point));
end;
    

// throws Exception
procedure TCompositeRTSFormInput.processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer);
begin
        Self.rtsFormInputArray[0].processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, item, index);
end;
    

function TCompositeRTSFormInput.getSelectedStickyItemIndex: Integer;
begin
        Exit(Self.rtsFormInputArray[0].getSelectedStickyItemIndex());
end;
    

function TCompositeRTSFormInput.isStickyItemSelected: Boolean;
begin
        Exit(Self.rtsFormInputArray[0].isStickyItemSelected());
end;
    

procedure TCompositeRTSFormInput.setStickyItemSelected(stickyItemSelected: Boolean);
begin
        Self.rtsFormInputArray[0].setStickyItemSelected(stickyItemSelected);
end;
    

function TCompositeRTSFormInput.getSelectedStickyItem: TABCustomItem;
begin
        Exit(Self.rtsFormInputArray[0].getSelectedStickyItem());
end;
    

procedure TCompositeRTSFormInput.setSelectedStickyItem(selectedStickyItem: TABCustomItem);
begin
        Self.rtsFormInputArray[0].setSelectedStickyItem(selectedStickyItem);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

