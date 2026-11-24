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
unit AllBinaryJ2SEImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, BasicColor, AngleInfo, ImageModifierUtil, ImageRotationUtil, ModifierBaseProcessor, ScaleBaseProcessor, ImageBaseRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryJ2SEImageRotationAnimation = class(TImageBaseRotationAnimation)
  public
    imageRotationUtil: TImageRotationUtil;
    imageModifierUtil: TImageModifierUtil;
    realOriginalImage: TImage;
    originalImageArray: TArray<TImage>;
    twoImages: TArray<TImage>;
    imageToShow: TImage;
    bufferedImageIndex: Integer;
    lastScaleX: Single;
    lastScaleY: Single;
    scaleX: Single;
    scaleY: Single;
    maxScaleX: Single;
    maxScaleY: Single;
    alphaProcessor: TModifierBaseProcessor;
    setColorProcessor: TModifierBaseProcessor;
    changeColorProcessor: TModifierBaseProcessor;
    scaleProcessor: TScaleBaseProcessor;
    procedure InitFields;
        constructor Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
        procedure setBasicColorP(basicColor_: TBasicColor); override;
        procedure changeBasicColor(basicColor_: TBasicColor); override;
        procedure setAlpha(alpha: Integer); override;
        procedure setScale(scaleX: Single; scaleY: Single); override;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); override;
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure updateImage;
        procedure setFrame(index: Integer); override;
        procedure swap; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure close; override;
        procedure finalize; virtual;
  end;

implementation
uses
  ScaleProcessor, SetColorProcessor, ChangeColorProcessor, AlphaProcessor, NullImage, DisposalUtil, ImageCopyUtil;


{AB:CODE}

procedure TAllBinaryJ2SEImageRotationAnimation.InitFields;
begin
  Self.imageRotationUtil := TImageRotationUtil.getInstance();
  Self.imageModifierUtil := TImageModifierUtil.getInstanceOrCreate();
  
  Self.originalImageArray := TJava.NewArray<TImage>(1);
  Self.twoImages := TJava.NewArray<TImage>(2);
  
  
  Self.lastScaleX := 1.0;
  Self.lastScaleY := 1.0;
  Self.scaleX := 1.0;
  Self.scaleY := 1.0;
  
  
  Self.alphaProcessor := TModifierBaseProcessor.getInstance();
  Self.setColorProcessor := TModifierBaseProcessor.getInstance();
  Self.changeColorProcessor := TModifierBaseProcessor.getInstance();
  Self.scaleProcessor := TScaleProcessor.getInstance();
end;
    

constructor TAllBinaryJ2SEImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.realOriginalImage := originalImage;
        Self.originalImageArray[0] := originalImage;
        Self.imageToShow := image_;
        Self.twoImages[0] := image_;
        Self.twoImages[1] := TImageCopyUtil.getInstance().createImageForRotation(image_);
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getBasicColorP())) or ((Self.getBasicColorP().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited setBasicColorP(basicColor_);
        if changed then begin
            Self.setColorProcessor := TSetColorProcessor.getInstance();
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.changeBasicColor(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getChangeBasicColor())) or ((Self.getChangeBasicColor().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited changeBasicColor(basicColor_);
        if changed then begin
            Self.changeColorProcessor := TChangeColorProcessor.getInstance();
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.setAlpha(alpha: Integer);
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
    

procedure TAllBinaryJ2SEImageRotationAnimation.setScale(scaleX: Single; scaleY: Single);
begin
        Self.scaleX := scaleX;
        Self.scaleY := scaleY;
        if ((Self.scaleX) <> (Self.lastScaleX)) or ((Self.scaleY) <> (Self.lastScaleY)) then begin
            Self.scaleProcessor.update(Self.realOriginalImage, Self.originalImageArray, Self.twoImages, Self.bufferedImageIndex, Self.scaleX, Self.scaleY, Self.maxScaleX, Self.maxScaleY);
            Self.updateImage();
        end;
        Self.lastScaleX := Self.scaleX;
        Self.lastScaleY := Self.scaleY;
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
        Self.maxScaleX := maxScaleX;
        Self.maxScaleY := maxScaleY;
        Self.scaleProcessor.update(Self.realOriginalImage, Self.originalImageArray, Self.twoImages, Self.bufferedImageIndex, Self.scaleX, Self.scaleY, Self.maxScaleX, Self.maxScaleY);
        Self.updateImage();
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.nextRotation;
begin
        inherited nextRotation();
        Self.updateImage();
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.previousRotation;
begin
        inherited previousRotation();
        Self.updateImage();
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.updateImage;
begin
        Self.imageRotationUtil.rotateImage(Self.originalImageArray[0], Self.twoImages[Self.bufferedImageIndex], (Self.angleInfo.getAngle()) + (90));
        Self.alphaProcessor.updateAlpha(Self.imageModifierUtil, TNullImage.NULL_IMAGE, Self.twoImages[Self.bufferedImageIndex], 0, Self.alphaP);
        Self.setColorProcessor.updateColor(Self.imageModifierUtil, TNullImage.NULL_IMAGE, Self.twoImages[Self.bufferedImageIndex], 0, Self.basicColor);
        Self.changeColorProcessor.updateColor(Self.imageModifierUtil, TNullImage.NULL_IMAGE, Self.twoImages[Self.bufferedImageIndex], 0, Self.changeBasicColorP);
        Self.swap();
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.updateImage();
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.swap;
begin
        Self.imageToShow := Self.twoImages[Self.bufferedImageIndex];
        if (Self.bufferedImageIndex) = (0) then begin
            Self.bufferedImageIndex := 1;
        end else begin
            Self.bufferedImageIndex := 0;
        end;
end;
    

procedure TAllBinaryJ2SEImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.imageToShow, x, y, Self.anchor);
end;
    

// throws Exception
procedure TAllBinaryJ2SEImageRotationAnimation.close;
var
  disposalUtil_: TDisposalUtil;
  size2: Integer;
  index: Integer;
  size: Integer;
begin
        inherited close();
        disposalUtil_ := TDisposalUtil.getInstance();
        size2 := System.Length(Self.twoImages);
        for index := 0 to size2 - 1 do begin
            disposalUtil_.disposeImage(Self.twoImages[index]);
        end;
        size := System.Length(Self.originalImageArray);
        for index := 0 to size - 1 do begin
            disposalUtil_.disposeImage(Self.originalImageArray[index]);
        end;
        disposalUtil_.disposeImage(Self.realOriginalImage);
        disposalUtil_.disposeImage(Self.imageToShow);
end;
    

// throws Throwable
procedure TAllBinaryJ2SEImageRotationAnimation.finalize;
var
  disposalUtil_: TDisposalUtil;
  size2: Integer;
  index: Integer;
  size: Integer;
begin
        inherited finalize();
        disposalUtil_ := TDisposalUtil.getInstance();
        size2 := System.Length(Self.twoImages);
        for index := 0 to size2 - 1 do begin
            disposalUtil_.disposeImage(Self.twoImages[index]);
        end;
        size := System.Length(Self.originalImageArray);
        for index := 0 to size - 1 do begin
            disposalUtil_.disposeImage(Self.originalImageArray[index]);
        end;
        disposalUtil_.disposeImage(Self.realOriginalImage);
        disposalUtil_.disposeImage(Self.imageToShow);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

