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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, CommonStrings, LogUtil, ResourceCallbackStrings, Callback, CoreImage, HTMLPlaynUtil;

type
  {AB:TYPES}
  TImageCopyCallback = class(TInterfacedObject, ICallback)
  public
    imageModifierUtil: TImageModifierUtil;
    imageArray: TArray<TImage>;
    index: Integer;
    image: TImage;
    image3: TCoreImage;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageModifierUtil_: TImageModifierUtil; imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TCoreImage);
        procedure onSuccess(resource: TObject); virtual;
        procedure onFailure(e: SysUtils.Exception); virtual;
  end;
  TImageModifierUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    resourceCallbackStrings: TResourceCallbackStrings;
    playnUtil: THTMLPlaynUtil;
    alphaArray: TArray<Boolean>;
    procedure InitFields;
    constructor Create;
        class function getInstanceOrCreate: TImageModifierUtil; static;
        procedure setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Integer); virtual;
        procedure setAlphaF(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single); virtual;
        procedure setAlpha2(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single); virtual;
        procedure setAlpha3(image_: TImage; alpha: Single); virtual;
        function getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>; virtual;
        procedure handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage); virtual;
        procedure copy(imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TCoreImage); virtual;
        procedure reset; virtual;
  end;

implementation
uses
  Graphics, Anchor, StringMaker, PlaynImage, Canvas, ImageImpl;


{AB:CODE}

procedure TImageCopyCallback.InitFields;
begin
  
  
  
  
  
end;

function TImageCopyCallback.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TImageCopyCallback.Create(imageModifierUtil_: TImageModifierUtil; imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TCoreImage);
begin
        inherited Create;
        InitFields;
            Self.imageModifierUtil := imageModifierUtil_;
            Self.imageArray := imageArray;
            Self.index := index;
            Self.image := image_;
            Self.image3 := image3;
end;
    

    procedure TImageCopyCallback.onSuccess(resource: TObject);
var
  logUtil_: TLogUtil;
  resourceCallbackStrings_: TResourceCallbackStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            resourceCallbackStrings_ := Self.imageModifierUtil.resourceCallbackStrings;
            logUtil_.putF(resourceCallbackStrings_.DONE + Self.image.getName(), TJava.Box(Self), resourceCallbackStrings_.HANDLE_IMAGE);
            Self.imageModifierUtil.copy(Self.imageArray, Self.index, Self.image, Self.image3);
end;
    

    procedure TImageCopyCallback.onFailure(e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
  resourceCallbackStrings_: TResourceCallbackStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            resourceCallbackStrings_ := Self.imageModifierUtil.resourceCallbackStrings;
            logUtil_.put(TStringMaker.Create().append(Self.imageModifierUtil.commonStrings.EXCEPTION_LABEL).append(resourceCallbackStrings_.ERROR).append(Self.image.getName()).toString(), TJava.Box(Self), resourceCallbackStrings_.HANDLE_IMAGE, TJava.Box(e));
end;

procedure TImageModifierUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.resourceCallbackStrings := TResourceCallbackStrings.getInstance();
  Self.playnUtil := THTMLPlaynUtil.getInstance();
  
end;

constructor TImageModifierUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageModifierUtil.getInstanceOrCreate: TImageModifierUtil;
begin
        Exit(TImageModifierUtil.Create());
end;
    

procedure TImageModifierUtil.setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Integer);
var
  alphaF: Single;
  alphaFloat: Single;
begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        Self.setAlphaF(originalImage, image_, imageIndex, alphaFloat);
end;
    

procedure TImageModifierUtil.setAlphaF(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single);
begin
        if Self.alphaArray[imageIndex] then begin
            Self.alphaArray[imageIndex] := False;
            Self.setAlpha2(originalImage, image_, imageIndex, alpha);
        end;
end;
    

procedure TImageModifierUtil.setAlpha2(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single);
var
  htmlImage: TPlaynImage;
  canvasImage: TImageImpl;
  originalPlaynImage: TCoreImage;
  canvas_: TCanvas;
begin
        htmlImage := TPlaynImage(TJava.ToObject(image_));
        canvasImage := TImageImpl(TJava.ToObject(htmlImage.getImage()));
        originalPlaynImage := TCoreImage(TJava.ToObject((TPlaynImage(TJava.ToObject(originalImage))).getImage()));
        canvas_ := Self.playnUtil.getCanvas(canvasImage);
        canvas_.clear();
        canvas_.setAlpha(alpha);
        canvas_.draw(originalPlaynImage, 0, 0);
end;
    

procedure TImageModifierUtil.setAlpha3(image_: TImage; alpha: Single);
var
  alphaF: Single;
  alphaFloat: Single;
  htmlImage: TPlaynImage;
  canvasImage: TImageImpl;
  canvas_: TCanvas;
begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        htmlImage := TPlaynImage(TJava.ToObject(image_));
        canvasImage := TImageImpl(TJava.ToObject(htmlImage.getImage()));
        canvas_ := Self.playnUtil.getCanvas(canvasImage);
        canvas_.setAlpha(alphaFloat);
end;
    

function TImageModifierUtil.getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>;
var
  size: Integer;
  imageArray: TArray<TImage>;
  index: Integer;
begin
        size := System.Length(originalImageArray);
        Self.alphaArray := TJava.NewArray<Boolean>(size);
        imageArray := TJava.NewArray<TImage>(size);
        for index := 0 to size - 1 do begin
            imageArray[index] := originalImageArray[index];
            Self.handleImage(imageArray, index, originalImageArray[index]);
        end;
        Exit(imageArray);
end;
    

procedure TImageModifierUtil.handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage);
var
  image3: TCoreImage;
  callback_: TCallback;
begin
        image3 := TCoreImage(TJava.ToObject((TPlaynImage(TJava.ToObject(image_))).getImage()));
        if (image3) <> (nil) then begin
            if ((image3.isReady()) or (((image3.width()) + (image3.height())) <= (0))) or (TJava.Equals(image_.getName(), Self.resourceCallbackStrings.FROM_DATA)) then begin
                Self.copy(imageArray, index, image_, image3);
            end else begin
                callback_ := TImageCopyCallback.Create(Self, imageArray, index, image_, image3);
                image3.addCallback(callback_);
            end;
        end else begin
            Self.logUtil.putF((Self.resourceCallbackStrings.NULL) + (image_.isMutable()), TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
        end;
end;
    

procedure TImageModifierUtil.copy(imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TCoreImage);
var
  image2: TImage;
  graphics_: TGraphics;
begin
        try
            image2 := TImage.createImageWH(Integer(Trunc(image3.width())), Integer(Trunc(image3.height())));
            graphics_ := image2.getGraphics();
            graphics_.drawImage(image_, 0, 0, TAnchor.TOP_LEFT);
            imageArray[index] := image2;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + Self.resourceCallbackStrings.DONE, TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
            end;
        end;
end;
    

procedure TImageModifierUtil.reset;
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.alphaArray);
        for index := 0 to size - 1 do begin
            Self.alphaArray[index] := True;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

