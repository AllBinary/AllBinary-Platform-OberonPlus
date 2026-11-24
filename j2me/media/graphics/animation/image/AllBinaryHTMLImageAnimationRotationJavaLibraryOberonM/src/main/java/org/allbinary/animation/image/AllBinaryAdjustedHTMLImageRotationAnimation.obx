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
unit AllBinaryAdjustedHTMLImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, AllBinaryHTMLImageRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryAdjustedHTMLImageRotationAnimation = class(TAllBinaryHTMLImageRotationAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure setDx(dx: Integer); virtual;
        function getDx: Integer; virtual;
        procedure setDy(dy: Integer); virtual;
        function getDy: Integer; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TAllBinaryAdjustedHTMLImageRotationAnimation.InitFields;
begin
  
  
end;
    

constructor TAllBinaryAdjustedHTMLImageRotationAnimation.Create(originalImage: TImage; image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(originalImage, image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAllBinaryAdjustedHTMLImageRotationAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAllBinaryAdjustedHTMLImageRotationAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAllBinaryAdjustedHTMLImageRotationAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAllBinaryAdjustedHTMLImageRotationAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TAllBinaryAdjustedHTMLImageRotationAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TAllBinaryAdjustedHTMLImageRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

