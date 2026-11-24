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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageCache, ImageUtil, ImageJ2SEUtil, ImageCreationUtil;

type
  {AB:TYPES}
  TImageScaleUtil = class(TObject)
  public
    imageUtil: TImageUtil;
    imageJ2SEUtil: TImageJ2SEUtil;
    imageCreationUtil: TImageCreationUtil;
    class var instance: TImageScaleUtil;
    procedure InitFields;
        class function getInstance: TImageScaleUtil; static;
        constructor Create;
        function createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage; virtual;
        function createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage; virtual;
        procedure scale2(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single); virtual;
        procedure scale(originalImage: TImage; newMaxSizeImage: TImage; scaleX: Single; scaleY: Single; clear: Boolean); virtual;
  end;

implementation

{AB:CODE}

procedure TImageScaleUtil.InitFields;
begin
  Self.imageUtil := TImageUtil.getInstance();
  Self.imageJ2SEUtil := TImageJ2SEUtil.getInstance();
  Self.imageCreationUtil := TImageCreationUtil.getInstance();
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
  image_: TImage;
begin
        width := originalImage.getWidth();
        height := originalImage.getHeight();
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        
        if cached then begin
            image_ := imageCache_.get(Self.ClassType.ClassName, Integer(Trunc(((width) * (scaleX)))), Integer(Trunc(((height) * (scaleY)))));
        end else begin
            image_ := imageCache_.get('createImage', Integer(Trunc(((width) * (scaleX)))), Integer(Trunc(((height) * (scaleY)))));
        end;
        Self.scale(originalImage, image_, scaleX, scaleY, True);
        Exit(image_);
end;
    

// throws Exception
procedure TImageScaleUtil.scale2(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single);
begin
        if (((maxScaleX) * (originalImage.getWidth())) > (originalImageArray[0].getWidth())) or (((maxScaleY) * (originalImage.getHeight())) > (originalImageArray[0].getHeight())) then begin
            originalImageArray[0] := Self.imageCreationUtil.createImage(originalImage.getWidth(), originalImage.getHeight(), maxScaleX, maxScaleY);
        end;
        Self.scale(originalImage, originalImageArray[0], scaleX, scaleY, False);
end;
    

procedure TImageScaleUtil.scale(originalImage: TImage; newMaxSizeImage: TImage; scaleX: Single; scaleY: Single; clear: Boolean);
var
  bufferedImage_: TBufferedImage;
  newBufferedImage: TBufferedImage;
  at: TAffineTransform;
  g: TGraphics2D;
begin
        bufferedImage_ := Self.imageUtil.getBufferedImage(originalImage);
        newBufferedImage := Self.imageUtil.getBufferedImage(newMaxSizeImage);
        at := TAffineTransform.getScaleInstance(scaleX, scaleY);
        g := newBufferedImage.createGraphics();
        if clear then begin
            g.setBackground(Self.imageJ2SEUtil.TRANSPARENT_COLOR);
            g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight());
        end;
        g.drawRenderedImage(bufferedImage_, at);
        g.dispose_();
end;

initialization
  {AB:INITIALIZATION}
  TImageScaleUtil.instance := TImageScaleUtil.Create();
  {AB:END}

end.

