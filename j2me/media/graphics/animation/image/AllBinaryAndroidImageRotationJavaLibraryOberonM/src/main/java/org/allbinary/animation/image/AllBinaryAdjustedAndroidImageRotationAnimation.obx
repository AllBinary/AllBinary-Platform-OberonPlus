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
unit AllBinaryAdjustedAndroidImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, AllBinaryFlickerAndroidImageRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryAdjustedAndroidImageRotationAnimation = class(TAllBinaryFlickerAndroidImageRotationAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure setDx(dx: Integer); override;
        function getDx: Integer; override;
        procedure setDy(dy: Integer); override;
        function getDy: Integer; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAllBinaryAdjustedAndroidImageRotationAnimation.InitFields;
begin
  
  
end;
    

constructor TAllBinaryAdjustedAndroidImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(originalImage, image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAllBinaryAdjustedAndroidImageRotationAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAllBinaryAdjustedAndroidImageRotationAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAllBinaryAdjustedAndroidImageRotationAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAllBinaryAdjustedAndroidImageRotationAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TAllBinaryAdjustedAndroidImageRotationAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TAllBinaryAdjustedAndroidImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

