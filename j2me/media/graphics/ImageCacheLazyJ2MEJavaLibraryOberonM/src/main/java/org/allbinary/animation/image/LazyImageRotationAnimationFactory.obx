{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.image
unit LazyImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationInterfaceFactoryInterface, ScaleProperties, BaseImageAnimationFactory, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TLazyImageRotationAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    layoutIndex: Integer;
    animationInterfaceFactoryInterface: TBaseImageAnimationFactory;
    scaleProperties: TScaleProperties;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(layoutIndex: Integer; associatedLazyAnimationId: Integer; animationInterfaceFactoryInterface: TBaseImageAnimationFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  LazyImageRotationAnimation, AnimationBehaviorFactory, ImageCacheFactory, ForcedLogUtil;


{AB:CODE}

procedure TLazyImageRotationAnimationFactory.InitFields;
begin
  
  
  Self.scaleProperties := TScaleProperties.instance;
end;

function TLazyImageRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLazyImageRotationAnimationFactory.Create(layoutIndex: Integer; associatedLazyAnimationId: Integer; animationInterfaceFactoryInterface: TBaseImageAnimationFactory);
begin
    inherited Create;
    InitFields;
        Self.layoutIndex := layoutIndex;
        Self.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        TImageCacheFactory.getInstance().hasAnyLazyAnimationFactories := True;
        if (Self.animationInterfaceFactoryInterface.animationBehaviorFactory) = (TAnimationBehaviorFactory.getInstance()) then begin
            TForcedLogUtil.log('Using default AnimationBehaviorFactory with IndexedAnimationFactory', TJava.Box(Self));
        end;
end;
    

// throws Exception
function TLazyImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        if Self.animationInterfaceFactoryInterface.getImage().isReady() then begin
            Self.animationInterfaceFactoryInterface.setInitialScale(Self.scaleProperties);
            Exit(Self.animationInterfaceFactoryInterface.getInstance(instanceId));
        end else begin
            Exit(TLazyImageRotationAnimation.Create(Self.layoutIndex, instanceId, Self.scaleProperties, Self.animationInterfaceFactoryInterface, Self.animationInterfaceFactoryInterface.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

procedure TLazyImageRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
        Self.scaleProperties := scaleProperties_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

