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
// package org.allbinary.media.image
unit ImageRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Features, ImageSwtRotationUtil;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    imageSwtRotationUtil: TImageSwtRotationUtil;
    features: TFeatures;
    class var instance: TImageRotationUtil;
    procedure InitFields;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        procedure rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer); virtual;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, OpenGLESImage, PreLogUtil, GC, SwtImmutableImage, SwtMutableImage;


{AB:CODE}

procedure TImageRotationUtil.InitFields;
begin
  Self.imageSwtRotationUtil := TImageSwtRotationUtil.getInstance();
  Self.features := TFeatures.getInstance();
end;
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TImageRotationUtil.rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer);
var
  originalImage2: TImage;
  openGLESImage_: TOpenGLESImage;
  originalSwtImage: TImage;
  gc_: TGC;
  copySwtImage: TImage;
  swtImage: TSwtMutableImage;
begin
        originalImage2 := originalImage;
        if Self.features.isFeature(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            if (image_.getType()) >= (TOpenGLESImage.TYPE_) then begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(image_)));
                openGLESImage_.openGLESImageProperties.angle := totalAngle;
                Exit;
            end else begin
                TPreLogUtil.put('OpenGL but image is: ' + TJava.ToString(image_) + ' type: ' + TJava.ToString(image_.getType()), TJava.Box(Self), 'rotateImage');
            end;
        end;
        originalSwtImage := (TImage(TJava.ToObject(originalImage2.getImage())));
        gc_ := nil;
        copySwtImage := nil;
        if image_.isMutable() then begin
            swtImage := TSwtMutableImage(TJava.ToObject(image_));
            copySwtImage := TImage(TJava.ToObject(swtImage.getImage()));
            gc_ := swtImage.getGc();
            Self.imageSwtRotationUtil.rotateImage(originalSwtImage, copySwtImage, gc_, totalAngle);
        end else begin
            TPreLogUtil.put('No rotation for: ' + image_.toString(), TJava.Box(Self), 'rotateImage');
        end;
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
begin
        Exit(originalImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

