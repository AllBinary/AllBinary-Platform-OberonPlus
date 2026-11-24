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
unit ImageJ2SERotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageUtil, ImageJ2SEUtil;

type
  {AB:TYPES}
  TImageJ2SERotationUtil = class(TObject)
  public
    imageUtil: TImageUtil;
    imageJ2SEUtil: TImageJ2SEUtil;
    TWO_PIE: Double;
    class var instance: TImageJ2SERotationUtil;
    procedure InitFields;
        class function getInstance: TImageJ2SERotationUtil; static;
        constructor Create;
        function getRotatedImage(bufferedImage_: TImage; totalAngle: Integer): TBufferedImage; virtual;
        function getRotatedImageRadians(bufferedImage_: TImage; radians: Double): TBufferedImage; virtual;
        function drawRotatedImageRadians(bufferedImage_: TImage; newBufferedImage: TBufferedImage; g: TGraphics2D; radians: Double): TBufferedImage;
        function rotateImage(bufferedImage_: TImage; newBufferedImage: TBufferedImage; totalAngle: Integer): TBufferedImage; virtual;
        function createRotatedImage(bufferedImage_: TImage; newBufferedImage: TBufferedImage; totalAngle: Integer): TBufferedImage; virtual;
        function getRotatedImages(bufferedImage_: TImage; numberOfFrames: Integer; totalAngle: Integer): TArray<TBufferedImage>; virtual;
        function createSpriteImage(bufferedImageArray: TArray<TBufferedImage>): TBufferedImage; virtual;
  end;

implementation

{AB:CODE}

procedure TImageJ2SERotationUtil.InitFields;
begin
  Self.imageUtil := TImageUtil.getInstance();
  Self.imageJ2SEUtil := TImageJ2SEUtil.getInstance();
  Self.TWO_PIE := (2) * (TMath.PI);
end;
    

class function TImageJ2SERotationUtil.getInstance: TImageJ2SERotationUtil;
begin
        Exit(TImageJ2SERotationUtil.instance);
end;
    

constructor TImageJ2SERotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageJ2SERotationUtil.getRotatedImage(bufferedImage_: TImage; totalAngle: Integer): TBufferedImage;
begin
        Exit(Self.getRotatedImageRadians(bufferedImage_, ((Self.TWO_PIE) * (totalAngle)) / (360.0)));
end;
    

function TImageJ2SERotationUtil.getRotatedImageRadians(bufferedImage_: TImage; radians: Double): TBufferedImage;
var
  newBufferedImage: TBufferedImage;
begin
        newBufferedImage := Self.imageUtil.create_(bufferedImage_.getWidth(nil), bufferedImage_.getHeight(nil));
        Exit(Self.drawRotatedImageRadians(bufferedImage_, newBufferedImage, newBufferedImage.createGraphics(), radians));
end;
    

function TImageJ2SERotationUtil.drawRotatedImageRadians(bufferedImage_: TImage; newBufferedImage: TBufferedImage; g: TGraphics2D; radians: Double): TBufferedImage;
begin
        g.rotate(radians, TJava.Divide(newBufferedImage.getWidth(nil), 2), TJava.Divide(newBufferedImage.getHeight(nil), 2));
        g.drawImage(bufferedImage_, 0, 0, bufferedImage_.getWidth(nil), bufferedImage_.getHeight(nil), nil);
        g.dispose_();
        Exit(newBufferedImage);
end;
    

function TImageJ2SERotationUtil.rotateImage(bufferedImage_: TImage; newBufferedImage: TBufferedImage; totalAngle: Integer): TBufferedImage;
var
  g: TGraphics2D;
begin
        g := newBufferedImage.createGraphics();
        g.setBackground(Self.imageJ2SEUtil.TRANSPARENT_COLOR);
        g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight());
        Exit(Self.drawRotatedImageRadians(bufferedImage_, newBufferedImage, g, ((Self.TWO_PIE) * (totalAngle)) / (360.0)));
end;
    

function TImageJ2SERotationUtil.createRotatedImage(bufferedImage_: TImage; newBufferedImage: TBufferedImage; totalAngle: Integer): TBufferedImage;
var
  g: TGraphics2D;
begin
        g := newBufferedImage.createGraphics();
        Exit(Self.drawRotatedImageRadians(bufferedImage_, newBufferedImage, g, ((Self.TWO_PIE) * (totalAngle)) / (360.0)));
end;
    

function TImageJ2SERotationUtil.getRotatedImages(bufferedImage_: TImage; numberOfFrames: Integer; totalAngle: Integer): TArray<TBufferedImage>;
var
  bufferedImageArray: TArray<TBufferedImage>;
  arc: Double;
  size: Integer;
  radians: Double;
  index: Integer;
begin
        bufferedImageArray := TJava.NewArray<TBufferedImage>(numberOfFrames);
        arc := (((Self.TWO_PIE)) * (totalAngle)) / (360.0);
        size := System.Length(bufferedImageArray);
        for index := 0 to size - 1 do begin
            radians := (((arc) / (size))) * (index);
            bufferedImageArray[index] := Self.getRotatedImageRadians(bufferedImage_, radians);
        end;
        Exit(bufferedImageArray);
end;
    

function TImageJ2SERotationUtil.createSpriteImage(bufferedImageArray: TArray<TBufferedImage>): TBufferedImage;
var
  columns: Integer;
  rows: Integer;
  size: Integer;
  firstBufferedImage: TBufferedImage;
  bufferedImage_: TBufferedImage;
  g: TGraphics2D;
  columnIndex: Integer;
  rowIndex: Integer;
  nextBufferedImage: TBufferedImage;
  index: Integer;
begin
        columns := 9;
        rows := 0;
        size := System.Length(bufferedImageArray);
        if (size) < (columns) then begin
            columns := size;
        end;
        rows := ((size) div (columns));
        if ((size) mod (columns)) <> (0) then begin
            Inc(rows);
        end;
        firstBufferedImage := bufferedImageArray[0];
        bufferedImage_ := Self.imageUtil.create_((firstBufferedImage.getWidth(nil)) * (columns), (firstBufferedImage.getHeight(nil)) * (rows));
        g := bufferedImage_.createGraphics();
        columnIndex := 0;
        rowIndex := 0;
        
        for index := 0 to size - 1 do begin
            if (((index) div (9)) <> (0)) and (((index) mod (9)) = (0)) then begin
                Inc(rowIndex);
                columnIndex := 0;
            end;
            nextBufferedImage := bufferedImageArray[index];
            g.drawImage(nextBufferedImage, (nextBufferedImage.getWidth(nil)) * (columnIndex), (nextBufferedImage.getHeight(nil)) * (rowIndex), nextBufferedImage.getWidth(nil), nextBufferedImage.getHeight(nil), nil);
            Inc(columnIndex);
        end;
        g.dispose_();
        Exit(bufferedImage_);
end;

initialization
  {AB:INITIALIZATION}
  TImageJ2SERotationUtil.instance := TImageJ2SERotationUtil.Create();
  {AB:END}

end.

