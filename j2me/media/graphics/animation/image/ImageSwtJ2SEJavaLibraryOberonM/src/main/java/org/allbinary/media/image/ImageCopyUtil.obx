{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImageCopyUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Features, GameFeatureFactory, OpenGLFeatureFactory, OpenGLUtil, OpenGLESImageExclusionUtil, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TImageCopyUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameFeatureFactory: TGameFeatureFactory;
    features: TFeatures;
    openGLFeatureFactory: TOpenGLFeatureFactory;
    openGLUtil: TOpenGLUtil;
    openGLESImageExclusionUtil: TOpenGLESImageExclusionUtil;
    NO_COPY: string;
    UNABLE: string;
    INFORMATION: string;
    LEADERBOARD: string;
    class var instance: TImageCopyUtil;
    procedure InitFields;
        class function getInstance: TImageCopyUtil; static;
        constructor Create;
        function createImageForRotation(originalImage: TImage): TImage; virtual;
        function createImage(originalImage: TImage): TImage; virtual;
        function createImageWH(originalImage: TImage; width: Integer; height: Integer; mutable: Boolean): TImage; virtual;
        function createImage2(originalImage: TImage; width: Integer; height: Integer; mutable: Boolean): TImage; virtual;
        function createImageScale(originalImage: TImage; canvasScale: Single; resize: Boolean): TImage; virtual;
  end;

implementation
uses
  DisplayInfoSingleton, OpenGLESDeviceImageTranslate, OpenGLESImage, OpenGLESImageProperties, ImageData, SwtDeviceComponent, PostLoadSwtImmutableImageProcessor, PostLoadSwtMutableImageProcessor, SwtImmutableImage, SwtMutableImage;


{AB:CODE}

procedure TImageCopyUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gameFeatureFactory := TGameFeatureFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
  Self.openGLUtil := TOpenGLUtil.getInstance();
  Self.openGLESImageExclusionUtil := TOpenGLESImageExclusionUtil.getInstance();
  Self.NO_COPY := 'SWT should not copy images after initial loading as the alpha is not honored';
  Self.UNABLE := 'Unable to scale image without dimensions';
  Self.INFORMATION := 'about_';
  Self.LEADERBOARD := 'leaderboard';
end;
    

class function TImageCopyUtil.getInstance: TImageCopyUtil;
begin
        Exit(TImageCopyUtil.instance);
end;
    

constructor TImageCopyUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageCopyUtil.createImageForRotation(originalImage: TImage): TImage;
var
  image_: TImage;
begin
        if Self.features.isFeature(Self.openGLFeatureFactory.OPENGL) then begin
            image_ := originalImage;
            image_ := Self.openGLUtil.addImage(image_);
            Exit(image_);
        end else begin
            Exit(Self.createImage(originalImage));
        end;
end;
    

// throws Exception
function TImageCopyUtil.createImage(originalImage: TImage): TImage;
var
  originalImage2: TImage;
  openGLESImage_: TOpenGLESImage;
  image_: TImage;
  originalImmutableImage: TSwtImmutableImage;
  originalMutableImage: TSwtMutableImage;
begin
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(originalImage);
        end;
        originalImage2 := originalImage;
        if Self.features.isFeature(Self.openGLFeatureFactory.OPENGL) then begin
            if (originalImage.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(originalImage)));
                originalImage2 := openGLESImage_.openGLBitmap.getImage();
            end;
        end;
        image_ := nil;
        if originalImage2.isMutable() then begin
            originalMutableImage := TSwtMutableImage(TJava.ToObject(originalImage2));
            image_ := TSwtMutableImage.Create(TSwtDeviceComponent.createImage(originalMutableImage.image.getImageData()));
        end else begin
            originalImmutableImage := TSwtImmutableImage(TJava.ToObject(originalImage2));
            image_ := TSwtMutableImage.Create(TSwtDeviceComponent.createImage(originalImmutableImage.image.getImageData()));
        end;
        image_ := Self.openGLUtil.addImage(image_);
        Exit(image_);
end;
    

