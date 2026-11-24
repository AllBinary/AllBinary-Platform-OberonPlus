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
unit AllBinaryJ2SEImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TAllBinaryJ2SEImageRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    angleIncrementP: SmallInt;
    resizeCanvasForRotation: Boolean;
    procedure InitFields;
        class function createDXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean): TAllBinaryJ2SEImageRotationAnimationFactory; static;
        constructor Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean);
        function getCanvasImage: TImage;
        function getInstance(instanceId: Integer): TAnimation; override;
        function getAngleIncrement: SmallInt; virtual;
  end;

implementation
uses
  AllBinaryJ2SEImageRotationAnimation, AllBinaryAdjustedJ2SEImageRotationAnimation, Features, OpenGLFeatureFactory, OpenGLUtil, PrimitiveIntUtil, AngleFactory, AngleInfo, ImageCopyUtil;


{AB:CODE}

procedure TAllBinaryJ2SEImageRotationAnimationFactory.InitFields;
begin
  
  
end;
    

// throws Exception
class function TAllBinaryJ2SEImageRotationAnimationFactory.createDXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean): TAllBinaryJ2SEImageRotationAnimationFactory;
var
  imageRotationAnimationFactory: TAllBinaryJ2SEImageRotationAnimationFactory;
begin
        imageRotationAnimationFactory := TAllBinaryJ2SEImageRotationAnimationFactory.Create(image_, width, height, angleIncrement, animationBehaviorFactory_, resizeCanvasForRotation);
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx := dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy := dy;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx := dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy := dy;
        Exit(imageRotationAnimationFactory);
end;
    

constructor TAllBinaryJ2SEImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory; resizeCanvasForRotation: Boolean);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.angleIncrementP := angleIncrement;
        Self.resizeCanvasForRotation := resizeCanvasForRotation;
end;
    

// throws Exception
function TAllBinaryJ2SEImageRotationAnimationFactory.getCanvasImage: TImage;
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
function TAllBinaryJ2SEImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  imageCopyUtil_: TImageCopyUtil;
  canvasImage: TImage;
  scaledImage: TImage;
  openGLUtil_: TOpenGLUtil;
  copyOfScaledImage: TImage;
begin
        imageCopyUtil_ := TImageCopyUtil.getInstance();
        canvasImage := Self.getCanvasImage();
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(canvasImage, Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        openGLUtil_ := TOpenGLUtil.getInstance();
        scaledImage := openGLUtil_.addImage(scaledImage);
        copyOfScaledImage := imageCopyUtil_.createImageForRotation(scaledImage);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAllBinaryAdjustedJ2SEImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.angleIncrementP), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TAllBinaryJ2SEImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.angleIncrementP), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

function TAllBinaryJ2SEImageRotationAnimationFactory.getAngleIncrement: SmallInt;
begin
        Exit(Self.angleIncrementP);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

