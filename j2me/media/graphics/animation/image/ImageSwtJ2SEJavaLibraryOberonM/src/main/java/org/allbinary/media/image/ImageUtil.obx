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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Composite, LogUtil, CommonSeps, CommonStrings, Image;

type
  {AB:TYPES}
  TImageUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    IIOIMAGE_POOL_NAME: string;
    CREATE_BUFFERED_IMAGE: string;
    class var instance: TImageUtil;
    procedure InitFields;
        class function getInstance: TImageUtil; static;
        constructor Create;
        function create_(width: Integer; height: Integer): TImage; virtual;
        function createBufferedImage(bufferedImageArray: TArray<TImage>; percent: Integer; scale: Boolean): TArray<TImage>; virtual;
        function createBufferedImage2(bufferedImageArray: TArray<TImage>; percent: Single; scale: Boolean): TArray<TImage>; virtual;
        function createBufferedImage3(bufferedImageArray: TArray<TImage>; width: Integer; height: Integer; scale: Boolean): TArray<TImage>; virtual;
        function createBufferedImage4(bufferedImage: TImage; newWidth: Integer; newHeight: Integer): TImage; virtual;
        function createBufferedImage5(bufferedImage: TImage; newWidth: Integer; newHeight: Integer; scale: Boolean): TImage; virtual;
        function createBufferedImage6(bufferedImage: TImage; newWidth: Integer; newHeight: Integer; scale: Boolean; allowTranslate: Boolean): TImage; virtual;
        function drawTransformedImage(image_: TImage; parent: TComposite; dx: Integer; dy: Integer; width: Integer; height: Integer): TCanvas; virtual;
        function toString(bufferedImage: TImage): string; virtual;
  end;

implementation
uses
  SWT, GC, ImageData, StringMaker, CommonLabels, PaintEvent, PaintListener, Transform, SwtDisplay, BareMain;


{AB:CODE}

procedure TImageUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
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
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

function TImageUtil.create_(width: Integer; height: Integer): TImage;
var
  display: TSwtDisplay;
begin
        display := TBareMain.shell.getDisplay();
        Exit(TImage.Create(display, width, height));
end;
    

