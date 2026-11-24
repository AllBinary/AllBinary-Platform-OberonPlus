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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageJ2SERotationUtil;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    imageJ2SERotationUtil: TImageJ2SERotationUtil;
    class var instance: TImageRotationUtil;
    procedure InitFields;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        procedure rotateImage(originalImage: TImage; image_: TImage; totalAngle: Integer); virtual;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, PreLogUtil, J2SEImmutableImage, J2SEMutableImage;


{AB:CODE}

procedure TImageRotationUtil.InitFields;
begin
  Self.imageJ2SERotationUtil := TImageJ2SERotationUtil.getInstance();
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
  j2seImage: TJ2SEMutableImage;
  newBufferedImage: TBufferedImage;
  originalAwtImage: TImage;
  originalJ2SEImage: TJ2SEImmutableImage;
  originalJ2SEImage_2: TJ2SEMutableImage;
begin
        if image_.isMutable() then begin
            j2seImage := TJ2SEMutableImage(TJava.ToObject(image_));
            newBufferedImage := TBufferedImage(TJava.ToObject(j2seImage.getImage()));
            originalAwtImage := nil;
            if originalImage.isMutable() then begin
                originalJ2SEImage_2 := TJ2SEMutableImage(TJava.ToObject(originalImage));
                originalAwtImage := TImage(TJava.ToObject(originalJ2SEImage_2.getImage()));
            end else begin
                originalJ2SEImage := TJ2SEImmutableImage(TJava.ToObject(originalImage));
                originalAwtImage := TImage(TJava.ToObject(originalJ2SEImage.getImage()));
            end;
            Self.imageJ2SERotationUtil.rotateImage(originalAwtImage, newBufferedImage, totalAngle);
        end else begin
            TPreLogUtil.putOE('Not Mutable', TJava.Box(Self), 'getRotatedImage', TJava.Box(SysUtils.Exception.Create('')));
        end;
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
var
  image_: TImage;
  originalAwtImage: TImage;
  originalJ2SEImage: TJ2SEImmutableImage;
  originalJ2SEImage_2: TJ2SEMutableImage;
  j2seImage: TJ2SEMutableImage;
  newBufferedImage: TBufferedImage;
  bufferedImage_: TBufferedImage;
begin
        image_ := TImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if image_.isMutable() then begin
            originalAwtImage := nil;
            if originalImage.isMutable() then begin
                originalJ2SEImage_2 := TJ2SEMutableImage(TJava.ToObject(originalImage));
                originalAwtImage := TImage(TJava.ToObject(originalJ2SEImage_2.getImage()));
            end else begin
                originalJ2SEImage := TJ2SEImmutableImage(TJava.ToObject(originalImage));
                originalAwtImage := TImage(TJava.ToObject(originalJ2SEImage.getImage()));
            end;
            j2seImage := TJ2SEMutableImage(TJava.ToObject(image_));
            newBufferedImage := TBufferedImage(TJava.ToObject(j2seImage.getImage()));
            bufferedImage_ := Self.imageJ2SERotationUtil.createRotatedImage(originalAwtImage, newBufferedImage, rotationInDegrees);
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

