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
// package org.allbinary.media.image
unit ImageModifierUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, ImageUtil;

type
  {AB:TYPES}
  TImageModifierUtil = class(TObject)
  public
    imageUtil: TImageUtil;
    colorArray: TArray<Integer>;
    class var instance: TImageModifierUtil;
    procedure InitFields;
    constructor Create;
        class function getInstanceOrCreate: TImageModifierUtil; static;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure setAlpha(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer); virtual;
        function getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>; virtual;
        procedure handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage); virtual;
        procedure reset; virtual;
  end;

implementation
uses
  ImageCreationUtil, Anchor, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TImageModifierUtil.InitFields;
begin
  Self.imageUtil := TImageUtil.getInstance();
  Self.colorArray := TJava.NewArray<Integer>(1);
end;

constructor TImageModifierUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageModifierUtil.getInstanceOrCreate: TImageModifierUtil;
begin
        Exit(TImageModifierUtil.instance);
end;
    

procedure TImageModifierUtil.setBasicColorP(basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
var
  newBufferedImage: TBufferedImage;
  r: SmallInt;
  g: SmallInt;
  b: SmallInt;
  width: Integer;
  height: Integer;
  colorModel_: TColorModel;
  dataElements: TObject;
  ax: Integer;
  rx: Integer;
  gx: Integer;
  bx: Integer;
  index2: Integer;
  index: Integer;
begin
        newBufferedImage := Self.imageUtil.getBufferedImage(image_);
        r := basicColor_.red;
        g := basicColor_.green;
        b := basicColor_.blue;
        width := image_.getWidth();
        height := image_.getHeight();
        
        
        
        
        
        
        for index := 0 to width - 1 do begin
            for index2 := 0 to height - 1 do begin
                colorModel_ := newBufferedImage.getColorModel();
                dataElements := TJava.Box(newBufferedImage.getRaster().getDataElements(index, index2, nil));
                ax := colorModel_.getAlpha(dataElements);
                rx := colorModel_.getRed(dataElements);
                gx := colorModel_.getGreen(dataElements);
                bx := colorModel_.getBlue(dataElements);
                if (((rx) <> (0)) or ((gx) <> (0))) or ((bx) <> (0)) then begin
                    newBufferedImage.setRGB(index, index2, (((((ax) shl (24))) or (((r) shl (16)))) or (((g) shl (8)))) or (Integer((b))));
                end;
            end;
        end;
end;
    

procedure TImageModifierUtil.changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
var
  newBufferedImage: TBufferedImage;
  MAX: Single;
  r: Single;
  g: Single;
  b: Single;
  width: Integer;
  height: Integer;
  colorModel_: TColorModel;
  dataElements: TObject;
  ax: Integer;
  rx: Integer;
  gx: Integer;
  bx: Integer;
  index2: Integer;
  index: Integer;
begin
        newBufferedImage := Self.imageUtil.getBufferedImage(image_);
        MAX := 255.0;
        r := (((1.0 * (basicColor_.red)))) / (MAX);
        g := (((1.0 * (basicColor_.green)))) / (MAX);
        b := (((1.0 * (basicColor_.blue)))) / (MAX);
        width := image_.getWidth();
        height := image_.getHeight();
        
        
        
        
        
        
        for index := 0 to width - 1 do begin
            for index2 := 0 to height - 1 do begin
                colorModel_ := newBufferedImage.getColorModel();
                dataElements := TJava.Box(newBufferedImage.getRaster().getDataElements(index, index2, nil));
                ax := colorModel_.getAlpha(dataElements);
                rx := colorModel_.getRed(dataElements);
                gx := colorModel_.getGreen(dataElements);
                bx := colorModel_.getBlue(dataElements);
                rx := Integer(Trunc((rx) * (r)));
                gx := Integer(Trunc((gx) * (g)));
                bx := Integer(Trunc((bx) * (b)));
                newBufferedImage.setRGB(index, index2, (((((ax) shl (24))) or (((rx) shl (16)))) or (((gx) shl (8)))) or ((bx)));
            end;
        end;
end;
    

procedure TImageModifierUtil.setAlpha(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer);
var
  alpha: ShortInt;
  newBufferedImage: TBufferedImage;
  width: Integer;
  height: Integer;
  raster: TWritableRaster;
  index2: Integer;
  index: Integer;
begin
        alpha := ShortInt(alphaInt);
        newBufferedImage := Self.imageUtil.getBufferedImage(image_);
        width := image_.getWidth();
        height := image_.getHeight();
        raster := newBufferedImage.getAlphaRaster();
        for index := 0 to width - 1 do begin
            for index2 := 0 to height - 1 do begin
                raster.getPixel(index, index2, Self.colorArray);
                Self.colorArray[0] := (Integer(alpha)) and (Self.colorArray[0]);
                raster.setPixel(index, index2, Self.colorArray);
            end;
        end;
end;
    

function TImageModifierUtil.getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>;
var
  newImageArray: TArray<TImage>;
  size: Integer;
  originalImage: TImage;
  image_: TImage;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            newImageArray := TJava.NewArray<TImage>(System.Length(originalImageArray));
            size := System.Length(newImageArray);
            
            for index := 0 to size - 1 do begin
                originalImage := originalImageArray[index];
                image_ := TImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
                image_.getGraphics().drawImage(originalImage, 0, 0, TAnchor.TOP_LEFT);
                newImageArray[index] := image_;
            end;
            Exit(newImageArray);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), 'getImageArray', TJava.Box(e));
            Exit(originalImageArray);
            end;
        end;
end;
    

procedure TImageModifierUtil.handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage);
begin
end;
    

procedure TImageModifierUtil.reset;
begin
end;

initialization
  {AB:INITIALIZATION}
  TImageModifierUtil.instance := TImageModifierUtil.Create();
  {AB:END}

end.

