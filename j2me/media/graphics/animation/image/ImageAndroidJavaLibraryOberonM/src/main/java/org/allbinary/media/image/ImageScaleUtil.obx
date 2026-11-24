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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Matrix, Image, ImageCache, LogUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TImageScaleUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    anchor: Integer;
    imageBasicArrayList: TBasicArrayList;
    scaledImageBasicArrayList: TBasicArrayList;
    scaleXBasicArrayList: TBasicArrayList;
    scaleYBasicArrayList: TBasicArrayList;
    class var instance: TImageScaleUtil;
    procedure InitFields;
        class function getInstance: TImageScaleUtil; static;
        constructor Create;
        function createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage; virtual;
        function createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage; virtual;
        function createImage(imageCache_: TImageCache; originalImage: TImage; scaleX: Single; scaleY: Single; cached: Boolean): TImage; virtual;
        function getScaledImage(imageCache_: TImageCache; originalImage: TImage; scaleX: Single; scaleY: Single; width: Integer; height: Integer; cached: Boolean): TImage;
        procedure scale(image_: TImage; matrix_: TMatrix; scaleX: Single; scaleY: Single);
  end;

implementation
uses
  Bitmap, Canvas, NullImage, Anchor, BasicArrayListD, AndroidImageInterface;


{AB:CODE}

procedure TImageScaleUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.anchor := TAnchor.TOP_LEFT;
  Self.imageBasicArrayList := TBasicArrayListD.Create();
  Self.scaledImageBasicArrayList := TBasicArrayListD.Create();
  Self.scaleXBasicArrayList := TBasicArrayListD.Create();
  Self.scaleYBasicArrayList := TBasicArrayListD.Create();
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
  scaleX: Single;
  scaleY: Single;
begin
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        Exit(Self.createImage(imageCache_, originalImage, scaleX, scaleY, cached));
end;
    

// throws Exception
function TImageScaleUtil.createImage(imageCache_: TImageCache; originalImage: TImage; scaleX: Single; scaleY: Single; cached: Boolean): TImage;
var
  originalAndroidImage: IAndroidImageInterface;
  originalBitmap: TBitmap;
  width: Integer;
  height: Integer;
  index: Integer;
  alreadyAvailable: Boolean;
  scaleX2Float: Single;
  scaleX2: Single;
  scaleY2Float: Single;
  scaleY2: Single;
  scaledImage: TImage;
begin
        originalAndroidImage := (TJava.ToObject(originalImage) as IAndroidImageInterface);
        originalBitmap := originalAndroidImage.getBitmap();
        width := Integer(Trunc(((originalBitmap.getWidth()) * (scaleX))));
        height := Integer(Trunc(((originalBitmap.getHeight()) * (scaleY))));
        index := Self.imageBasicArrayList.indexOf(TJava.Box(originalImage));
        alreadyAvailable := False;
        if (index) >= (0) then begin
            scaleX2Float := Single(Self.scaleXBasicArrayList.get(index));
            scaleX2 := (scaleX2Float);
            scaleY2Float := Single(Self.scaleYBasicArrayList.get(index));
            scaleY2 := (scaleY2Float);
            if ((scaleX2) = (scaleX)) and ((scaleY2) = (scaleY)) then begin
                alreadyAvailable := True;
            end;
        end;
        if alreadyAvailable then begin
            Exit(TImage(TJava.ToObject(Self.scaledImageBasicArrayList.get(index))));
        end else begin
            scaledImage := Self.getScaledImage(imageCache_, originalImage, scaleX, scaleY, width, height, cached);
            Self.imageBasicArrayList.add(TJava.Box(originalImage));
            Self.scaledImageBasicArrayList.add(TJava.Box(scaledImage));
            Self.scaleXBasicArrayList.add(TJava.Box(scaleX));
            Self.scaleYBasicArrayList.add(TJava.Box(scaleY));
            Exit(scaledImage);
        end;
end;
    

// throws Exception
function TImageScaleUtil.getScaledImage(imageCache_: TImageCache; originalImage: TImage; scaleX: Single; scaleY: Single; width: Integer; height: Integer; cached: Boolean): TImage;
var
  image_: TImage;
  matrix_: TMatrix;
begin
        image_ := TNullImage.NULL_IMAGE;
        if cached then begin
            image_ := imageCache_.get(Self.ClassType.ClassName, width, height);
        end else begin
            image_ := imageCache_.get(Self.commonStrings.CREATE_IMAGE, width, height);
        end;
        if image_.isMutable() then begin
            matrix_ := TMatrix.Create();
            Self.scale(image_, matrix_, scaleX, scaleY);
            image_.getGraphics().drawImage(originalImage, 0, 0, Self.anchor);
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;
    

procedure TImageScaleUtil.scale(image_: TImage; matrix_: TMatrix; scaleX: Single; scaleY: Single);
var
  canvas_: TCanvas;
begin
        matrix_.setScale(scaleX, scaleY);
        canvas_ := ((TJava.ToObject(image_) as IAndroidImageInterface)).getCanvas();
        canvas_.concat(matrix_);
end;

initialization
  {AB:INITIALIZATION}
  TImageScaleUtil.instance := TImageScaleUtil.Create();
  {AB:END}

end.

