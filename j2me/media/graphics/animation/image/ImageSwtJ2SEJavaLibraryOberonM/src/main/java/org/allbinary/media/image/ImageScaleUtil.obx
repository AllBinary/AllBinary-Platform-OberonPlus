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
unit ImageScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Features, GameFeatureFactory, ImageCache, LogUtil, CommonStrings, ImageCopyUtil;

type
  {AB:TYPES}
  TImageScaleUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageCopyUtil: TImageCopyUtil;
    gameFeatureFactory: TGameFeatureFactory;
    features: TFeatures;
    NO_COPY: string;
    class var instance: TImageScaleUtil;
    procedure InitFields;
        class function getInstance: TImageScaleUtil; static;
        constructor Create;
        function createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage; virtual;
        function createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage; virtual;
        procedure scale2(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single); virtual;
        procedure scale(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single; mutable: Boolean); virtual;
  end;

implementation

{AB:CODE}

procedure TImageScaleUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageCopyUtil := TImageCopyUtil.getInstance();
  Self.gameFeatureFactory := TGameFeatureFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.NO_COPY := 'SWT should not copy images after initial loading as the alpha is not honored';
end;
    

class function TImageScaleUtil.getInstance: TImageScaleUtil;
begin
        Exit(TImageScaleUtil.instance);
end;
    

constructor TImageScaleUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageScaleUtil.createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage;
begin
        Exit(Self.createImage3(imageCache_, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True));
end;
    

// throws Exception
function TImageScaleUtil.createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage;
var
  width: Integer;
  height: Integer;
  scaleX: Single;
  scaleY: Single;
  scaledImage: TImage;
begin
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(originalImage);
        end;
        width := originalImage.getWidth();
        height := originalImage.getHeight();
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        scaledImage := Self.imageCopyUtil.createImageWH(originalImage, Integer(Trunc(((scaleX) * (width)))), Integer(Trunc(((scaleY) * (height)))), mutable);
        Exit(scaledImage);
end;
    

// throws Exception
procedure TImageScaleUtil.scale2(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single);
begin
        Self.scale(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, True);
end;
    

// throws Exception
procedure TImageScaleUtil.scale(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single; mutable: Boolean);
var
  width: Integer;
  height: Integer;
  scaledImage: TImage;
begin
        width := originalImage.getWidth();
        height := originalImage.getHeight();
        scaledImage := Self.imageCopyUtil.createImageWH(originalImage, Integer(Trunc(((scaleX) * (width)))), Integer(Trunc(((scaleY) * (height)))), mutable);
        originalImageArray[0] := scaledImage;
end;

initialization
  {AB:INITIALIZATION}
  TImageScaleUtil.instance := TImageScaleUtil.Create();
  {AB:END}

end.

