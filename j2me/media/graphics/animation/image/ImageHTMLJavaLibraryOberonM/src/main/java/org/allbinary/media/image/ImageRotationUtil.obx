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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    class var instance: TImageRotationUtil;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, PlaynImmutableImage, PlaynMutableImage, CanvasImage, CanvasSurface;


{AB:CODE}
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
var
  image_: TImage;
  originalPlayNImage: TImage;
  originalHTMLImage: TPlaynImmutableImage;
  originalHTMLImage_2: TPlaynMutableImage;
  htmlImage: TPlaynMutableImage;
  canvasImage_: TCanvasImage;
  canvasSurface_: TCanvasSurface;
begin
        image_ := TImageCreationUtil.getInstance().getInstance(originalImage.getWidth(), originalImage.getHeight());
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
            canvasSurface_.translate(TJava.Divide(originalPlayNImage.width(), 2), TJava.Divide(originalPlayNImage.height(), 2));
            canvasSurface_.rotate((1.0 * (DegToRad(rotationInDegrees))));
            canvasSurface_.drawImage(originalPlayNImage, TJava.Divide(-originalPlayNImage.width(), 2), TJava.Divide(-originalPlayNImage.height(), 2));
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

