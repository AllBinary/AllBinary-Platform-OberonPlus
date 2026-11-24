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
unit AllBinaryFlickerAndroidImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Matrix, Image, AnimationBehavior, BasicColor, AngleInfo, AndroidImageUtil, ImageModifierUtil, ImageBaseRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryFlickerAndroidImageRotationAnimation = class(TImageBaseRotationAnimation)
  public
    imageModifierUtil: TImageModifierUtil;
    androidImageUtil: TAndroidImageUtil;
    matrix: TMatrix;
    halfWidth: Integer;
    halfHeight: Integer;
    increment: SmallInt;
    originalImage: TImage;
    procedure InitFields;
        constructor Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
        procedure setBasicColorP(basicColor_: TBasicColor); override;
        procedure changeBasicColor(basicColor_: TBasicColor); override;
        procedure setAlpha(alpha: Integer); override;
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure updateImage;
        procedure setFrame(index: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAllBinaryFlickerAndroidImageRotationAnimation.InitFields;
begin
  Self.imageModifierUtil := TImageModifierUtil.getInstanceOrCreate();
  Self.androidImageUtil := TAndroidImageUtil.getInstance();
  Self.matrix := TMatrix.Create();
  
  
  
  
end;
    

constructor TAllBinaryFlickerAndroidImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.originalImage := originalImage;
        Self.halfWidth := (TJava.SignedRightShift(image_.getWidth(), 1));
        Self.halfHeight := (TJava.SignedRightShift(image_.getHeight(), 1));
        Self.increment := SmallInt(Trunc((Self.angleInfo.getAngleIncrementInfo().getAngleIncrement())));
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getBasicColorP())) or ((Self.getBasicColorP().intValue()) <> (basicColor_.intValue())) then begin
            Self.imageModifierUtil.setColor(Self.originalImage, Self.getImage(), 0, basicColor_);
            changed := True;
        end;
        inherited setBasicColorP(basicColor_);
        if changed then begin
            Self.matrix.setRotate(0.0, Self.halfWidth, Self.halfHeight);
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.changeBasicColor(basicColor_: TBasicColor);
begin
        Self.setBasicColorP(basicColor_);
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.setAlpha(alpha: Integer);
var
  changed: Boolean;
begin
        changed := False;
        if (Self.alphaP) <> (alpha) then begin
            changed := True;
        end;
        inherited setAlpha(alpha);
        Self.imageModifierUtil.setAlpha(Self.originalImage, Self.getImage(), 0, Self.alphaP);
        if changed then begin
            Self.matrix.setRotate(0.0, Self.halfWidth, Self.halfHeight);
            Self.updateImage();
        end;
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.nextRotation;
begin
        inherited nextRotation();
        Self.matrix.setRotate(Self.increment, Self.halfWidth, Self.halfHeight);
        Self.updateImage();
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.previousRotation;
begin
        inherited previousRotation();
        Self.matrix.setRotate(-Self.increment, Self.halfWidth, Self.halfHeight);
        Self.updateImage();
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.updateImage;
begin
        Self.androidImageUtil.rotate(Self.getImage(), Self.originalImage, Self.matrix, Self.imageModifierUtil.paint);
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimation.setFrame(index: Integer);
var
  currentFrame: Integer;
  newFrame: Integer;
begin
        currentFrame := Self.circularIndexUtil.getIndex();
        Self.circularIndexUtil.setIndex(index);
        newFrame := Self.circularIndexUtil.getIndex();
        Self.angleInfo.adjustAngle(newFrame);
        Self.matrix.setRotate((((newFrame) - (currentFrame))) * (Self.increment), Self.halfWidth, Self.halfHeight);
        Self.updateImage();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

