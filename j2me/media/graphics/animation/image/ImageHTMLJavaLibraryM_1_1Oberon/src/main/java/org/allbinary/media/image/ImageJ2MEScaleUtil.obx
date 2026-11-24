{

  AllBinary Open License Version 1
  Copyright (c) 2023 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImageJ2MEScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, LogUtil;

type
  {AB:TYPES}
  TImageJ2MEScaleUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TImageJ2MEScaleUtil;
    procedure InitFields;
        class function getInstance: TImageJ2MEScaleUtil; static;
        constructor Create;
        function scaleArray(images: TArray<TImage>; width: Integer; height: Integer): TArray<TImage>; virtual;
        function scale(image_: TImage; width: Integer; height: Integer): TImage; virtual;
  end;

implementation
uses
  PlaynImmutableImage, PlaynMutableImage, CanvasImage, CanvasSurface;


{AB:CODE}

procedure TImageJ2MEScaleUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TImageJ2MEScaleUtil.getInstance: TImageJ2MEScaleUtil;
begin
        Exit(TImageJ2MEScaleUtil.instance);
end;
    

constructor TImageJ2MEScaleUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageJ2MEScaleUtil.scaleArray(images: TArray<TImage>; width: Integer; height: Integer): TArray<TImage>;
var
  scaledImages: TArray<TImage>;
  index: Integer;
begin
        scaledImages := TJava.NewArray<TImage>(System.Length(images));
        index := System.Length(images);
        while (TJava.PreDec(index)) >= (0) do begin
            scaledImages[index] := Self.scale(images[index], width, height);
        end;
        Exit(scaledImages);
end;
    

// throws Exception
function TImageJ2MEScaleUtil.scale(image_: TImage; width: Integer; height: Integer): TImage;
var
  originalPlayNImage: TImage;
  originalHTMLImage: TPlaynImmutableImage;
  originalHTMLImage_2: TPlaynMutableImage;
  scaledImage: TImage;
  htmlImage: TPlaynMutableImage;
  canvasImage_: TCanvasImage;
  canvasSurface_: TCanvasSurface;
begin
        originalPlayNImage := nil;
        if image_.isMutable() then begin
            originalHTMLImage_2 := TPlaynMutableImage(TJava.ToObject(image_));
            originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage_2.getImage()));
        end else begin
            originalHTMLImage := TPlaynImmutableImage(TJava.ToObject(image_));
            originalPlayNImage := TImage(TJava.ToObject(originalHTMLImage.getImage()));
        end;
        scaledImage := TImage.createImage(width, height);
        htmlImage := TPlaynMutableImage(TJava.ToObject(scaledImage));
        canvasImage_ := TCanvasImage(TJava.ToObject(htmlImage.getImage()));
        canvasSurface_ := htmlImage.getCanvasSurface(canvasImage_);
        canvasSurface_.drawImage(originalPlayNImage, 0, 0, scaledImage.getWidth(), scaledImage.getHeight(), 0, 0, image_.getWidth(), image_.getHeight());
        Exit(scaledImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageJ2MEScaleUtil.instance := TImageJ2MEScaleUtil.Create();
  {AB:END}

end.

