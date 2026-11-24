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
// package org.allbinary.image
unit AnimationFactoryImageScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BaseImageAnimationFactory, ImageJ2MEScaleUtil;

type
  {AB:TYPES}
  TAnimationFactoryImageScaleUtil = class(TObject)
  public
    imageScaleUtil: TImageJ2MEScaleUtil;
    class var instance: TAnimationFactoryImageScaleUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAnimationFactoryImageScaleUtil; static;
        function createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TImage; virtual;
        procedure processAdjust(baseImageAnimationFactory_: TBaseImageAnimationFactory); virtual;
  end;

implementation
uses
  AnimationFactoryInitializationVisitor, LogUtil, StringMaker, ScaleProperties, CommonLabels, CommonStrings;


{AB:CODE}

procedure TAnimationFactoryImageScaleUtil.InitFields;
begin
  Self.imageScaleUtil := TImageJ2MEScaleUtil.getInstance();
end;

constructor TAnimationFactoryImageScaleUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAnimationFactoryImageScaleUtil.getInstance: TAnimationFactoryImageScaleUtil;
begin
        Exit(TAnimationFactoryImageScaleUtil.instance);
end;
    

// throws Exception
function TAnimationFactoryImageScaleUtil.createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TImage;
var
  scaledImage: TImage;
  scaleX: Single;
  scaleY: Single;
  scaledWidth: Integer;
  scaledHeight: Integer;
begin
        
        if ((scaleWidth) <> (0)) and ((scaleHeight) <> (0)) then begin
            scaleX := ((scaleWidth)) / ((width));
            scaleY := ((scaleHeight)) / ((height));
            if ((((scaleX) = (1.0)) and ((scaleY) = (1.0)))) or ((((scaleX) = (0.0)) or ((scaleY) = (0.0)))) then begin
                scaledImage := image_;
            end else begin
                scaledWidth := Integer(Trunc(((scaleX) * (width))));
                scaledHeight := Integer(Trunc(((scaleY) * (height))));
                scaledImage := Self.imageScaleUtil.scale(image_, scaledWidth, scaledHeight);
            end;
        end else begin
            scaledImage := image_;
        end;
        Exit(scaledImage);
end;
    

// throws Exception
procedure TAnimationFactoryImageScaleUtil.processAdjust(baseImageAnimationFactory_: TBaseImageAnimationFactory);
var
  scaleProperties_: TScaleProperties;
  animationFactoryInitializationVisitor_: TAnimationFactoryInitializationVisitor;
  scaleX: Single;
  scaleY: Single;
begin
        scaleProperties_ := baseImageAnimationFactory_.getScalePropertiesP();
        if ((scaleProperties_.scaleWidth) <> (0)) and ((scaleProperties_.scaleHeight) <> (0)) then begin
            animationFactoryInitializationVisitor_ := baseImageAnimationFactory_.getAnimationFactoryInitializationVisitorP();
            scaleX := (((1.0 * (scaleProperties_.scaleWidth)))) / (((1.0 * (animationFactoryInitializationVisitor_.width))));
            scaleY := (((1.0 * (scaleProperties_.scaleHeight)))) / (((1.0 * (animationFactoryInitializationVisitor_.height))));
            if ((((scaleX) = (1.0)) and ((scaleY) = (1.0)))) or ((((scaleX) = (0.0)) or ((scaleY) = (0.0)))) then begin
            end else begin
                animationFactoryInitializationVisitor_.dx := Integer(Trunc(((animationFactoryInitializationVisitor_.originalDx) * (scaleX))));
                animationFactoryInitializationVisitor_.dy := Integer(Trunc(((animationFactoryInitializationVisitor_.originalDy) * (scaleY))));
            end;
        end else begin
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAnimationFactoryImageScaleUtil.instance := TAnimationFactoryImageScaleUtil.Create();
  {AB:END}

end.

