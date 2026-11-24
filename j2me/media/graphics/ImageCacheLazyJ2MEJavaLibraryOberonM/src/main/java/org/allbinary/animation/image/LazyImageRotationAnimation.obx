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
unit LazyImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, AnimationBehavior, IndexedAnimation, RotationAnimation, BasicColor, LogUtil, ScaleProperties, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TLazyImageRotationAnimation = class(TRotationAnimation)
  public
    logUtil: TLogUtil;
    layoutIndex: Integer;
    instanceId: Integer;
    animationInterfaceFactoryInterface: TBaseImageAnimationFactory;
    NULL_INDEX_ANIMATION: TIndexedAnimation;
    animation: TIndexedAnimation;
    scaleProperties: TScaleProperties;
    class var SET_REAL_ANIMATION: string;
    procedure InitFields;
        constructor Create(layoutIndex: Integer; instanceId: Integer; scaleProperties_: TScaleProperties; animationInterfaceFactoryInterface: TBaseImageAnimationFactory; animationBehavior_: TAnimationBehavior);
        procedure setRealAnimation; virtual;
        procedure setScale(scaleX: Single; scaleY: Single); override;
        function getAnimationBehavior: TAnimationBehavior; override;
        procedure set_(gl_: IGL); override;
        procedure setAlpha(alpha: Integer); override;
        procedure setDx(dx: Integer); override;
        procedure setDy(dy: Integer); override;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); override;
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure nextRotationX; override;
        procedure previousRotationX; override;
        procedure nextRotationZ; override;
        procedure previousRotationZ; override;
        procedure changeBasicColor(basicColor_: TBasicColor); override;
        function getBasicColorP: TBasicColor; override;
        function getChangeBasicColor: TBasicColor; override;
        function getChangeColor: Integer; override;
        function getColor: Integer; override;
        function getDx: Integer; override;
        function getDy: Integer; override;
        function isThreed: Boolean; override;
        procedure nextFrame; override;
        procedure reset; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getAnimationSize: Integer; override;
        function getSize: Integer; override;
        procedure previousFrame; override;
        function isLastFrame: Boolean; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        function getWidth: Integer; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
        function toString: string; override;
  end;

implementation
uses
  Image, NullRotationAnimationFactory, ImageCache, ImageCacheFactory, AngleFactory, AngleInfo, CommonSeps, StringMaker, CircularIndexUtil;


{AB:CODE}

procedure TLazyImageRotationAnimation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  Self.scaleProperties := TScaleProperties.instance;
end;
    

constructor TLazyImageRotationAnimation.Create(layoutIndex: Integer; instanceId: Integer; scaleProperties_: TScaleProperties; animationInterfaceFactoryInterface: TBaseImageAnimationFactory; animationBehavior_: TAnimationBehavior);
var
  imageCache_: TImageCache;
begin
        inherited Create(TAngleInfo.getInstance(TAngleFactory.getInstance().QUARTER_TOTAL_ANGLE), TCircularIndexUtil.createInstance(4), animationBehavior_);
        InitFields;
        Self.layoutIndex := layoutIndex;
        Self.instanceId := instanceId;
        Self.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        imageCache_ := TImageCacheFactory.getInstance();
        imageCache_.add(Self);
        Self.scaleProperties := scaleProperties_;
        Self.NULL_INDEX_ANIMATION := TIndexedAnimation(TJava.ToObject(TNullRotationAnimationFactory.getFactoryInstance().getInstance(0)));
        { Java local class ActualRotationAnimation: move it to the unit }
        Self.animation := TActualRotationAnimation.Create(Self);
end;
    

procedure TLazyImageRotationAnimation.setRealAnimation;
var
  animation: TIndexedAnimation;
begin
        try
            animation := Self.animation;
            Self.animationInterfaceFactoryInterface.setInitialScale(Self.scaleProperties);
            Self.animation := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceFactoryInterface.getInstance(Self.instanceId)));
            Self.animation.setState(animation);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TLazyImageRotationAnimation.SET_REAL_ANIMATION, TJava.Box(e));
            end;
        end;
end;
    

procedure TLazyImageRotationAnimation.setScale(scaleX: Single; scaleY: Single);
begin
        Self.animation.setScale(scaleX, scaleY);
end;
    

function TLazyImageRotationAnimation.getAnimationBehavior: TAnimationBehavior;
begin
        Exit(Self.animation.getAnimationBehavior());
end;
    

// throws Exception
procedure TLazyImageRotationAnimation.set_(gl_: IGL);
begin
        Self.animation.set_(gl_);
end;
    

