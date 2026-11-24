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
unit RTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GroupCommonFactory, RTSPlayerLayerInterface, ABCustomItem, LogUtil, Group, AllBinaryGameLayerManager, CollidableDestroyableDamageableLayer, GPoint, AllBinaryLayerManager, GeographicMapCellPosition, ABHashtable;

type
  {AB:TYPES}
  TRTSFormInput = class(TObject)
  public
    logUtil: TLogUtil;
    groupCommonFactory: TGroupCommonFactory;
    hashtable: TABHashtable<TObject, TObject>;
    newUnconstructedRTSLayerInterfaceArray: TArray<TCollidableDestroyableDamageableLayer>;
    groupInterfaceArray: TArray<TGroup>;
    selectedGeographicCellPosition: TGeographicMapCellPosition;
    stickyItemSelected: Boolean;
    selectedStickyItemIndex: Integer;
    selectedStickyItem: TABCustomItem;
    procedure InitFields;
        constructor Create(groupInterfaceArray: TArray<TGroup>);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint); virtual;
        procedure process(layerManager: TAllBinaryLayerManager); virtual;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer); virtual;
        function processSticky(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint): Boolean; virtual;
        procedure processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer); virtual;
        function getItemAt(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; point: TGPoint): TABCustomItem; virtual;
        function getIndexAt(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; point: TGPoint): Integer; virtual;
        function getInstance(layerManager: TAllBinaryLayerManager; aItem: TABCustomItem; geographicMapCellPosition_: TGeographicMapCellPosition): TCollidableDestroyableDamageableLayer; virtual;
        function getSelectedGeographicCellPosition: TGeographicMapCellPosition; virtual;
        procedure setSelectedGeographicCellPosition(selectedGeographicCellPosition: TGeographicMapCellPosition); virtual;
        function isStickyItemSelected: Boolean; virtual;
        procedure setStickyItemSelected(stickyItemSelected: Boolean); virtual;
        function getSelectedStickyItem: TABCustomItem; virtual;
        procedure setSelectedStickyItem(selectedStickyItem: TABCustomItem); virtual;
        function getSelectedStickyItemIndex: Integer; virtual;
        procedure setSelectedStickyItemIndex(selectedStickyItemIndex: Integer); virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  RTSLayer, LayerInterfaceFactoryImageItem, DirectionFactory, ScrollSelectionForm, LayerInterfaceFactoryInterface, StdUtil, StringMaker, StringUtil, SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TRTSFormInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.groupCommonFactory := TGroupCommonFactory.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.newUnconstructedRTSLayerInterfaceArray := TJava.NewArray<TCollidableDestroyableDamageableLayer>(7);
  
  Self.selectedGeographicCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  
  
  Self.selectedStickyItem := TABCustomItem.getNullInstance();
end;
    

constructor TRTSFormInput.Create(groupInterfaceArray: TArray<TGroup>);
var
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := System.Length(Self.newUnconstructedRTSLayerInterfaceArray);
        for index := 0 to size - 1 do begin
            Self.newUnconstructedRTSLayerInterfaceArray[index] := TCollidableDestroyableDamageableLayer.getNullInstance();
        end;
        Self.groupInterfaceArray := groupInterfaceArray;
        Self.hashtable.put(TJava.Box(TDirectionFactory.getInstance().NAME), TJava.Box(TDirectionFactory.getInstance().DOWN));
        if (groupInterfaceArray) <> (nil) then begin
            Self.hashtable.put(TJava.Box(Self.groupCommonFactory.ID), TJava.Box(groupInterfaceArray));
        end;
end;
    

// throws Exception
procedure TRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
end;
    

// throws Exception
procedure TRTSFormInput.processAtPoint(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint);
var
  index: Integer;
  scrollSelectionForm_: TScrollSelectionForm;
  item: TABCustomItem;
begin
        index := Self.getIndexAt(rtsPlayerLayerInterface_, point);
        if (index) < (0) then begin
            Exit;
        end;
        scrollSelectionForm_ := rtsPlayerLayerInterface_.getCurrentScrollSelectionForm();
        item := scrollSelectionForm_.get(index);
        if (item) = (nil) then begin
            Exit;
        end;
        Self.processGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, item, index);
end;
    

// throws Exception
procedure TRTSFormInput.process(layerManager: TAllBinaryLayerManager);
begin
        Self.setAllBinaryGameLayerManager(TAllBinaryGameLayerManager(TJava.ToObject(layerManager)));
end;
    

// throws Exception
procedure TRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer);
begin
end;
    

