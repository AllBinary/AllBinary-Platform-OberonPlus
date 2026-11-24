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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Features, BasicColor, LogUtil, ImageCopyUtil;

type
  {AB:TYPES}
  TImageModifierUtil = class(TObject)
  public
    logUtil: TLogUtil;
    imageCopyUtil: TImageCopyUtil;
    features: TFeatures;
    class var instance: TImageModifierUtil;
    procedure InitFields;
    constructor Create;
        class function getInstanceOrCreate: TImageModifierUtil; static;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure setAlpha(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer); virtual;
        procedure setAlphaSWT(image_: TImage; alphaInt: Integer); virtual;
        function getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>; virtual;
        procedure handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage); virtual;
        procedure reset; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, ModifierOpenGLESImageProcessor, OpenGLESImage, CommonStrings, PreLogUtil, ImageData, SwtImmutableImage, SwtMutableImage;


{AB:CODE}

procedure TImageModifierUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageCopyUtil := TImageCopyUtil.getInstance();
  Self.features := TFeatures.getInstance();
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
  newBufferedImage: TImage;
  swtImage: TSwtImmutableImage;
  swtImage_2: TSwtMutableImage;
  r: SmallInt;
  g: SmallInt;
  b: SmallInt;
  width: Integer;
  height: Integer;
  imageData_: TImageData;
  rx: Integer;
  gx: Integer;
  bx: Integer;
  index3: Integer;
  index2: Integer;
  index: Integer;
begin
        
        if image_.isMutable() then begin
            swtImage_2 := TSwtMutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage_2.getImage()));
        end else begin
            swtImage := TSwtImmutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage.getImage()));
        end;
        r := basicColor_.red;
        g := basicColor_.green;
        b := basicColor_.blue;
        width := image_.getWidth();
        height := image_.getHeight();
        imageData_ := newBufferedImage.getImageData();
        if (imageData_.depth) = (24) then begin
            
            
            
            
            for index := 0 to width - 1 do begin
                for index2 := 0 to height - 1 do begin
                    index3 := (((index2) * (imageData_.bytesPerLine))) + (((index) * (4)));
                    rx := (((imageData_.data[index3]) and ($FF))) shl (16);
                    gx := (((imageData_.data[(index3) + (1)]) and ($FF))) shl (8);
                    bx := ((imageData_.data[(index3) + (2)]) and ($FF));
                    if (((rx) <> (0)) or ((gx) <> (0))) or ((bx) <> (0)) then begin
                        imageData_.data[index3] := ShortInt(r);
                        imageData_.data[(index3) + (1)] := ShortInt(g);
                        imageData_.data[(index3) + (2)] := ShortInt(b);
                    end;
                end;
            end;
        end;
end;
    

procedure TImageModifierUtil.changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
var
  openGLESImage_: TOpenGLESImage;
  newBufferedImage: TImage;
  swtImage: TSwtImmutableImage;
  swtImage_2: TSwtMutableImage;
  MAX: Single;
  r: Single;
  g: Single;
  b: Single;
  rx: Integer;
  gx: Integer;
  bx: Integer;
  imageData_: TImageData;
  size: Integer;
  index: Integer;
begin
        if Self.features.isFeature(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            if (image_.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(image_)));
                openGLESImage_.imageProcessor := TModifierOpenGLESImageProcessor.getInstance();
                openGLESImage_.openGLESImageProperties.redf := basicColor_.getRedComponent();
                openGLESImage_.openGLESImageProperties.greenf := basicColor_.getGreenComponent();
                openGLESImage_.openGLESImageProperties.bluef := basicColor_.getBlueComponent();
                Exit;
            end;
        end;
        
        if image_.isMutable() then begin
            swtImage_2 := TSwtMutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage_2.getImage()));
        end else begin
            swtImage := TSwtImmutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage.getImage()));
        end;
        MAX := 255.0;
        r := (((1.0 * (basicColor_.red)))) / (MAX);
        g := (((1.0 * (basicColor_.green)))) / (MAX);
        b := (((1.0 * (basicColor_.blue)))) / (MAX);
        
        
        
        imageData_ := newBufferedImage.getImageData();
        if (imageData_.depth) = (24) then begin
            size := System.Length(imageData_.data);
            index := 0;
            while (index) < (size) do begin
                rx := (((imageData_.data[index]) and ($FF))) shl (16);
                gx := (((imageData_.data[(index) + (1)]) and ($FF))) shl (8);
                bx := ((imageData_.data[(index) + (2)]) and ($FF));
                rx := Integer(Trunc((rx) * (r)));
                gx := Integer(Trunc((gx) * (g)));
                bx := Integer(Trunc((bx) * (b)));
                imageData_.data[index] := ShortInt(rx);
                imageData_.data[(index) + (1)] := ShortInt(gx);
                imageData_.data[(index) + (2)] := ShortInt(bx);
                index := (index) + (4);
            end;
        end;
end;
    

procedure TImageModifierUtil.setAlpha(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer);
var
  openGLESImage_: TOpenGLESImage;
begin
        if Self.features.isFeature(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            if (image_.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(image_)));
                openGLESImage_.imageProcessor := TModifierOpenGLESImageProcessor.getInstance();
                openGLESImage_.openGLESImageProperties.alphaf := ((alphaInt)) / (255.0);
                Exit;
            end;
        end;
        Self.setAlphaSWT(image_, alphaInt);
end;
    

procedure TImageModifierUtil.setAlphaSWT(image_: TImage; alphaInt: Integer);
var
  alpha: ShortInt;
  newBufferedImage: TImage;
  swtImage: TSwtImmutableImage;
  swtImage_2: TSwtMutableImage;
begin
        alpha := ShortInt(alphaInt);
        
        if image_.isMutable() then begin
            swtImage_2 := TSwtMutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage_2.getImage()));
        end else begin
            swtImage := TSwtImmutableImage(TJava.ToObject(image_));
            newBufferedImage := TImage(TJava.ToObject(swtImage.getImage()));
        end;
        newBufferedImage.getImageData().alpha := alpha;
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
                image_ := Self.imageCopyUtil.createImage(originalImage);
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

