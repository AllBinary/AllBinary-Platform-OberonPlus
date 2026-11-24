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
// package org.allbinary.media.image
unit ImageModifierUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, CommonStrings, LogUtil, ResourceCallbackStrings;

type
  {AB:TYPES}
  TImageModifierUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    resourceCallbackStrings: TResourceCallbackStrings;
    alphaArray: TArray<Boolean>;
    procedure InitFields;
    constructor Create;
        class function getInstanceOrCreate: TImageModifierUtil; static;
        procedure setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Integer); virtual;
        procedure setAlphaF(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single); virtual;
        procedure setAlpha2(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single); virtual;
        procedure setAlpha3(image_: TImage; alpha: Single); virtual;
        function getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>; virtual;
        procedure handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage); virtual;
        procedure copy(imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TImage); virtual;
        procedure reset; virtual;
  end;

implementation
uses
  Graphics, Anchor, StringMaker, PlaynImage, Canvas, CanvasImage, Callback;


{AB:CODE}

procedure TImageModifierUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.resourceCallbackStrings := TResourceCallbackStrings.getInstance();
  
end;

constructor TImageModifierUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageModifierUtil.getInstanceOrCreate: TImageModifierUtil;
begin
        Exit(TImageModifierUtil.Create());
end;
    

procedure TImageModifierUtil.setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Integer);
var
  alphaF: Single;
  alphaFloat: Single;
begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        Self.setAlphaF(originalImage, image_, imageIndex, alphaFloat);
end;
    

procedure TImageModifierUtil.setAlphaF(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single);
begin
        if Self.alphaArray[imageIndex] then begin
            Self.alphaArray[imageIndex] := False;
            Self.setAlpha2(originalImage, image_, imageIndex, alpha);
        end;
end;
    

procedure TImageModifierUtil.setAlpha2(originalImage: TImage; image_: TImage; imageIndex: Integer; alpha: Single);
var
  htmlImage: TPlaynImage;
  canvasImage_: TCanvasImage;
  originalPlaynImage: TImage;
  canvas_: TCanvas;
begin
        htmlImage := TPlaynImage(TJava.ToObject(image_));
        canvasImage_ := TCanvasImage(TJava.ToObject(htmlImage.getImage()));
        originalPlaynImage := TImage(TJava.ToObject((TPlaynImage(TJava.ToObject(originalImage))).getImage()));
        canvas_ := canvasImage_.canvas();
        canvas_.clear();
        canvas_.setAlpha(alpha);
        canvas_.drawImage(originalPlaynImage, 0, 0);
end;
    

procedure TImageModifierUtil.setAlpha3(image_: TImage; alpha: Single);
var
  alphaF: Single;
  alphaFloat: Single;
  htmlImage: TPlaynImage;
  canvasImage_: TCanvasImage;
  canvas_: TCanvas;
begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        htmlImage := TPlaynImage(TJava.ToObject(image_));
        canvasImage_ := TCanvasImage(TJava.ToObject(htmlImage.getImage()));
        canvas_ := canvasImage_.canvas();
        canvas_.setAlpha(alphaFloat);
end;
    

function TImageModifierUtil.getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>;
var
  size: Integer;
  imageArray: TArray<TImage>;
  index: Integer;
begin
        size := System.Length(originalImageArray);
        Self.alphaArray := TJava.NewArray<Boolean>(size);
        imageArray := TJava.NewArray<TImage>(size);
        for index := 0 to size - 1 do begin
            imageArray[index] := originalImageArray[index];
            Self.handleImage(imageArray, index, originalImageArray[index]);
        end;
        Exit(imageArray);
end;
    

procedure TImageModifierUtil.handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage);
var
  image3: TImage;
  callback_: TCallback;
begin
        image3 := TImage(TJava.ToObject((TPlaynImage(TJava.ToObject(image_))).getImage()));
        if (image3) <> (nil) then begin
            if ((image3.isReady()) or (((image3.width()) + (image3.height())) <= (0))) or (TJava.Equals(image_.getName(), Self.resourceCallbackStrings.FROM_DATA)) then begin
                Self.copy(imageArray, index, image_, image3);
            end else begin
                callback_ := TCallback.Create() (* Java anonymous class body: implement it as a named class
                    

                procedure T.onSuccess(resource: TObject);
var
  logUtil_: TLogUtil;
begin
                        logUtil_ := TLogUtil.getInstance();
                        logUtil_.putF(Self.resourceCallbackStrings.DONE + image_.getName(), TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
                        Self.copy(imageArray, index, image_, image3);
end;
                    

                procedure T.onFailure(e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
begin
                        logUtil_ := TLogUtil.getInstance();
                        logUtil_.putF(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(Self.resourceCallbackStrings.ERROR).append(image_.getName()).toString(), TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
end;
*);
                image3.addCallback(callback_);
            end;
        end else begin
            Self.logUtil.putF((Self.resourceCallbackStrings.NULL) + (image_.isMutable()), TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
        end;
end;
    

procedure TImageModifierUtil.copy(imageArray: TArray<TImage>; index: Integer; image_: TImage; image3: TImage);
var
  image2: TImage;
  graphics_: TGraphics;
begin
        try
            image2 := TImage.createImage(image3.width(), image3.height());
            graphics_ := image2.getGraphics();
            graphics_.drawImage(image_, 0, 0, TAnchor.TOP_LEFT);
            imageArray[index] := image2;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + Self.resourceCallbackStrings.DONE, TJava.Box(Self), Self.resourceCallbackStrings.HANDLE_IMAGE);
            end;
        end;
end;
    

procedure TImageModifierUtil.reset;
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.alphaArray);
        for index := 0 to size - 1 do begin
            Self.alphaArray[index] := True;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

