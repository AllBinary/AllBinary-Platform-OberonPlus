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
unit AllBinaryScreenRelationalImageAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TAllBinaryScreenRelationalImageAnimationInterfaceFactory = class(TBaseImageAnimationFactory)
  public
    lastImage: TImage;
    procedure InitFields;
        constructor Create(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  ImageAnimation, NullImage, GameFeatureImageCacheFactory, ScreenRelationalUtil, PrimitiveIntUtil, ImageScaleUtil, AndroidImageInterface;


{AB:CODE}

procedure TAllBinaryScreenRelationalImageAnimationInterfaceFactory.InitFields;
begin
  Self.lastImage := TNullImage.NULL_IMAGE;
end;
    

constructor TAllBinaryScreenRelationalImageAnimationInterfaceFactory.Create(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory);
var
  androidImageInterface_: IAndroidImageInterface;
  scale: Single;
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory_);
        InitFields;
        if (Self.lastImage) <> (TNullImage.NULL_IMAGE) then begin
            androidImageInterface_ := (TJava.ToObject(Self.lastImage) as IAndroidImageInterface);
            androidImageInterface_.getBitmap().recycle();
        end;
        scale := TScreenRelationalUtil.getInstance().getScaleImage(image_);
        Self.lastImage := TImageScaleUtil.getInstance().createImage(TGameFeatureImageCacheFactory.getInstance(), Self.getImage(), scale, scale, False);
end;
    

// throws Exception
function TAllBinaryScreenRelationalImageAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TImageAnimation.Create(Self.lastImage, Self.animationBehaviorFactory.getOrCreateInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

