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
unit AllBinaryAdjustedJ2SEImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, AllBinaryJ2SEImageRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryAdjustedJ2SEImageRotationAnimation = class(TAllBinaryJ2SEImageRotationAnimation)
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

procedure TAllBinaryAdjustedJ2SEImageRotationAnimation.InitFields;
begin
  
  
end;
    

constructor TAllBinaryAdjustedJ2SEImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(originalImage, image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAllBinaryAdjustedJ2SEImageRotationAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAllBinaryAdjustedJ2SEImageRotationAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAllBinaryAdjustedJ2SEImageRotationAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAllBinaryAdjustedJ2SEImageRotationAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TAllBinaryAdjustedJ2SEImageRotationAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TAllBinaryAdjustedJ2SEImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

