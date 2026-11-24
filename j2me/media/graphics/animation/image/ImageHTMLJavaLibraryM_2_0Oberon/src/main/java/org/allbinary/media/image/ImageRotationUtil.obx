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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Canvas, HTMLPlaynUtil;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    playnUtil: THTMLPlaynUtil;
    class var instance: TImageRotationUtil;
    procedure InitFields;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        function rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer): TImage; virtual;
        function rotateImageCanvasSurfaceClear(originalImage: TImage; image_: TImage; canvasSurface: TCanvas; totalAngle: Integer): TImage; virtual;
        function rotateImageCanvasSurface(originalImage: TImage; image_: TImage; canvasSurface: TCanvas; totalAngle: Integer): TImage; virtual;
        procedure drawImage(originalImage: TImage; image_: TImage; canvasSurface: TCanvas); virtual;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, PlaynImmutableImage, PlaynMutableImage, CoreImage, ImageImpl;


{AB:CODE}

procedure TImageRotationUtil.InitFields;
begin
  Self.playnUtil := THTMLPlaynUtil.getInstance();
end;
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageRotationUtil.rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer): TImage;
var
  htmlImage: TPlaynMutableImage;
  canvasImage: TImageImpl;
  canvas_: TCanvas;
  image2: TImage;
begin
        if image_.isMutable() then begin
            htmlImage := TPlaynMutableImage(TJava.ToObject(image_));
            canvasImage := TImageImpl(TJava.ToObject(htmlImage.getImage()));
            canvas_ := Self.playnUtil.getCanvas(canvasImage);
            canvas_.save();
            canvas_.clear();
            canvas_.translate(TJava.Divide(originalImage.getWidth(), 2), TJava.Divide(originalImage.getHeight(), 2));
            image2 := Self.rotateImageCanvasSurface(originalImage, image_, canvas_, totalAngle);
            Self.drawImage(originalImage, image_, canvas_);
            canvas_.restore();
            Exit(image2);
        end else begin
            Exit(nil);
        end;
end;
    

function TImageRotationUtil.rotateImageCanvasSurfaceClear(originalImage: TImage; image_: TImage; canvasSurface: TCanvas; totalAngle: Integer): TImage;
begin
        if image_.isMutable() then begin
            canvasSurface.translate(TJava.Divide(-originalImage.getWidth(), 2), TJava.Divide(-originalImage.getHeight(), 2));
            canvasSurface.clear();
            canvasSurface.translate(TJava.Divide(originalImage.getWidth(), 2), TJava.Divide(originalImage.getHeight(), 2));
            Exit(Self.rotateImageCanvasSurface(originalImage, image_, canvasSurface, totalAngle));
        end else begin
            Exit(nil);
        end;
end;
    

function TImageRotationUtil.rotateImageCanvasSurface(originalImage: TImage; image_: TImage; canvasSurface: TCanvas; totalAngle: Integer): TImage;
begin
        if image_.isMutable() then begin
            canvasSurface.rotate((1.0 * (DegToRad(totalAngle))));
            Exit(image_);
        end else begin
            Exit(nil);
        end;
end;
    

procedure TImageRotationUtil.drawImage(originalImage: TImage; image_: TImage; canvasSurface: TCanvas);
var
  originalPlayNImage: TCoreImage;
  originalHTMLImage: TPlaynImmutableImage;
  originalHTMLImage_2: TPlaynMutableImage;
begin
        originalPlayNImage := nil;
        if originalImage.isMutable() then begin
            originalHTMLImage_2 := TPlaynMutableImage(TJava.ToObject(originalImage));
            originalPlayNImage := TCoreImage(TJava.ToObject(originalHTMLImage_2.getImage()));
        end else begin
            originalHTMLImage := TPlaynImmutableImage(TJava.ToObject(originalImage));
            originalPlayNImage := TCoreImage(TJava.ToObject(originalHTMLImage.getImage()));
        end;
        canvasSurface.draw(originalPlayNImage, TJava.Divide(-originalImage.getWidth(), 2), TJava.Divide(-originalImage.getHeight(), 2));
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

