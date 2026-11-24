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
// package org.allbinary.animation.image
unit AllBinaryHTMLImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, BasicColor, ImageModifierUtil, ImageRotationUtil, Canvas, AlphaBaseProcessor, ImageBaseRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryHTMLImageRotationAnimation = class(TImageBaseRotationAnimation)
  public
    imageRotationUtil: TImageRotationUtil;
    imageModifierUtil: TImageModifierUtil;
    originalImage: TImage;
    twoImages: TArray<TImage>;
    canvasSurfaceArray: TArray<TCanvas>;
    imageToShow: TImage;
    bufferedImageIndex: Integer;
    alphaProcessor: TAlphaBaseProcessor;
    procedure InitFields;
        constructor Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
        function getCanvasSurface(image_: TImage): TCanvas; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setAlpha(alpha: Integer); virtual;
        procedure nextRotation; virtual;
        procedure previousRotation; virtual;
        procedure updateImage;
        procedure setFrame(index: Integer); virtual;
        procedure swap; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  AlphaProcessor, ImageCopyUtil, PlaynMutableImage, ImageImpl, PlayN, HtmlGraphics, HtmlImage;


{AB:CODE}

procedure TAllBinaryHTMLImageRotationAnimation.InitFields;
begin
  Self.imageRotationUtil := TImageRotationUtil.getInstance();
  Self.imageModifierUtil := TImageModifierUtil.getInstanceOrCreate();
  
  Self.twoImages := TJava.NewArray<TImage>(2);
  Self.canvasSurfaceArray := TJava.NewArray<TCanvas>(2);
  
  
  Self.alphaProcessor := TAlphaBaseProcessor.getInstance();
end;
    

constructor TAllBinaryHTMLImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.originalImage := originalImage;
        Self.imageToShow := image_;
        Self.twoImages[0] := image_;
        Self.twoImages[1] := TImageCopyUtil.getInstance().createImage(image_);
        Self.canvasSurfaceArray[0] := Self.getCanvasSurface(Self.twoImages[0]);
        Self.canvasSurfaceArray[1] := Self.getCanvasSurface(Self.twoImages[1]);
end;
    

function TAllBinaryHTMLImageRotationAnimation.getCanvasSurface(image_: TImage): TCanvas;
var
  htmlImage_: TPlaynMutableImage;
  canvasImage: TImageImpl;
  playN_: TPlayN;
  htmlGraphics_: THtmlGraphics;
  canvas_: TCanvas;
begin
        htmlImage_ := TPlaynMutableImage(TJava.ToObject(image_));
        canvasImage := TImageImpl(TJava.ToObject(htmlImage_.getImage()));
        playN_ := TPlayN.getInstance();
        htmlGraphics_ := THtmlGraphics(TJava.ToObject(playN_.graphics()));
        canvas_ := htmlGraphics_.get(THtmlImage(TJava.ToObject(canvasImage)));
        canvas_.translate(TJava.Divide(Self.originalImage.getWidth(), 2), TJava.Divide(Self.originalImage.getHeight(), 2));
        Exit(canvas_);
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getBasicColorP())) or ((Self.getBasicColorP().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited setBasicColorP(basicColor_);
        if changed then begin
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.setAlpha(alpha: Integer);
var
  changed: Boolean;
begin
        changed := False;
        if (Self.alphaP) <> (alpha) then begin
            changed := True;
        end;
        inherited setAlpha(alpha);
        if changed then begin
            Self.alphaProcessor := TAlphaProcessor.getInstance();
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.nextRotation;
begin
        inherited nextRotation();
        Self.updateImage();
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.previousRotation;
begin
        inherited previousRotation();
        Self.updateImage();
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.updateImage;
var
  canvasSurface: TCanvas;
begin
        canvasSurface := Self.canvasSurfaceArray[Self.bufferedImageIndex];
        canvasSurface.save();
        Self.imageRotationUtil.rotateImageCanvasSurfaceClear(Self.originalImage, Self.twoImages[Self.bufferedImageIndex], canvasSurface, (Self.angleInfo.getAngle()) + (90));
        Self.alphaProcessor.setAlpha(Self.imageModifierUtil, Self.originalImage, Self.twoImages[Self.bufferedImageIndex], Self.alphaP);
        Self.imageRotationUtil.drawImage(Self.originalImage, Self.imageToShow, canvasSurface);
        canvasSurface.restore();
        Self.swap();
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.updateImage();
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.swap;
begin
        Self.imageToShow := Self.twoImages[Self.bufferedImageIndex];
        if (Self.bufferedImageIndex) = (0) then begin
            Self.bufferedImageIndex := 1;
        end else begin
            Self.bufferedImageIndex := 0;
        end;
end;
    

procedure TAllBinaryHTMLImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.imageToShow, x, y, Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

