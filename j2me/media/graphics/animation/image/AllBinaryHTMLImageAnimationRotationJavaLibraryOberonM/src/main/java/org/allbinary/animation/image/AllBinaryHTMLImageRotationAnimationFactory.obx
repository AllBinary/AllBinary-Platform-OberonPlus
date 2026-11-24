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
unit AllBinaryHTMLImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TAllBinaryHTMLImageRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    angleIncrement: SmallInt;
    procedure InitFields;
        class function createFactoryADXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryHTMLImageRotationAnimationFactory; static;
        constructor Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure init(dx: Integer; dy: Integer); virtual;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getAngleIncrement: SmallInt; virtual;
  end;

implementation
uses
  AllBinaryHTMLImageRotationAnimation, AllBinaryAdjustedHTMLImageRotationAnimation, GameConfigurationCentral, PrimitiveIntUtil, ImageCopyUtil, AngleFactory, AngleInfo;


{AB:CODE}

procedure TAllBinaryHTMLImageRotationAnimationFactory.InitFields;
begin
  
end;
    

// throws Exception
class function TAllBinaryHTMLImageRotationAnimationFactory.createFactoryADXY(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinaryHTMLImageRotationAnimationFactory;
var
  htmlImageRotationAnimationFactory: TAllBinaryHTMLImageRotationAnimationFactory;
begin
        htmlImageRotationAnimationFactory := TAllBinaryHTMLImageRotationAnimationFactory.Create(image_, width, height, angleIncrement, animationBehaviorFactory_);
        htmlImageRotationAnimationFactory.init(dx, dy);
        Exit(htmlImageRotationAnimationFactory);
end;
    

constructor TAllBinaryHTMLImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.angleIncrement := angleIncrement;
end;
    

procedure TAllBinaryHTMLImageRotationAnimationFactory.init(dx: Integer; dy: Integer);
begin
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
        Self.animationFactoryInitializationVisitor.originalDx := dx;
        Self.animationFactoryInitializationVisitor.originalDy := dy;
end;
    

// throws Exception
function TAllBinaryHTMLImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
  copyOfScaledImage: TImage;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        copyOfScaledImage := TImageCopyUtil.getInstance().createImage(scaledImage);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAllBinaryAdjustedHTMLImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.getAngleIncrement()), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TAllBinaryHTMLImageRotationAnimation.Create(scaledImage, copyOfScaledImage, TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

function TAllBinaryHTMLImageRotationAnimationFactory.getAngleIncrement: SmallInt;
begin
        Exit(Self.angleIncrement);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

