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
// package org.allbinary.game.layer.item
unit LayerInterfaceFactoryImageItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, ABCustomImageItem, Animation, BasicColor, LayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TLayerInterfaceFactoryImageItem = class(TABCustomImageItem)
  public
    animationArray: TArray<TAnimation>;
    layerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface;
    procedure InitFields;
        constructor Create(label_: string; img: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; animationArray: TArray<TAnimation>; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface);
        function getLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TLayerInterfaceFactoryImageItem.InitFields;
begin
  
  
end;
    

constructor TLayerInterfaceFactoryImageItem.Create(label_: string; img: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; animationArray: TArray<TAnimation>; layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface);
begin
        inherited Create(label_, img, layout, altText, basicColor_, 0);
        InitFields;
        Self.animationArray := animationArray;
        Self.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface_;
end;
    

function TLayerInterfaceFactoryImageItem.getLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface;
begin
        Exit(Self.layerInterfaceFactoryInterface);
end;
    

procedure TLayerInterfaceFactoryImageItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  index: Integer;
begin
        inherited paintXY(graphics_, x, y);
        index := System.Length(Self.animationArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationArray[index].paintXY(graphics_, x, y);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