// throws Exception
function TRTSFormInput.processSticky(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; point: TGPoint): Boolean;
var
  index: Integer;
  scrollSelectionForm_: TScrollSelectionForm;
  item: TABCustomItem;
begin
        index := Self.getIndexAt(rtsPlayerLayerInterface_, point);
        if (index) < (0) then begin
            Exit(False);
        end;
        scrollSelectionForm_ := rtsPlayerLayerInterface_.getCurrentScrollSelectionForm();
        item := scrollSelectionForm_.get(index);
        if (item) = (nil) then begin
            Exit(False);
        end;
        Self.processStickyGameSpecific(associatedRtsLayer, rtsPlayerLayerInterface_, layerManager, item, index);
        Exit(True);
end;
    

// throws Exception
procedure TRTSFormInput.processStickyGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; index: Integer);
begin
end;
    

// throws Exception
function TRTSFormInput.getItemAt(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; point: TGPoint): TABCustomItem;
var
  scrollSelectionForm_: TScrollSelectionForm;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Point: ').append(TStringUtil.getInstance().toString(point)).toString(), TJava.Box(Self), 'getItemAt');
        scrollSelectionForm_ := rtsPlayerLayerInterface_.getCurrentScrollSelectionForm();
        Exit(scrollSelectionForm_.getSelectedItem(point));
end;
    

// throws Exception
function TRTSFormInput.getIndexAt(rtsPlayerLayerInterface_: IRTSPlayerLayerInterface; point: TGPoint): Integer;
var
  scrollSelectionForm_: TScrollSelectionForm;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Point: ').append(TStringUtil.getInstance().toString(point)).toString(), TJava.Box(Self), 'getItemAt');
        scrollSelectionForm_ := rtsPlayerLayerInterface_.getCurrentScrollSelectionForm();
        Exit(scrollSelectionForm_.getSelectedIndexForPoint(point));
end;
    

// throws Exception
function TRTSFormInput.getInstance(layerManager: TAllBinaryLayerManager; aItem: TABCustomItem; geographicMapCellPosition_: TGeographicMapCellPosition): TCollidableDestroyableDamageableLayer;
var
  item: TLayerInterfaceFactoryImageItem;
  layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface;
  cellPoint: TGPoint;
begin
        item := TLayerInterfaceFactoryImageItem(TJava.ToObject(aItem));
        layerInterfaceFactoryInterface_ := item.getLayerInterfaceFactoryInterface();
        cellPoint := geographicMapCellPosition_.getPoint();
        if (layerInterfaceFactoryInterface_) <> (nil) then begin
            Self.hashtable.put(TJava.Box(TAllBinaryGameLayerManager.ID), TJava.Box(layerManager));
            Exit(TRTSLayer(TJava.ToObject(layerInterfaceFactoryInterface_.getNextInstance(Self.getHashtable(), cellPoint.getX(), cellPoint.getY(), cellPoint.getZ()))));
        end;
        Exit(TCollidableDestroyableDamageableLayer.getNullInstance());
end;
    

function TRTSFormInput.getSelectedGeographicCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.selectedGeographicCellPosition);
end;
    

procedure TRTSFormInput.setSelectedGeographicCellPosition(selectedGeographicCellPosition: TGeographicMapCellPosition);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Selected GeographicMapCellPosition: ').append(selectedGeographicCellPosition.toString()).toString(), TJava.Box(Self), 'setSelectedGeographicCellPosition');
        Self.selectedGeographicCellPosition := selectedGeographicCellPosition;
end;
    

function TRTSFormInput.isStickyItemSelected: Boolean;
begin
        Exit(Self.stickyItemSelected);
end;
    

procedure TRTSFormInput.setStickyItemSelected(stickyItemSelected: Boolean);
begin
        Self.stickyItemSelected := stickyItemSelected;
end;
    

function TRTSFormInput.getSelectedStickyItem: TABCustomItem;
begin
        Exit(Self.selectedStickyItem);
end;
    

procedure TRTSFormInput.setSelectedStickyItem(selectedStickyItem: TABCustomItem);
begin
        Self.selectedStickyItem := selectedStickyItem;
end;
    

function TRTSFormInput.getSelectedStickyItemIndex: Integer;
begin
        Exit(Self.selectedStickyItemIndex);
end;
    

procedure TRTSFormInput.setSelectedStickyItemIndex(selectedStickyItemIndex: Integer);
begin
        Self.selectedStickyItemIndex := selectedStickyItemIndex;
end;
    

function TRTSFormInput.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