// throws Exception
function TImageCopyUtil.createImageWH(originalImage: TImage; width: Integer; height: Integer; mutable: Boolean): TImage;
var
  originalImage2: TImage;
  openGLESImage_: TOpenGLESImage;
  image_: TImage;
  originalImmutableImage: TSwtImmutableImage;
  imageData2: TImageData;
  imageData_: TImageData;
  originalMutableImage: TSwtMutableImage;
begin
        originalImage2 := originalImage;
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(originalImage);
        end;
        if Self.features.isFeature(Self.openGLFeatureFactory.OPENGL) then begin
            if Self.openGLESImageExclusionUtil.isCustomScaling(originalImage) then begin
                Exit(Self.createImage2(originalImage, width, height, mutable));
            end;
            if (originalImage.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(originalImage)));
                originalImage2 := openGLESImage_.openGLBitmap.getImage();
            end;
        end;
        image_ := nil;
        if (originalImage2.isMutable()) and (mutable) then begin
            originalMutableImage := TSwtMutableImage(TJava.ToObject(originalImage2));
            if not TJava.IsNull(originalMutableImage.getImage()) then begin
                imageData2 := originalMutableImage.image.getImageData();
                imageData_ := imageData2.scaledTo(width, height);
                image_ := TSwtMutableImage.Create(TSwtDeviceComponent.createImage(imageData_));
            end else begin
                image_ := TSwtMutableImage.Create(originalMutableImage.getName(), TPostLoadSwtMutableImageProcessor.Create(originalMutableImage));
            end;
        end else begin
            originalImmutableImage := TSwtImmutableImage(TJava.ToObject(originalImage2));
            if not TJava.IsNull(originalImmutableImage.getImage()) then begin
                imageData2 := originalImmutableImage.image.getImageData();
                if ((width) > (0)) and ((height) > (0)) then begin
                    imageData_ := imageData2.scaledTo(width, height);
                    image_ := TSwtImmutableImage.Create(originalImage.getName(), TSwtDeviceComponent.createImage(imageData_));
                end else begin
                    Self.logUtil.putF(Self.UNABLE, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                    image_ := TSwtImmutableImage.Create(originalImmutableImage.getName(), TPostLoadSwtImmutableImageProcessor.Create(originalImmutableImage));
                end;
            end else begin
                image_ := TSwtImmutableImage.Create(originalImmutableImage.getName(), TPostLoadSwtImmutableImageProcessor.Create(originalImmutableImage));
            end;
        end;
        image_ := Self.openGLUtil.addImage(image_);
        Exit(image_);
end;
    

// throws Exception
function TImageCopyUtil.createImage2(originalImage: TImage; width: Integer; height: Integer; mutable: Boolean): TImage;
var
  originalImage2: TImage;
  image_: TImage;
  originalImmutableImage: TSwtImmutableImage;
  imageData2: TImageData;
  imageData_: TImageData;
  originalMutableImage: TSwtMutableImage;
  displayInfoSingleton_: TDisplayInfoSingleton;
  openGLESImage_: TOpenGLESImage;
  openGLESImageProperties_: TOpenGLESImageProperties;
  openGLESDeviceImageTranslate_: TOpenGLESDeviceImageTranslate;
  openGLWidth: Integer;
  openGLHeight: Integer;
begin
        originalImage2 := originalImage;
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(originalImage);
        end;
        image_ := nil;
        if Self.features.isFeature(Self.openGLFeatureFactory.OPENGL) then begin
            displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
            if (originalImage.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(originalImage)));
                openGLESImageProperties_ := openGLESImage_.openGLESImageProperties;
                openGLWidth := openGLESImage_.openGLBitmap.getWidth();
                openGLHeight := openGLESImage_.openGLBitmap.getHeight();
                openGLESImageProperties_.scaleX2 := (((width)) / (openGLWidth));
                openGLESImageProperties_.scaleX := openGLESImageProperties_.scaleX2;
                openGLESImageProperties_.scaleY2 := (((height)) / (openGLHeight));
                openGLESImageProperties_.scaleY := openGLESImageProperties_.scaleY2;
                openGLESImageProperties_.scaleX := (openGLESImageProperties_.scaleX) * (0.75);
                openGLESImageProperties_.scaleY := (openGLESImageProperties_.scaleY) * (0.75);
                if ((originalImage.getHeight()) mod (2)) <> (0) then begin
                    openGLESImageProperties_.scaleX2 := (openGLESImageProperties_.scaleX2) + ((1.0) / (openGLWidth));
                    openGLESImageProperties_.scaleY2 := (openGLESImageProperties_.scaleY2) + ((1.0) / (openGLHeight));
                end;
                image_ := openGLESImage_;
            end else begin
                image_ := originalImage;
                openGLESImage_ := TOpenGLESImage(TJava.ToObject(Self.openGLUtil.addImage(image_)));
                openGLESImageProperties_ := openGLESImage_.openGLESImageProperties;
                openGLESImageProperties_.scaleX2 := (1.0 * ((((width)) / (openGLESImage_.getWidth()))));
                openGLESImageProperties_.scaleX := openGLESImageProperties_.scaleX2;
                openGLESImageProperties_.scaleY2 := (1.0 * ((((height)) / (openGLESImage_.getHeight()))));
                openGLESImageProperties_.scaleY := openGLESImageProperties_.scaleY2;
                if image_.getName().startsWith(Self.INFORMATION) then begin
                    openGLESImage_.openGLESImageTranslate := TOpenGLESDeviceImageTranslate.Create();
                    openGLESDeviceImageTranslate_ := TOpenGLESDeviceImageTranslate(TJava.ToObject(openGLESImage_.openGLESImageTranslate));
                    openGLESDeviceImageTranslate_.translateX := TJava.Divide((displayInfoSingleton_.getLastWidth()) / (1.4), openGLESImageProperties_.scaleX);
                    openGLESDeviceImageTranslate_.translateY := TJava.Divide(TJava.Divide(displayInfoSingleton_.getLastHeight(), 4), openGLESImageProperties_.scaleY);
                    openGLESImageProperties_.scaleX := (openGLESImageProperties_.scaleX) * (0.25);
                    openGLESImageProperties_.scaleY := (openGLESImageProperties_.scaleY) * (0.25);
                end else begin
                    openGLESImageProperties_.scaleX := (openGLESImageProperties_.scaleX) * (0.75);
                    openGLESImageProperties_.scaleY := (openGLESImageProperties_.scaleY) * (0.75);
                    if image_.getName().startsWith(Self.LEADERBOARD) then begin
                        openGLESImage_.openGLESImageTranslate := TOpenGLESDeviceImageTranslate.Create();
                        openGLESDeviceImageTranslate_ := TOpenGLESDeviceImageTranslate(TJava.ToObject(openGLESImage_.openGLESImageTranslate));
                        openGLESDeviceImageTranslate_.translateX := TJava.Divide(TJava.Divide(-displayInfoSingleton_.getLastWidth(), 40), openGLESImageProperties_.scaleX);
                    end;
                    if image_.getName().startsWith(Self.LEADERBOARD) then begin
                    end else begin
                        openGLESImageProperties_.scaleX := 1.0;
                        openGLESImageProperties_.scaleY := 1.0;
                    end;
                end;
                image_ := openGLESImage_;
            end;
        end else begin
            if (originalImage2.isMutable()) and (mutable) then begin
                originalMutableImage := TSwtMutableImage(TJava.ToObject(originalImage2));
                if not TJava.IsNull(originalMutableImage.getImage()) then begin
                    imageData2 := originalMutableImage.image.getImageData();
                    imageData_ := imageData2.scaledTo(width, height);
                    image_ := TSwtMutableImage.Create(TSwtDeviceComponent.createImage(imageData_));
                end else begin
                    image_ := TSwtMutableImage.Create(originalMutableImage.getName(), TPostLoadSwtMutableImageProcessor.Create(originalMutableImage));
                end;
            end else begin
                originalImmutableImage := TSwtImmutableImage(TJava.ToObject(originalImage2));
                if not TJava.IsNull(originalImmutableImage.getImage()) then begin
                    imageData2 := originalImmutableImage.image.getImageData();
                    imageData_ := imageData2.scaledTo(width, height);
                    image_ := TSwtImmutableImage.Create(originalImage.getName(), TSwtDeviceComponent.createImage(imageData_));
                end else begin
                    image_ := TSwtImmutableImage.Create(originalImmutableImage.getName(), TPostLoadSwtImmutableImageProcessor.Create(originalImmutableImage));
                end;
            end;
            image_ := Self.openGLUtil.addImage(image_);
        end;
        Exit(image_);
