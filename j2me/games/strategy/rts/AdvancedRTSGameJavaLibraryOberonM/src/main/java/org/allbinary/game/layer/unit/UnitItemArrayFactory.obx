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
unit UnitItemArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources, FlagGameResources, ABCustomItem, CommonSeps, BasicColor, ItemArraySingletonFactoryInterface, LayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TUnitItemArrayFactory = class(TInterfacedObject, IItemArraySingletonFactoryInterface)
  public
    commonSeps: TCommonSeps;
    basicColor: TBasicColor;
    resources: TArray<TBasicGameResources>;
    class var ITEMS: TArray<TABCustomItem>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(resources: TArray<TBasicGameResources>);
        function createFlagItem(flagResources: TFlagGameResources; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface): TABCustomItem; virtual;
        function createNamedFlagItem(flagResources: TFlagGameResources; name: string; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface): TABCustomItem; virtual;
        function getItems: TArray<TABCustomItem>; virtual;
        function getResources: TArray<TBasicGameResources>; virtual;
        function indexOf(basicGameResources_: TBasicGameResources): Integer; virtual;
  end;

implementation
uses
  Image, ImageItem, RTSGameStrings, LayerInterfaceFactoryImageItem, RTSLayerTextAnimation, GameFeatureImageCacheFactory, Animation, BasicColorFactory, CustomItemUtil, ImageCache;


{AB:CODE}

procedure TUnitItemArrayFactory.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  
end;

function TUnitItemArrayFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUnitItemArrayFactory.Create(resources: TArray<TBasicGameResources>);
begin
    inherited Create;
    InitFields;
        Self.resources := resources;
end;
    

// throws Exception
function TUnitItemArrayFactory.createFlagItem(flagResources: TFlagGameResources; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface): TABCustomItem;
var
  name: string;
  index: Integer;
begin
        name := flagResources.NAME;
        index := (Pos(TJava.ToString(Self.commonSeps.SPACE), name) - 1);
        if (index) >= (0) then begin
            name := Copy(name, (index) + 1, MaxInt);
        end;
        Exit(Self.createNamedFlagItem(flagResources, name, layerInterfaceFactoryInterface_));
end;
    

// throws Exception
function TUnitItemArrayFactory.createNamedFlagItem(flagResources: TFlagGameResources; name: string; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface): TABCustomItem;
var
  IMAGE_CACHE: TImageCache;
  image_: TImage;
  item: TABCustomItem;
begin
        IMAGE_CACHE := TGameFeatureImageCacheFactory.getInstance();
        image_ := IMAGE_CACHE.getWithKey(TJava.Box(flagResources.RESOURCE_ICON));
        item := TLayerInterfaceFactoryImageItem.Create(name, image_, TImageItem.LAYOUT_DEFAULT, flagResources.NAME, Self.basicColor, TArray<TAnimation>.Create(TRTSLayerTextAnimation.Create(TRTSGameStrings.getInstance().DRAGGABLE, image_)), layerInterfaceFactoryInterface_);
        Exit(item);
end;
    

// throws Exception
function TUnitItemArrayFactory.getItems: TArray<TABCustomItem>;
begin
        Exit(TUnitItemArrayFactory.ITEMS);
end;
    

function TUnitItemArrayFactory.getResources: TArray<TBasicGameResources>;
begin
        Exit(Self.resources);
end;
    

function TUnitItemArrayFactory.indexOf(basicGameResources_: TBasicGameResources): Integer;
var
  index: Integer;
begin
        for index := (System.Length(Self.resources)) - (1) downto 0 do begin
            if (Self.resources[index]) = (basicGameResources_) then begin
                Exit(index);
            end;
        end;
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  TUnitItemArrayFactory.ITEMS := TCustomItemUtil.getInstance().CUSTOM_ITEM_ARRAY;
  {AB:END}

end.

