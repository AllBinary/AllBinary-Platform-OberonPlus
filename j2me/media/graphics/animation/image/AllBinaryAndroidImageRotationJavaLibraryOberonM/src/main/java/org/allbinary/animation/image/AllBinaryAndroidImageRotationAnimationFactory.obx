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
unit AllBinaryAndroidImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TAllBinaryAndroidImageRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    angleIncrement: SmallInt;
    resizeCanvasForRotation: Boolean;
    procedure InitFields;
        class function createFactory(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory; static;
        class function createFactoryA(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory; static;
        class function createFactoryU(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory; static;
        class function createFactoryDXYU(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory; static;
        class function createFactoryADXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean): TAllBinaryAndroidImageRotationAnimationFactory; static;
        procedure init(dx: Integer; dy: Integer); virtual;
        constructor Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean);
        function getCanvasImage: TImage;
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  AllBinaryFlickerAndroidImageRotationAnimation, AllBinaryAdjustedAndroidImageRotationAnimation, GameConfigurationCentral, Features, OpenGLFeatureFactory, PrimitiveIntUtil, ImageCopyUtil, AngleFactory, AngleInfo;


{AB:CODE}

procedure TAllBinaryAndroidImageRotationAnimationFactory.InitFields;
begin
  
  
end;
    

// throws Exception
class function TAllBinaryAndroidImageRotationAnimationFactory.createFactory(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory;
begin
        Exit(TAllBinaryAndroidImageRotationAnimationFactory.Create(image_, width, height, SmallInt(Trunc((TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, TGameConfigurationCentral.getInstance().getGameControlFidelity())))), animationBehaviorFactory_, False));
end;
    

// throws Exception
class function TAllBinaryAndroidImageRotationAnimationFactory.createFactoryA(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory;
begin
        Exit(TAllBinaryAndroidImageRotationAnimationFactory.Create(image_, width, height, angleIncrement, animationBehaviorFactory_, False));
end;
    

// throws Exception
class function TAllBinaryAndroidImageRotationAnimationFactory.createFactoryU(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory;
var
  androidImageRotationAnimationFactory: TAllBinaryAndroidImageRotationAnimationFactory;
begin
        androidImageRotationAnimationFactory := TAllBinaryAndroidImageRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), SmallInt(Trunc((TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, TGameConfigurationCentral.getInstance().getGameControlFidelity())))), animationBehaviorFactory_, False);
        androidImageRotationAnimationFactory.init(-(TJava.SignedRightShift(image_.getWidth(), 2)), -(TJava.SignedRightShift(image_.getHeight(), 2)));
        Exit(androidImageRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinaryAndroidImageRotationAnimationFactory.createFactoryDXYU(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryAndroidImageRotationAnimationFactory;
var
  androidImageRotationAnimationFactory: TAllBinaryAndroidImageRotationAnimationFactory;
begin
        androidImageRotationAnimationFactory := TAllBinaryAndroidImageRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), SmallInt(Trunc((TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, TGameConfigurationCentral.getInstance().getGameControlFidelity())))), animationBehaviorFactory_, False);
        androidImageRotationAnimationFactory.init(dx, dy);
        Exit(androidImageRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinaryAndroidImageRotationAnimationFactory.createFactoryADXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean): TAllBinaryAndroidImageRotationAnimationFactory;
var
  androidImageRotationAnimationFactory: TAllBinaryAndroidImageRotationAnimationFactory;
begin
        androidImageRotationAnimationFactory := TAllBinaryAndroidImageRotationAnimationFactory.Create(image_, width, height, angleIncrement, animationBehaviorFactory_, resizeCanvasForRotation);
        androidImageRotationAnimationFactory.init(dx, dy);
        Exit(androidImageRotationAnimationFactory);
end;
    

procedure TAllBinaryAndroidImageRotationAnimationFactory.init(dx: Integer; dy: Integer);
begin
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
        Self.animationFactoryInitializationVisitor.originalDx := dx;
        Self.animationFactoryInitializationVisitor.originalDy := dy;
end;
    

constructor TAllBinaryAndroidImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.angleIncrement := angleIncrement;
        Self.resizeCanvasForRotation := resizeCanvasForRotation;
end;
    

// throws Exception
function TAllBinaryAndroidImageRotationAnimationFactory.getCanvasImage: TImage;
var
  features_: TFeatures;
begin
        features_ := TFeatures.getInstance();
        if (Self.resizeCanvasForRotation) and (not (features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL))) then begin
            Exit(TImageCopyUtil.getInstance().createImageScale(Self.getImage(), 1.44, False));
        end else begin
            Exit(Self.getImage());
        end;
end;
    

// throws Exception
function TAllBinaryAndroidImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  canvasImage: TImage;
  scaledImage: TImage;
  copyOfScaledImage: TImage;
begin
        canvasImage := Self.getCanvasImage();
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(canvasImage, Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        copyOfScaledImage := TImageCopyUtil.getInstance().createImage(scaledImage);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAllBinaryAdjustedAndroidImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TAllBinaryFlickerAndroidImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

