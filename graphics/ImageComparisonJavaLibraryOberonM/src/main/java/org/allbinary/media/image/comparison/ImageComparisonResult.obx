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
// package org.allbinary.media.image.comparison
unit ImageComparisonResult;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, PixelDelta, CommonStrings;

type
  {AB:TYPES}
  TImageComparisonResult = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    bufferedImages: TArray<TBufferedImage>;
    name: string;
    isSameHeight: Boolean;
    isSameWidth: Boolean;
    imageHeight: Integer;
    imageWidth: Integer;
    nonMatchingPixelVector: TBasicArrayList;
    frameOne: Int64;
    frameTwo: Int64;
    pixelsThatMatch: Integer;
    pixelsIgnored: Integer;
    tolerance: Integer;
    matchingPercent: Single;
    procedure InitFields;
        constructor Create(name: string; bufferedImage_: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer);
        function getMatchingPercent: Single; virtual;
        procedure add(pixel: TPixelDelta); virtual;
        function getNonMatchingPixelVector: TBasicArrayList; virtual;
        function toString: string; virtual;
        function getBufferedImages: TArray<TBufferedImage>; virtual;
        function getTolerance: Integer; virtual;
        procedure setTolerance(tolerance: Integer);
        function getFrameOne: Int64; virtual;
        function getFrameTwo: Int64; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringMaker, ImageUtil;


{AB:CODE}

procedure TImageComparisonResult.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.bufferedImages := TJava.NewArray<TBufferedImage>(2);
  
  
  
  
  
  
  
  
  
  
  
  Self.matchingPercent := -1;
end;
    

constructor TImageComparisonResult.Create(name: string; bufferedImage_: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer);
var
  imageHeight: Integer;
  imageWidth: Integer;
  imageUtil_: TImageUtil;
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.nonMatchingPixelVector := TBasicArrayListD.Create();
        Self.bufferedImages[0] := bufferedImage_;
        Self.bufferedImages[1] := bufferedImage2;
        Self.frameOne := frameOne;
        Self.frameTwo := frameTwo;
        Self.setTolerance(0);
        imageHeight := bufferedImage_.getHeight();
        imageWidth := bufferedImage_.getWidth();
        if (bufferedImage_.getHeight()) <> (bufferedImage2.getHeight()) then begin
            Self.isSameHeight := False;
            if (imageHeight) > (bufferedImage2.getHeight()) then begin
                imageHeight := bufferedImage2.getHeight();
            end;
        end else begin
            Self.isSameHeight := True;
        end;
        if (bufferedImage_.getWidth()) <> (bufferedImage2.getWidth()) then begin
            Self.isSameWidth := False;
            if (imageWidth) > (bufferedImage2.getWidth()) then begin
                imageWidth := bufferedImage2.getWidth();
            end;
        end else begin
            Self.isSameWidth := True;
        end;
        Self.imageWidth := imageWidth;
        Self.imageHeight := imageHeight;
        if (not (Self.isSameWidth)) or (not (Self.isSameHeight)) then begin
            imageUtil_ := TImageUtil.getInstance();
            Self.logUtil.putF('Images were not the same size? Most likely a resolution change.', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.logUtil.putF('1: ' + imageUtil_.toString(bufferedImage_), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.logUtil.putF('2: ' + imageUtil_.toString(bufferedImage2), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function TImageComparisonResult.getMatchingPercent: Single;
begin
        if (Self.matchingPercent) = (-1) then begin
            Self.matchingPercent := (Self.pixelsThatMatch) / (((Self.imageWidth) * (Self.imageHeight)));
        end;
        Exit(Self.matchingPercent);
end;
    

procedure TImageComparisonResult.add(pixel: TPixelDelta);
begin
        Self.nonMatchingPixelVector.add(TJava.Box(pixel));
end;
    

function TImageComparisonResult.getNonMatchingPixelVector: TBasicArrayList;
begin
        Exit(Self.nonMatchingPixelVector);
end;
    

function TImageComparisonResult.toString: string;
begin
        Exit(TStringMaker.Create().append('ImageComparisonInfo: ').append(Self.name).append(' Number Of Matching Pixels: ').appendint(Self.pixelsThatMatch).append(''#10'Number Of Non-Matching Pixels: ').appendint(Self.getNonMatchingPixelVector().size()).append(''#10'Number Of Pixels Ignored: ').appendint(Self.pixelsIgnored).append(''#10'Matching Percentage: ').appendfloat(Self.getMatchingPercent()).toString());
end;
    

function TImageComparisonResult.getBufferedImages: TArray<TBufferedImage>;
begin
        Exit(Self.bufferedImages);
end;
    

function TImageComparisonResult.getTolerance: Integer;
begin
        Exit(Self.tolerance);
end;
    

procedure TImageComparisonResult.setTolerance(tolerance: Integer);
begin
        Self.tolerance := tolerance;
end;
    

function TImageComparisonResult.getFrameOne: Int64;
begin
        Exit(Self.frameOne);
end;
    

function TImageComparisonResult.getFrameTwo: Int64;
begin
        Exit(Self.frameTwo);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

