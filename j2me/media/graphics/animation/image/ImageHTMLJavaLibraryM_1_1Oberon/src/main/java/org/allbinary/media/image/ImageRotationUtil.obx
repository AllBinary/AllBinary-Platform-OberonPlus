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
unit ImageRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, CanvasSurface;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    class var instance: TImageRotationUtil;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        function rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer): TImage; virtual;
        function rotateImageCanvasSurfaceClear(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface; totalAngle: Integer): TImage; virtual;
        function rotateImageCanvasSurface(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface; totalAngle: Integer): TImage; virtual;
        procedure drawImage(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface); virtual;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, PlaynImmutableImage, PlaynMutableImage, CanvasImage;


{AB:CODE}
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
end;
    

function TImageRotationUtil.rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer): TImage;
var
  htmlImage: TPlaynMutableImage;
  canvasImage_: TCanvasImage;
  canvasSurface_: TCanvasSurface;
  image2: TImage;
begin
        if image_.isMutable() then begin
            htmlImage := TPlaynMutableImage(TJava.ToObject(image_));
            canvasImage_ := TCanvasImage(TJava.ToObject(htmlImage.getImage()));
            canvasSurface_ := htmlImage.getCanvasSurface(canvasImage_);
            canvasSurface_.translate(TJava.Divide(originalImage.getWidth(), 2), TJava.Divide(originalImage.getHeight(), 2));
            image2 := Self.rotateImageCanvasSurface(originalImage, image_, canvasSurface_, totalAngle);
            Self.drawImage(originalImage, image_, canvasSurface_);
            Exit(image2);
        end else begin
            Exit(nil);
        end;
end;
    

function TImageRotationUtil.rotateImageCanvasSurfaceClear(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface; totalAngle: Integer): TImage;
begin
        if image_.isMutable() then begin
            canvasSurface_.translate(TJava.Divide(-originalImage.getWidth(), 2), TJava.Divide(-originalImage.getHeight(), 2));
            canvasSurface_.clear();
            canvasSurface_.translate(TJava.Divide(originalImage.getWidth(), 2), TJava.Divide(originalImage.getHeight(), 2));
            Exit(Self.rotateImageCanvasSurface(originalImage, image_, canvasSurface_, totalAngle));
        end else begin
            Exit(nil);
        end;
end;
    

function TImageRotationUtil.rotateImageCanvasSurface(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface; totalAngle: Integer): TImage;
begin
        if image_.isMutable() then begin
            canvasSurface_.rotate((1.0 * (DegToRad(totalAngle))));
            Exit(image_);
        end else begin
            Exit(nil);
        end;
end;
    

procedure TImageRotationUtil.drawImage(originalImage: TImage; image_: TImage; canvasSurface_: TCanvasSurface);
var
  originalPlayNImage: TImage;
  originalHTMLImage: TPlaynImmutableImage;
  originalHTMLImage_2: TPlaynMutableImage;
begin
        originalPlayNImage := nil;
        if originalImage.isMutable() then begin
            originalHTMLImage_2 := TPlaynMutableImage(TJava.ToObject(originalImage));
            originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage_2.getImage()));
        end else begin
            originalHTMLImage := TPlaynImmutableImage(TJava.ToObject(originalImage));
            originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage.getImage()));
        end;
        canvasSurface_.drawImage(originalPlayNImage, TJava.Divide(-originalImage.getWidth(), 2), TJava.Divide(-originalImage.getHeight(), 2));
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
var
  image_: TImage;
  rotatedImage: TImage;
begin
        image_ := TImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
        rotatedImage := Self.rotateImage(originalImage, image_, rotationInDegrees);
        if (rotatedImage) = (nil) then begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
        Exit(rotatedImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

