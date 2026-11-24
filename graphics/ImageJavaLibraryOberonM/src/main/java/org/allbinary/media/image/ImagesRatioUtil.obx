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
unit ImagesRatioUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageUtil;

type
  {AB:TYPES}
  TImagesRatioUtil = class(TObject)
  public
    logUtil: TLogUtil;
    imageUtil: TImageUtil;
    class var instance: TImagesRatioUtil;
    procedure InitFields;
        class function getInstance: TImagesRatioUtil; static;
        constructor Create;
        function isEqual(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer): Boolean; virtual;
        function getAverage(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer): Double; virtual;
        function fudge(bufferedImage_: TBufferedImage; ratio: Double): TBufferedImage; overload; virtual;
        function fudge(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer; ratio: Double): TArray<TBufferedImage>; overload; virtual;
  end;

implementation
uses
  Point, Graphics2D, CommonLabels;


{AB:CODE}

procedure TImagesRatioUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageUtil := TImageUtil.getInstance();
end;
    

class function TImagesRatioUtil.getInstance: TImagesRatioUtil;
begin
        Exit(TImagesRatioUtil.instance);
end;
    

constructor TImagesRatioUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImagesRatioUtil.isEqual(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer): Boolean;
var
  end_: Integer;
  ratio: Double;
  index: Integer;
begin
        end_ := totalImages;
        if (System.Length(bufferedImageArray)) < (totalImages) then begin
            end_ := System.Length(bufferedImageArray);
        end;
        ratio := (((1.0 * (bufferedImageArray[0].getWidth()))) / (bufferedImageArray[0].getHeight()));
        for index := 1 to end_ - 1 do begin
            if (ratio) <> ((((1.0 * (bufferedImageArray[index].getWidth()))) / (bufferedImageArray[index].getHeight()))) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TImagesRatioUtil.getAverage(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer): Double;
var
  ratio: Double;
  end_: Integer;
  index: Integer;
begin
        ratio := 0.0;
        end_ := totalImages;
        if (System.Length(bufferedImageArray)) < (totalImages) then begin
            end_ := System.Length(bufferedImageArray);
        end;
        for index := 0 to end_ - 1 do begin
            ratio := (ratio) + ((((1.0 * (bufferedImageArray[index].getWidth()))) / (bufferedImageArray[index].getHeight())));
        end;
        Exit(((ratio) / (end_)));
end;
    

// throws Exception
function TImagesRatioUtil.fudge(bufferedImage_: TBufferedImage; ratio: Double): TBufferedImage;
var
  imageRatio: Double;
  point_: TPoint;
  newHeight: Integer;
  newWidth: Integer;
  commonLabels_: TCommonLabels;
  newBufferedImage: TBufferedImage;
  g: TGraphics2D;
  firstColumnBufferedImage: TBufferedImage;
  lastColumnBufferedImage: TBufferedImage;
  index: Integer;
  firstRowBufferedImage: TBufferedImage;
  lastRowBufferedImage: TBufferedImage;
begin
        imageRatio := (((1.0 * (bufferedImage_.getWidth()))) / (bufferedImage_.getHeight()));
        point_ := TPoint.Create();
        newHeight := bufferedImage_.getHeight();
        newWidth := bufferedImage_.getWidth();
        if (ratio) > (imageRatio) then begin
            newWidth := Integer(Trunc((((1.0 * (bufferedImage_.getHeight()))) * (ratio))));
            point_.x := TJava.Divide(((newWidth) - (bufferedImage_.getWidth())), 2);
        end else begin
            newHeight := Integer(Trunc((((1.0 * (bufferedImage_.getWidth()))) / (ratio))));
            point_.y := TJava.Divide(((newHeight) - (bufferedImage_.getHeight())), 2);
        end;
        commonLabels_ := TCommonLabels.getInstance();
        Self.logUtil.putF(commonLabels_.WIDTH_LABEL + TJava.ToString(bufferedImage_.getWidth()) + ' newWidth: ' + IntToStr(newWidth) + commonLabels_.HEIGHT_LABEL + TJava.ToString(bufferedImage_.getHeight()) + ' newHeight: ' + IntToStr(newHeight) + ' needed ratio: ' + FloatToStr(((newWidth) / (newHeight))), TJava.Box(Self), 'fudge');
        newBufferedImage := Self.imageUtil.create_(newWidth, newHeight);
        g := newBufferedImage.createGraphics();
        if (point_.x) > (0) then begin
            firstColumnBufferedImage := bufferedImage_.getSubimage(0, 0, 1, bufferedImage_.getHeight());
            lastColumnBufferedImage := bufferedImage_.getSubimage((bufferedImage_.getWidth()) - (1), 0, 1, bufferedImage_.getHeight());
            Self.logUtil.putF('Draw some columns to fill in gap', TJava.Box(Self), 'fudge');
            for index := 0 to point_.x - 1 do begin
                g.drawImage(firstColumnBufferedImage, index, 0, nil);
                g.drawImage(lastColumnBufferedImage, (newWidth) - (index), 0, nil);
            end;
        end;
        if (point_.y) > (0) then begin
            firstRowBufferedImage := bufferedImage_.getSubimage(0, 0, bufferedImage_.getWidth(), 1);
            lastRowBufferedImage := bufferedImage_.getSubimage(0, (bufferedImage_.getHeight()) - (1), bufferedImage_.getWidth(), 1);
            Self.logUtil.putF('Draw some rows to fill in gap', TJava.Box(Self), 'fudge');
            for index := 0 to point_.y - 1 do begin
                g.drawImage(firstRowBufferedImage, 0, index, nil);
                g.drawImage(lastRowBufferedImage, 0, (newHeight) - (index), nil);
            end;
        end;
        g.drawImage(bufferedImage_, point_.x, point_.y, bufferedImage_.getWidth(), bufferedImage_.getHeight(), nil);
        Exit(newBufferedImage);
end;
    

// throws Exception
function TImagesRatioUtil.fudge(bufferedImageArray: TArray<TBufferedImage>; totalImages: Integer; ratio: Double): TArray<TBufferedImage>;
var
  end_: Integer;
  fudgedBufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
begin
        end_ := totalImages;
        if (System.Length(bufferedImageArray)) < (totalImages) then begin
            end_ := System.Length(bufferedImageArray);
        end;
        fudgedBufferedImageArray := TJava.NewArray<TBufferedImage>(end_);
        for index := 0 to end_ - 1 do begin
            fudgedBufferedImageArray[index] := Self.fudge(bufferedImageArray[index], ratio);
        end;
        Exit(fudgedBufferedImageArray);
end;

initialization
  {AB:INITIALIZATION}
  TImagesRatioUtil.instance := TImagesRatioUtil.Create();
  {AB:END}

end.