// throws Exception
function TImageUtil.createBufferedImage(bufferedImageArray: TArray<TImage>; percent: Integer; scale: Boolean): TArray<TImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TImage>;
  bufferedImage: TImage;
  imageData_: TImageData;
  newWidth: Integer;
  newHeight: Integer;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TImage>(size);
        
        
        for index := 0 to size - 1 do begin
            bufferedImage := bufferedImageArray[index];
            imageData_ := bufferedImage.getImageData();
            newWidth := Integer(Trunc((TJava.Divide((imageData_.width) * (percent), 100))));
            newHeight := Integer(Trunc((TJava.Divide((imageData_.height) * (percent), 100))));
            scaledBufferedImageArray[index] := Self.createBufferedImage5(bufferedImage, newWidth, newHeight, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImage2(bufferedImageArray: TArray<TImage>; percent: Single; scale: Boolean): TArray<TImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TImage>;
  bufferedImage: TImage;
  imageData_: TImageData;
  newWidth: Integer;
  newHeight: Integer;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TImage>(size);
        
        
        for index := 0 to size - 1 do begin
            bufferedImage := bufferedImageArray[index];
            imageData_ := bufferedImage.getImageData();
            newWidth := Integer(Trunc(((imageData_.width) * (percent))));
            newHeight := Integer(Trunc(((imageData_.height) * (percent))));
            scaledBufferedImageArray[index] := Self.createBufferedImage5(bufferedImage, newWidth, newHeight, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImage3(bufferedImageArray: TArray<TImage>; width: Integer; height: Integer; scale: Boolean): TArray<TImage>;
var
  size: Integer;
  scaledBufferedImageArray: TArray<TImage>;
  index: Integer;
begin
        size := System.Length(bufferedImageArray);
        scaledBufferedImageArray := TJava.NewArray<TImage>(size);
        for index := 0 to size - 1 do begin
            scaledBufferedImageArray[index] := Self.createBufferedImage5(bufferedImageArray[index], width, height, scale);
        end;
        Exit(scaledBufferedImageArray);
end;
    

// throws Exception
function TImageUtil.createBufferedImage4(bufferedImage: TImage; newWidth: Integer; newHeight: Integer): TImage;
begin
        Exit(Self.createBufferedImage5(bufferedImage, newWidth, newHeight, True));
end;
    

// throws Exception
function TImageUtil.createBufferedImage5(bufferedImage: TImage; newWidth: Integer; newHeight: Integer; scale: Boolean): TImage;
begin
        Exit(Self.createBufferedImage6(bufferedImage, newWidth, newHeight, scale, False));
end;
    

// throws Exception
function TImageUtil.createBufferedImage6(bufferedImage: TImage; newWidth: Integer; newHeight: Integer; scale: Boolean; allowTranslate: Boolean): TImage;
var
  imageData_: TImageData;
  width: Single;
  height: Single;
  d_newWidth: Single;
  d_newHeight: Single;
  widthRatio: Single;
  heightRatio: Single;
  ratioX: Single;
  ratioY: Single;
  dx: Single;
  dy: Single;
  newBufferedImage: TImage;
  gc_: TGC;
  affineTransform: TTransform;
begin
        imageData_ := bufferedImage.getImageData();
        width := imageData_.width;
        height := imageData_.height;
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
        Self.logUtil.putF(TStringMaker.Create().appendfloat(width).append(Self.commonSeps.FORWARD_SLASH).appendfloat(height).append(Self.commonSeps.COLON).appendint(newWidth).append(Self.commonSeps.FORWARD_SLASH).appendint(newHeight).append(Self.commonSeps.COLON).appendfloat(widthRatio).append(Self.commonSeps.FORWARD_SLASH).appendfloat(heightRatio).toString(), TJava.Box(Self), Self.CREATE_BUFFERED_IMAGE);
        dx := 0.0;
        dy := 0.0;
        if (not (scale)) and (allowTranslate) then begin
            dx := (((newWidth) - (width))) / (2.0);
            dy := (((newHeight) - (height))) / (2.0);
            Self.logUtil.putF(TStringMaker.Create().append('Translate dx: ').appendfloat(dx).append(' dy: ').appendfloat(dy).toString(), TJava.Box(Self), Self.CREATE_BUFFERED_IMAGE);
        end;
        newBufferedImage := TImage.Create(TBareMain.shell.getDisplay(), newWidth, newHeight);
        gc_ := TGC.Create(newBufferedImage);
        affineTransform := TTransform.Create(gc_.getDevice());
        affineTransform.scale(ratioX, ratioY);
        affineTransform.translate(dx, dy);
        gc_.setTransform(affineTransform);
        gc_.setAntialias(TSWT.ON_);
        gc_.setInterpolation(TSWT.HIGH);
        gc_.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, 0, 0, newWidth, newHeight);
        gc_.dispose_();
        Exit(newBufferedImage);
end;
    

function TImageUtil.drawTransformedImage(image_: TImage; parent: TComposite; dx: Integer; dy: Integer; width: Integer; height: Integer): TCanvas;
var
  imageCanvas: TCanvas;
begin
        imageCanvas := TCanvas.Create(parent, TSWT.NONE);
        imageCanvas.addPaintListener(IPaintListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.paintControl(event: TPaintEvent);
var
  gc_: TGC;
  affineTransform: TTransform;
begin
                gc_ := event.gc;
                affineTransform := TTransform.Create(gc_.getDevice());
                affineTransform.translate(dx, dy);
                gc_.setAntialias(TSWT.ON_);
                gc_.setInterpolation(TSWT.HIGH);
                gc_.drawImage(image_, 0, 0, image_.getBounds().width, image_.getBounds().height, 0, 0, width, height);
end;
*));
        Exit(imageCanvas);
end;
    

function TImageUtil.toString(bufferedImage: TImage): string;
var
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
  imageData_: TImageData;
begin
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        imageData_ := bufferedImage.getImageData();
        stringBuffer.append(' org.eclipse.swt.graphics.Image: ');
        stringBuffer.append(commonLabels_.WIDTH_LABEL);
        stringBuffer.appendint(Integer(Trunc(imageData_.width)));
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Integer(Trunc(imageData_.height)));
        stringBuffer.append(' Type: ');
        stringBuffer.appendint(Integer(Trunc(imageData_.type_)));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TImageUtil.instance := TImageUtil.Create();
  {AB:END}

end.