procedure TLazyImageRotationAnimation.setAlpha(alpha: Integer);
begin
        Self.animation.setAlpha(alpha);
end;
    

procedure TLazyImageRotationAnimation.setDx(dx: Integer);
begin
        Self.animation.setDx(dx);
end;
    

procedure TLazyImageRotationAnimation.setDy(dy: Integer);
begin
        Self.animation.setDy(dy);
end;
    

procedure TLazyImageRotationAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
        Self.animation.setMaxScale(maxScaleX, maxScaleY);
end;
    

procedure TLazyImageRotationAnimation.nextRotation;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.nextRotation();
end;
    

procedure TLazyImageRotationAnimation.previousRotation;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.previousRotation();
end;
    

procedure TLazyImageRotationAnimation.nextRotationX;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.nextRotationX();
end;
    

procedure TLazyImageRotationAnimation.previousRotationX;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.previousRotationX();
end;
    

procedure TLazyImageRotationAnimation.nextRotationZ;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.nextRotationZ();
end;
    

procedure TLazyImageRotationAnimation.previousRotationZ;
var
  rotationAnimation_: TRotationAnimation;
begin
        rotationAnimation_ := (TRotationAnimation(TJava.ToObject(Self.animation)));
        rotationAnimation_.previousRotationZ();
end;
    

procedure TLazyImageRotationAnimation.changeBasicColor(basicColor_: TBasicColor);
begin
        Self.animation.changeBasicColor(basicColor_);
end;
    

function TLazyImageRotationAnimation.getBasicColorP: TBasicColor;
begin
        Exit(Self.animation.getBasicColorP());
end;
    

function TLazyImageRotationAnimation.getChangeBasicColor: TBasicColor;
begin
        Exit(Self.animation.getChangeBasicColor());
end;
    

function TLazyImageRotationAnimation.getChangeColor: Integer;
begin
        Exit(Self.animation.getChangeColor());
end;
    

function TLazyImageRotationAnimation.getColor: Integer;
begin
        Exit(Self.animation.getColor());
end;
    

function TLazyImageRotationAnimation.getDx: Integer;
begin
        Exit(Self.animation.getDx());
end;
    

function TLazyImageRotationAnimation.getDy: Integer;
begin
        Exit(Self.animation.getDy());
end;
    

function TLazyImageRotationAnimation.isThreed: Boolean;
begin
        Exit(Self.animation.isThreed());
end;
    

// throws Exception
procedure TLazyImageRotationAnimation.nextFrame;
begin
        Self.animation.nextFrame();
end;
    

procedure TLazyImageRotationAnimation.reset;
begin
        Self.animation.reset();
end;
    

procedure TLazyImageRotationAnimation.setFrame(index: Integer);
begin
        Self.animation.setFrame(index);
end;
    

function TLazyImageRotationAnimation.getFrame: Integer;
begin
        Exit(Self.animation.getFrame());
end;
    

// throws Exception
function TLazyImageRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.animation.getAnimationSize());
end;
    

function TLazyImageRotationAnimation.getSize: Integer;
begin
        Exit(Self.animation.getSize());
end;
    

procedure TLazyImageRotationAnimation.previousFrame;
begin
        Self.animation.previousFrame();
end;
    

function TLazyImageRotationAnimation.isLastFrame: Boolean;
begin
        Exit(Self.animation.isLastFrame());
end;
    

procedure TLazyImageRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
        Self.animation.setSequence(sequence);
end;
    

function TLazyImageRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(Self.animation.getSequence());
end;
    

function TLazyImageRotationAnimation.getWidth: Integer;
begin
        Exit(Self.animation.getWidth());
end;
    

procedure TLazyImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        try
            Self.animation.paintXY(graphics_, x, y);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

procedure TLazyImageRotationAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        try
            Self.animation.paintThreedXYZ(graphics_, x, y, z);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

function TLazyImageRotationAnimation.toString: string;
var
  commonSeps_: TCommonSeps;
  image_: TImage;
begin
        commonSeps_ := TCommonSeps.getInstance();
        image_ := Self.animationInterfaceFactoryInterface.getImage();
        Exit(TStringMaker.Create().append(inherited toString()).append(commonSeps_.SPACE).append(image_.getName()).append(commonSeps_.SPACE).appendint(Integer(Trunc(image_.getWidth()))).append(commonSeps_.SPACE).appendint(Integer(Trunc(image_.getHeight()))).toString());
end;

initialization
  {AB:INITIALIZATION}
  TLazyImageRotationAnimation.SET_REAL_ANIMATION := 'setRealAnimation';
  {AB:END}

end.

