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
unit ImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, CommonSeps, CommonStrings;

type
  {AB:TYPES}
  TImageUtil = class(TObject)
  public
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    IIOIMAGE_POOL_NAME: string;
    CREATE_BUFFERED_IMAGE: string;
    class var instance: TImageUtil;
    procedure InitFields;
        class function getInstance: TImageUtil; static;
        constructor Create;
        function getDefaultConfiguration: TGraphicsConfiguration;
        function create_(width: Integer; height: Integer): TBufferedImage; virtual;
        function createBufferedImageForResize(bufferedImageArray: TArray<TBufferedImage>; percent: Integer; scale: Boolean): TArray<TBufferedImage>; virtual;
        function createBufferedImage2(bufferedImageArray: TArray<TBufferedImage>; percent: Single; scale: Boolean): TArray<TBufferedImage>; virtual;
        function createBufferedImage3(bufferedImageArray: TArray<TBufferedImage>; width: Integer; height: Integer; scale: Boolean): TArray<TBufferedImage>; virtual;
        function createBufferedImageForSave(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer): TBufferedImage; virtual;
        function createBufferedImage(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer; scale: Boolean): TBufferedImage; virtual;
        function createBufferedImageAllowTranslate(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer; scale: Boolean; allowTranslate: Boolean): TBufferedImage; virtual;
        function createBufferedImageWithLargerCanvas(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer): TBufferedImage; virtual;
        function convertToBufferedImage(toolkitImage: TImage): TBufferedImage; virtual;
        function getBufferedImage(image_: TImage): TBufferedImage; virtual;
        function toString(bufferedImage_: TBufferedImage): string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels, J2SEImmutableImage, J2SEMutableImage;


{AB:CODE}

procedure TImageUtil.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.IIOIMAGE_POOL_NAME := 'IIOIMAGE_POOL_NAME';
  Self.CREATE_BUFFERED_IMAGE := 'createBufferedImage';
end;
    

class function TImageUtil.getInstance: TImageUtil;
begin
        Exit(TImageUtil.instance);
end;
    

constructor TImageUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageUtil.getDefaultConfiguration: TGraphicsConfiguration;
var
  ge: TGraphicsEnvironment;
  gd: TGraphicsDevice;
begin
        ge := TGraphicsEnvironment.getLocalGraphicsEnvironment();
        gd := ge.getDefaultScreenDevice();
        Exit(gd.getDefaultConfiguration());
end;
    

function TImageUtil.create_(width: Integer; height: Integer): TBufferedImage;
var
  graphicsConfiguration_: TGraphicsConfiguration;
begin
        graphicsConfiguration_ := Self.getDefaultConfiguration();
        Exit(graphicsConfiguration_.createCompatibleImage(width, height, TTransparency.TRANSLUCENT));
end;
    