end;
    

// throws Exception
function TImageCopyUtil.createImageScale(originalImage: TImage; canvasScale: Single; resize: Boolean): TImage;
var
  newWidth: Integer;
  newHeight: Integer;
  image_: TImage;
  originalImmutableImage: TSwtImmutableImage;
  originalImageData: TImageData;
  halfWidthDelta: Integer;
  halfHeightDelta: Integer;
  originalPixelArray: TArray<Integer>;
  newPixelArray: TArray<Integer>;
  width: Integer;
  height: Integer;
  i: Integer;
  index2: Integer;
  index: Integer;
  mutableImage2: TSwtMutableImage;
begin
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(originalImage);
        end;
        newWidth := Integer(Trunc(((originalImage.getWidth()) * (canvasScale))));
        newHeight := Integer(Trunc(((originalImage.getHeight()) * (canvasScale))));
        if resize then begin
            if (newWidth) < (newHeight) then begin
                newWidth := newHeight;
            end;
            if (newHeight) < (newWidth) then begin
                newHeight := newWidth;
            end;
        end;
        image_ := Self.createImageWH(originalImage, newWidth, newHeight, True);
        if image_.isMutable() then begin
            originalImageData := (TImage(TJava.ToObject(originalImage.getImage()))).getImageData();
            mutableImage2 := TSwtMutableImage(TJava.ToObject(image_));
            halfWidthDelta := (((newWidth) - (originalImage.getWidth()))) div (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight()))) div (2);
            originalPixelArray := TJava.NewArray<Integer>((originalImage.getWidth()) * (originalImage.getHeight()));
            newPixelArray := TJava.NewArray<Integer>((image_.getWidth()) * (image_.getHeight()));
            width := originalImage.getWidth();
            height := originalImage.getHeight();
            for i := 0 to height - 1 do begin
                originalImageData.getPixels(0, i, width, originalPixelArray, ((i) * (width)));
            end;
            for index := halfWidthDelta to width - 1 do begin
                for index2 := halfHeightDelta to height - 1 do begin
                    newPixelArray[(index) + (((index2) * (width)))] := originalPixelArray[(((index) - (halfWidthDelta))) + (((((index2) - (halfHeightDelta))) * (width)))];
                end;
            end;
            (TImage(TJava.ToObject(mutableImage2.getImage()))).getImageData().setPixels(0, 0, image_.getWidth(), newPixelArray, 0);
            Exit(image_);
        end else begin
            originalImmutableImage := TSwtImmutableImage(TJava.ToObject(image_));
            originalImageData := (TImage(TJava.ToObject(originalImage.getImage()))).getImageData();
            halfWidthDelta := (((newWidth) - (originalImage.getWidth()))) div (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight()))) div (2);
            originalPixelArray := TJava.NewArray<Integer>((originalImage.getWidth()) * (originalImage.getHeight()));
            newPixelArray := TJava.NewArray<Integer>((image_.getWidth()) * (image_.getHeight()));
            width := originalImage.getWidth();
            height := originalImage.getHeight();
            for i := 0 to height - 1 do begin
                originalImageData.getPixels(0, i, width, originalPixelArray, ((i) * (width)));
            end;
            for index := halfWidthDelta to width - 1 do begin
                for index2 := halfHeightDelta to height - 1 do begin
                    newPixelArray[(index) + (((index2) * (width)))] := originalPixelArray[(((index) - (halfWidthDelta))) + (((((index2) - (halfHeightDelta))) * (width)))];
                end;
            end;
            (TImage(TJava.ToObject(originalImmutableImage.getImage()))).getImageData().setPixels(0, 0, image_.getWidth(), newPixelArray, 0);
            Exit(image_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageCopyUtil.instance := TImageCopyUtil.Create();
  {AB:END}

end.

