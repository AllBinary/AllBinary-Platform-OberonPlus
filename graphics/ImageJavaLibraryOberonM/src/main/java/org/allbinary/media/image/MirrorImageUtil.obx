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
unit MirrorImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageUtil;

type
  {AB:TYPES}
  TMirrorImageUtil = class(TObject)
  public
    logUtil: TLogUtil;
    imageUtil: TImageUtil;
    class var instance: TMirrorImageUtil;
    procedure InitFields;
        class function getInstance: TMirrorImageUtil; static;
        constructor Create;
        function getImage(bufferedImage_: TBufferedImage; verticle: Boolean; horizontal: Boolean): TBufferedImage; virtual;
        function getImages(bufferedImage_: TBufferedImage; verticle: Boolean; horizontal: Boolean): TArray<TBufferedImage>; virtual;
  end;

implementation
uses
  Graphics2D;


{AB:CODE}

procedure TMirrorImageUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageUtil := TImageUtil.getInstance();
end;
    

class function TMirrorImageUtil.getInstance: TMirrorImageUtil;
begin
        Exit(TMirrorImageUtil.instance);
end;
    

constructor TMirrorImageUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TMirrorImageUtil.getImage(bufferedImage_: TBufferedImage; verticle: Boolean; horizontal: Boolean): TBufferedImage;
var
  newBufferedImage: TBufferedImage;
  g: TGraphics2D;
  tx: TAffineTransform;
  op: TAffineTransformOp;
begin
        Self.logUtil.putF('Starting', TJava.Box(Self), 'getImage');
        newBufferedImage := Self.imageUtil.create_(bufferedImage_.getWidth(nil), bufferedImage_.getHeight(nil));
        g := newBufferedImage.createGraphics();
        if verticle then begin
            tx := TAffineTransform.getScaleInstance(1, -1);
            tx.translate(0, -bufferedImage_.getHeight(nil));
            op := TAffineTransformOp.Create(tx, TAffineTransformOp.TYPE_NEAREST_NEIGHBOR);
            bufferedImage_ := op.filter(bufferedImage_, nil);
        end;
        if horizontal then begin
            tx := TAffineTransform.getScaleInstance(-1, 1);
            tx.translate(-bufferedImage_.getWidth(nil), 0);
            op := TAffineTransformOp.Create(tx, TAffineTransformOp.TYPE_NEAREST_NEIGHBOR);
            bufferedImage_ := op.filter(bufferedImage_, nil);
        end;
        g.drawImage(bufferedImage_, 0, 0, bufferedImage_.getWidth(nil), bufferedImage_.getHeight(nil), nil);
        g.dispose_();
        Exit(newBufferedImage);
end;
    

function TMirrorImageUtil.getImages(bufferedImage_: TBufferedImage; verticle: Boolean; horizontal: Boolean): TArray<TBufferedImage>;
var
  width: Integer;
  height: Integer;
  cellHeight: Integer;
  cellWidth: Integer;
  numberOfFramesPerOrientation: Integer;
  numberOfFrames: Integer;
  bufferedImageArray: TArray<TBufferedImage>;
  y: Integer;
  x: Integer;
  index: Integer;
begin
        width := bufferedImage_.getWidth();
        height := bufferedImage_.getHeight();
        cellHeight := height;
        cellWidth := height;
        numberOfFramesPerOrientation := (width) div (cellWidth);
        numberOfFrames := numberOfFramesPerOrientation;
        if verticle then begin
            numberOfFrames := (numberOfFrames) * (2);
        end;
        if horizontal then begin
            numberOfFrames := (numberOfFrames) * (2);
        end;
        Self.logUtil.putF('numberOfFramesPerOrientation: ' + IntToStr(numberOfFramesPerOrientation) + ' numberOfFrames: ' + IntToStr(numberOfFrames), TJava.Box(Self), 'getImages');
        bufferedImageArray := TJava.NewArray<TBufferedImage>(numberOfFrames);
        y := 0;
        for index := 0 to numberOfFramesPerOrientation - 1 do begin
            x := (index) * (cellWidth);
            bufferedImageArray[index] := bufferedImage_.getSubimage(x, y, cellWidth, cellHeight);
        end;
        for index := 0 to numberOfFramesPerOrientation - 1 do begin
            bufferedImageArray[(index) + (numberOfFramesPerOrientation)] := Self.getImage(bufferedImageArray[index], verticle, horizontal);
        end;
        Exit(bufferedImageArray);
end;

initialization
  {AB:INITIALIZATION}
  TMirrorImageUtil.instance := TMirrorImageUtil.Create();
  {AB:END}

end.

