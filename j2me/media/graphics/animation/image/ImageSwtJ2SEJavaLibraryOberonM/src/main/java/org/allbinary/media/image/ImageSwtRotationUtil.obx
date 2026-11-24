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
unit ImageSwtRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Features, GameFeatureFactory, LogUtil, CommonStrings, GC, ImageUtil, Image;

type
  {AB:TYPES}
  TImageSwtRotationUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageUtil: TImageUtil;
    gameFeatureFactory: TGameFeatureFactory;
    features: TFeatures;
    NO_COPY: string;
    class var instance: TImageSwtRotationUtil;
    procedure InitFields;
        class function getInstance: TImageSwtRotationUtil; static;
        constructor Create;
        function getRotatedImage(bufferedImage: TImage; totalAngle: Integer): TImage; virtual;
        function getRotatedImage2(bufferedImage: TImage; newBufferedImage: TImage; gc_: TGC; angle: Single): TImage;
        function rotateImage(originalSwtImage: TImage; newSwtImage: TImage; gc_: TGC; totalAngle: Integer): TImage; virtual;
        function getRotatedImageSWT(bufferedImage: TImage; newSwtImage: TImage; gc_: TGC; totalAngle: Integer): TImage; virtual;
        function getRotatedImages(bufferedImage: TImage; numberOfFrames: Integer; totalAngle: Integer): TArray<TImage>; virtual;
        function createSpriteImage(bufferedImageArray: TArray<TImage>): TImage; virtual;
  end;

implementation
uses
  SWT, ImageData;


{AB:CODE}

procedure TImageSwtRotationUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageUtil := TImageUtil.getInstance();
  Self.gameFeatureFactory := TGameFeatureFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.NO_COPY := 'SWT should not copy images after initial loading as the alpha is not honored';
end;
    

class function TImageSwtRotationUtil.getInstance: TImageSwtRotationUtil;
begin
        Exit(TImageSwtRotationUtil.instance);
end;
    

constructor TImageSwtRotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageSwtRotationUtil.getRotatedImage(bufferedImage: TImage; totalAngle: Integer): TImage;
begin
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(bufferedImage);
        end;
        Exit(bufferedImage);
end;
    

function TImageSwtRotationUtil.getRotatedImage2(bufferedImage: TImage; newBufferedImage: TImage; gc_: TGC; angle: Single): TImage;
begin
        if not (Self.features.isFeature(Self.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then begin
            Self.logUtil.putF(Self.NO_COPY, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Exit(bufferedImage);
        end;
        Exit(bufferedImage);
end;
    

function TImageSwtRotationUtil.rotateImage(originalSwtImage: TImage; newSwtImage: TImage; gc_: TGC; totalAngle: Integer): TImage;
begin
        Exit(Self.getRotatedImage2(originalSwtImage, newSwtImage, gc_, totalAngle));
end;
    

function TImageSwtRotationUtil.getRotatedImageSWT(bufferedImage: TImage; newSwtImage: TImage; gc_: TGC; totalAngle: Integer): TImage;
begin
        Exit(Self.getRotatedImage2(bufferedImage, newSwtImage, gc_, totalAngle));
end;
    

function TImageSwtRotationUtil.getRotatedImages(bufferedImage: TImage; numberOfFrames: Integer; totalAngle: Integer): TArray<TImage>;
var
  bufferedImageArray: TArray<TImage>;
  angle: Integer;
  size: Integer;
  index: Integer;
begin
        bufferedImageArray := TJava.NewArray<TImage>(numberOfFrames);
        
        size := System.Length(bufferedImageArray);
        for index := 0 to size - 1 do begin
            angle := (((totalAngle) div (size))) * (index);
            bufferedImageArray[index] := Self.getRotatedImage(bufferedImage, angle);
        end;
        Exit(bufferedImageArray);
end;
    

function TImageSwtRotationUtil.createSpriteImage(bufferedImageArray: TArray<TImage>): TImage;
var
  columns: Integer;
  rows: Integer;
  size: Integer;
  firstBufferedImage: TImage;
  imageData_: TImageData;
  bufferedImage: TImage;
  gc_: TGC;
  columnIndex: Integer;
  rowIndex: Integer;
  nextBufferedImage: TImage;
  index: Integer;
begin
        columns := 9;
        rows := 0;
        size := System.Length(bufferedImageArray);
        if (size) < (columns) then begin
            columns := size;
        end;
        rows := ((size) div (columns));
        if ((size) mod (columns)) <> (0) then begin
            Inc(rows);
        end;
        firstBufferedImage := bufferedImageArray[0];
        imageData_ := firstBufferedImage.getImageData();
        bufferedImage := Self.imageUtil.create_((imageData_.width) * (columns), (imageData_.height) * (rows));
        gc_ := TGC.Create(bufferedImage);
        gc_.setAntialias(TSWT.ON_);
        gc_.setInterpolation(TSWT.HIGH);
        columnIndex := 0;
        rowIndex := 0;
        
        for index := 0 to size - 1 do begin
            if (((index) div (9)) <> (0)) and (((index) mod (9)) = (0)) then begin
                Inc(rowIndex);
                columnIndex := 0;
            end;
            nextBufferedImage := bufferedImageArray[index];
            imageData_ := nextBufferedImage.getImageData();
            gc_.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, (imageData_.width) * (columnIndex), (imageData_.height) * (rowIndex), imageData_.width, imageData_.height);
            Inc(columnIndex);
        end;
        gc_.dispose_();
        Exit(bufferedImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageSwtRotationUtil.instance := TImageSwtRotationUtil.Create();
  {AB:END}

end.

