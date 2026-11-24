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
unit AllBinaryFlickerAndroidImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TAllBinaryFlickerAndroidImageRotationAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    image: TImage;
    angleIncrement: SmallInt;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getAngleIncrement: SmallInt; virtual;
        procedure setImage(image_: TImage); virtual;
        function getImage: TImage; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  AllBinaryFlickerAndroidImageRotationAnimation, NullImage, ForcedLogUtil, ImageCopyUtil, AngleFactory, AngleInfo;


{AB:CODE}

procedure TAllBinaryFlickerAndroidImageRotationAnimationFactory.InitFields;
begin
  Self.image := TNullImage.NULL_IMAGE;
  
  
end;

function TAllBinaryFlickerAndroidImageRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryFlickerAndroidImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.setImage(image_);
        Self.angleIncrement := angleIncrement;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
end;
    

// throws Exception
function TAllBinaryFlickerAndroidImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  image_: TImage;
begin
        image_ := TImageCopyUtil.getInstance().createImage(Self.getImage());
        Exit(TAllBinaryFlickerAndroidImageRotationAnimation.Create(Self.getImage(), image_, TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

function TAllBinaryFlickerAndroidImageRotationAnimationFactory.getAngleIncrement: SmallInt;
begin
        Exit(Self.angleIncrement);
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimationFactory.setImage(image_: TImage);
begin
        Self.image := image_;
end;
    

function TAllBinaryFlickerAndroidImageRotationAnimationFactory.getImage: TImage;
begin
        Exit(Self.image);
end;
    

procedure TAllBinaryFlickerAndroidImageRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

