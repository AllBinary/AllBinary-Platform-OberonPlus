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
unit ImageCopyUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, LogUtil, ImageUtil, ImageCreationUtil;

type
  {AB:TYPES}
  TImageCopyUtil = class(TObject)
  public
    logUtil: TLogUtil;
    imageUtil: TImageUtil;
    imageCreationUtil: TImageCreationUtil;
    anchor: Integer;
    class var instance: TImageCopyUtil;
    procedure InitFields;
        class function getInstance: TImageCopyUtil; static;
        constructor Create;
        function createImageForRotation(originalImage: TImage): TImage; virtual;
        function createImage(originalImage: TImage): TImage; virtual;
        function createImageScale(originalImage: TImage; canvasScale: Single; resize: Boolean): TImage; virtual;
  end;

implementation
uses
  Anchor, J2SEImmutableImage;


{AB:CODE}

procedure TImageCopyUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageUtil := TImageUtil.getInstance();
  Self.imageCreationUtil := TImageCreationUtil.getInstance();
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

class function TImageCopyUtil.getInstance: TImageCopyUtil;
begin
        Exit(TImageCopyUtil.instance);
end;
    

constructor TImageCopyUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageCopyUtil.createImageForRotation(originalImage: TImage): TImage;
begin
        Exit(Self.createImage(originalImage));
end;
    

// throws Exception
function TImageCopyUtil.createImage(originalImage: TImage): TImage;
var
  image_: TImage;
begin
        image_ := Self.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if image_.isMutable() then begin
            image_.getGraphics().drawImage(originalImage, 0, 0, Self.anchor);
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;
    

// throws Exception
function TImageCopyUtil.createImageScale(originalImage: TImage; canvasScale: Single; resize: Boolean): TImage;
var
  newWidth: Integer;
  newHeight: Integer;
  originalBufferedImage: TBufferedImage;
  bufferedImage_: TBufferedImage;
  image_: TJ2SEImmutableImage;
begin
        newWidth := Integer(Trunc(((originalImage.getWidth()) * (canvasScale))));
        newHeight := Integer(Trunc(((originalImage.getHeight()) * (canvasScale))));
        if resize then begin
            if (newWidth) < (newHeight) then begin
                newWidth := newHeight;
            end;
            if (newHeight) < (newWidth) then begin
                newHeight := newWidth;
            end;
        end;
        originalBufferedImage := Self.imageUtil.getBufferedImage(originalImage);
        bufferedImage_ := Self.imageUtil.createBufferedImageWithLargerCanvas(originalBufferedImage, newWidth, newHeight);
        image_ := TJ2SEImmutableImage.Create(bufferedImage_);
        Exit(image_);
end;

initialization
  {AB:INITIALIZATION}
  TImageCopyUtil.instance := TImageCopyUtil.Create();
  {AB:END}

end.

