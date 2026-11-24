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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageCache;

type
  {AB:TYPES}
  TImageScaleUtil = class(TObject)
  public
    class var instance: TImageScaleUtil;
        class function getInstance: TImageScaleUtil; static;
        constructor Create;
        function createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage; virtual;
        function createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage; virtual;
        function createImage(imageCache_: TImageCache; originalImage: TImage; scaleX: Single; scaleY: Single; cached: Boolean): TImage; virtual;
        function createImageInternal(originalImage: TImage; scaleX: Single; scaleY: Single): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, PlaynImmutableImage, PlaynMutableImage, CanvasImage, CanvasSurface;


{AB:CODE}
    

class function TImageScaleUtil.getInstance: TImageScaleUtil;
begin
        Exit(TImageScaleUtil.instance);
end;
    

constructor TImageScaleUtil.Create;
begin
    inherited Create;
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
begin
        Exit(Self.createImageInternal(originalImage, scaleX, scaleY));
end;
    

// throws Exception
function TImageScaleUtil.createImageInternal(originalImage: TImage; scaleX: Single; scaleY: Single): TImage;
var
  image_: TImage;
  originalPlayNImage: TImage;
  originalHTMLImage: TPlaynImmutableImage;
  originalHTMLImage_2: TPlaynMutableImage;
  htmlImage: TPlaynMutableImage;
  canvasImage_: TCanvasImage;
  canvasSurface_: TCanvasSurface;
begin
        image_ := TImageCreationUtil.getInstance().createImageWH(Integer(Trunc(((originalImage.getWidth()) * (scaleX)))), Integer(Trunc(((originalImage.getHeight()) * (scaleY)))));
        if image_.isMutable() then begin
            originalPlayNImage := nil;
            if originalImage.isMutable() then begin
                originalHTMLImage_2 := TPlaynMutableImage(TJava.ToObject(originalImage));
                originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage_2.getImage()));
            end else begin
                originalHTMLImage := TPlaynImmutableImage(TJava.ToObject(originalImage));
                originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage.getImage()));
            end;
            htmlImage := TPlaynMutableImage(TJava.ToObject(image_));
            canvasImage_ := TCanvasImage(TJava.ToObject(htmlImage.getImage()));
            canvasSurface_ := htmlImage.getCanvasSurface(canvasImage_);
            canvasSurface_.drawImage(originalPlayNImage, 0, 0, image_.getWidth(), image_.getHeight(), 0, 0, originalImage.getWidth(), originalImage.getHeight());
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageScaleUtil.instance := TImageScaleUtil.Create();
  {AB:END}

end.

