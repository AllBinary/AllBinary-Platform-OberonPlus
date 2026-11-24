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
unit BaseImageAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, AnimationFactoryImageScaleUtil, ScaleProperties, AnimationFactoryInitializationVisitor, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TBaseImageAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactoryImageScaleUtil: TAnimationFactoryImageScaleUtil;
    image: TImage;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    sequenceArray: TArray<Integer>;
    animationFactoryInitializationVisitor: TAnimationFactoryInitializationVisitor;
    scaleProperties: TScaleProperties;
    procedure InitFields;
    function JavaObject: TObject;
        class function createFactoryBase(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TBaseImageAnimationFactory; static;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getImage: TImage; virtual;
        function getSequenceArray: TArray<Integer>; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
        function getAnimationFactoryInitializationVisitorP: TAnimationFactoryInitializationVisitor; virtual;
        function getScalePropertiesP: TScaleProperties; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  NullAnimationFactory, ForcedLogUtil, StringMaker, CommonLabels, CommonSeps;


{AB:CODE}

procedure TBaseImageAnimationFactory.InitFields;
begin
  Self.animationFactoryImageScaleUtil := TAnimationFactoryImageScaleUtil.getInstance();
  
  
  
  
  Self.scaleProperties := TScaleProperties.instance;
end;

function TBaseImageAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TBaseImageAnimationFactory.createFactoryBase(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TBaseImageAnimationFactory;
begin
        Exit(TBaseImageAnimationFactory.Create(image_, sequenceArray, width, height, 0, 0, animationBehaviorFactory_));
end;
    

constructor TBaseImageAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.animationFactoryInitializationVisitor := TAnimationFactoryInitializationVisitor.Create();
        Self.image := image_;
        Self.animationFactoryInitializationVisitor.width := width;
        Self.animationFactoryInitializationVisitor.height := height;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        Self.sequenceArray := sequenceArray;
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
end;
    

// throws Exception
function TBaseImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().getInstance(instanceId));
end;
    

function TBaseImageAnimationFactory.getImage: TImage;
begin
        Exit(Self.image);
end;
    

function TBaseImageAnimationFactory.getSequenceArray: TArray<Integer>;
begin
        Exit(Self.sequenceArray);
end;
    

procedure TBaseImageAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
        Self.scaleProperties := scaleProperties_;
        if Self.scaleProperties.shouldScale then begin
            Self.scaleProperties.scaleWidth := Integer(Trunc(((Self.animationFactoryInitializationVisitor.width) * (Self.scaleProperties.scaleX))));
            Self.scaleProperties.scaleHeight := Integer(Trunc(((Self.animationFactoryInitializationVisitor.height) * (Self.scaleProperties.scaleY))));
        end else begin
        end;
end;
    

function TBaseImageAnimationFactory.getAnimationFactoryInitializationVisitorP: TAnimationFactoryInitializationVisitor;
begin
        Exit(Self.animationFactoryInitializationVisitor);
end;
    

function TBaseImageAnimationFactory.getScalePropertiesP: TScaleProperties;
begin
        Exit(Self.scaleProperties);
end;
    

function TBaseImageAnimationFactory.toString: string;
var
  commonSeps_: TCommonSeps;
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Integer(Trunc(Self.image.getHeight())));
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(Self.animationFactoryInitializationVisitor.toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