// throws Exception
function TImageUtil.createBufferedImageForResize(bufferedImageArray: TArray<TBufferedImage>; percent: Integer; scale: Boolean): TArray<TBufferedImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TBufferedImage>;
  bufferedImage_: TBufferedImage;
  newWidth: Integer;
  newHeight: Integer;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TBufferedImage>(size);
        
        for index := 0 to size - 1 do begin
            bufferedImage_ := bufferedImageArray[index];
            newWidth := Integer(Trunc((TJava.Divide((bufferedImage_.getWidth()) * (percent), 100))));
            newHeight := Integer(Trunc((TJava.Divide((bufferedImage_.getHeight()) * (percent), 100))));
            scaledBufferedImageArray[index] := Self.createBufferedImage(bufferedImage_, newWidth, newHeight, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImage2(bufferedImageArray: TArray<TBufferedImage>; percent: Single; scale: Boolean): TArray<TBufferedImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TBufferedImage>;
  bufferedImage_: TBufferedImage;
  newWidth: Integer;
  newHeight: Integer;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TBufferedImage>(size);
        
        for index := 0 to size - 1 do begin
            bufferedImage_ := bufferedImageArray[index];
            newWidth := Integer(Trunc(((bufferedImage_.getWidth()) * (percent))));
            newHeight := Integer(Trunc(((bufferedImage_.getHeight()) * (percent))));
            scaledBufferedImageArray[index] := Self.createBufferedImage(bufferedImage_, newWidth, newHeight, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImage3(bufferedImageArray: TArray<TBufferedImage>; width: Integer; height: Integer; scale: Boolean): TArray<TBufferedImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TBufferedImage>(size);
        for index := 0 to size - 1 do begin
            scaledBufferedImageArray[index] := Self.createBufferedImage(bufferedImageArray[index], width, height, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImageForSave(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer): TBufferedImage;
begin
        Exit(Self.createBufferedImage(bufferedImage_, newWidth, newHeight, True));
end;
    

// throws Exception
function TImageUtil.createBufferedImage(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer; scale: Boolean): TBufferedImage;
begin
        Exit(Self.createBufferedImageAllowTranslate(bufferedImage_, newWidth, newHeight, scale, False));
end;
    

// throws Exception
function TImageUtil.createBufferedImageAllowTranslate(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer; scale: Boolean; allowTranslate: Boolean): TBufferedImage;
var
  width: Double;
  height: Double;
  d_newWidth: Double;
  d_newHeight: Double;
  widthRatio: Double;
  heightRatio: Double;
  ratioX: Double;
  ratioY: Double;
  affineTransform_: TAffineTransform;
  dx: Double;
  dy: Double;
  newBufferedImage: TBufferedImage;
  graphics: TGraphics2D;
begin
        width := bufferedImage_.getWidth();
        height := bufferedImage_.getHeight();
        d_newWidth := newWidth;
        d_newHeight := newHeight;
        widthRatio := (d_newWidth) / (width);
        heightRatio := (d_newHeight) / (height);
        ratioX := 1.0;
        ratioY := 1.0;
        if scale then begin
            ratioX := widthRatio;
            ratioY := heightRatio;
        end;
        affineTransform_ := TAffineTransform.getScaleInstance(ratioX, ratioY);
        if (not (scale)) and (allowTranslate) then begin
            dx := (((newWidth) - (width))) / (2.0);
            dy := (((newHeight) - (height))) / (2.0);
            affineTransform_.translate(dx, dy);
        end;
        newBufferedImage := TBufferedImage.Create(newWidth, newHeight, TBufferedImage.TYPE_INT_ARGB_PRE);
        graphics := newBufferedImage.createGraphics();
        graphics.drawRenderedImage(bufferedImage_, affineTransform_);
        Exit(newBufferedImage);
end;
    

// throws Exception
function TImageUtil.createBufferedImageWithLargerCanvas(bufferedImage_: TBufferedImage; newWidth: Integer; newHeight: Integer): TBufferedImage;
var
  width: Double;
  height: Double;
  d_newWidth: Double;
  d_newHeight: Double;
  widthRatio: Double;
  heightRatio: Double;
  dx2: Integer;
  dy2: Integer;
  dx: Integer;
  dy: Integer;
  dx4: Integer;
  dy4: Integer;
  newBufferedImage: TBufferedImage;
  graphics: TGraphics2D;
begin
        width := bufferedImage_.getWidth();
        height := bufferedImage_.getHeight();
        d_newWidth := newWidth;
        d_newHeight := newHeight;
        widthRatio := (d_newWidth) / (width);
        heightRatio := (d_newHeight) / (height);
        dx2 := Integer(Trunc(((newWidth) - (width))));
        dy2 := Integer(Trunc(((newHeight) - (height))));
        dx := (dx2) div (2);
        dy := (dy2) div (2);
        dx4 := (dx2) div (4);
        dy4 := (dy2) div (4);
        newBufferedImage := TBufferedImage.Create(newWidth, newHeight, TBufferedImage.TYPE_INT_ARGB_PRE);
        graphics := newBufferedImage.createGraphics();
        graphics.drawImage(bufferedImage_, dx4, dy4, nil);
        Exit(newBufferedImage);
end;
    

function TImageUtil.convertToBufferedImage(toolkitImage: TImage): TBufferedImage;
var
  bufferedImage_: TBufferedImage;
  g2d: TGraphics2D;
begin
        if (toolkitImage) = (nil) then begin
            Exit(nil);
        end;
        bufferedImage_ := TBufferedImage.Create(toolkitImage.getWidth(nil), toolkitImage.getHeight(nil), TBufferedImage.TYPE_INT_ARGB);
        g2d := bufferedImage_.createGraphics();
        g2d.drawImage(toolkitImage, 0, 0, nil);
        g2d.dispose_();
        Exit(bufferedImage_);
end;
    

function TImageUtil.getBufferedImage(image_: TImage): TBufferedImage;
var
  bufferedImage_: TBufferedImage;
  j2seImage: TJ2SEImmutableImage;
  j2seImage_2: TJ2SEMutableImage;
begin
        
        if image_.isMutable() then begin
            j2seImage_2 := TJ2SEMutableImage(TJava.ToObject(image_));
            bufferedImage_ := TBufferedImage(TJava.ToObject(j2seImage_2.getImage()));
        end else begin
            j2seImage := TJ2SEImmutableImage(TJava.ToObject(image_));
            bufferedImage_ := TBufferedImage(TJava.ToObject(j2seImage.getImage()));
        end;
        Exit(bufferedImage_);
end;
    

function TImageUtil.toString(bufferedImage_: TBufferedImage): string;
var
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(' BufferedImage -');
        stringBuffer.append(commonLabels_.WIDTH_LABEL);
        stringBuffer.appendint(Integer(Trunc(bufferedImage_.getWidth())));
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Integer(Trunc(bufferedImage_.getHeight())));
        stringBuffer.append(' Type: ');
        stringBuffer.appendint(Integer(Trunc(bufferedImage_.getType())));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TImageUtil.instance := TImageUtil.Create();
  {AB:END}

end.

