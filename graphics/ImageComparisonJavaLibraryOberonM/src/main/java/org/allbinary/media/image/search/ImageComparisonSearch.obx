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
// package org.allbinary.media.image.search
unit ImageComparisonSearch;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, PixelDelta, CommonStrings;

type
  {AB:TYPES}
  TImageComparisonSearch = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    isSameHeight: Boolean;
    isSameWidth: Boolean;
    pixelsThatMatch: Integer;
    pixelsIgnored: Integer;
    imageHeight: Integer;
    imageWidth: Integer;
    tolerance: Integer;
    nonMatchingPixelVector: TBasicArrayList;
    bufferedImages: TArray<TBufferedImage>;
    matchingPercent: Single;
    procedure InitFields;
        constructor Create(bufferedImage_: TBufferedImage; bufferedImage2: TBufferedImage; tolerance: Integer);
        function getMatchingPercent: Single;
        procedure add(pixel: TPixelDelta); virtual;
        function getNonMatchingPixelVector: TBasicArrayList; virtual;
        function toString: string; virtual;
        function getBufferedImages: TArray<TBufferedImage>; virtual;
        procedure setBufferedImages(bufferedImages: TArray<TBufferedImage>);
        function getTolerance: Integer; virtual;
        procedure setTolerance(tolerance: Integer); virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, ImageUtil;


{AB:CODE}

procedure TImageComparisonSearch.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  Self.matchingPercent := -1;
end;
    

constructor TImageComparisonSearch.Create(bufferedImage_: TBufferedImage; bufferedImage2: TBufferedImage; tolerance: Integer);
var
  imageUtil_: TImageUtil;
begin
    inherited Create;
    InitFields;
        Self.nonMatchingPixelVector := TBasicArrayListD.Create();
        Self.setBufferedImages(TJava.NewArray<TBufferedImage>(2));
        Self.getBufferedImages()[0] := bufferedImage_;
        Self.getBufferedImages()[1] := bufferedImage2;
        Self.imageHeight := bufferedImage_.getHeight();
        Self.imageWidth := bufferedImage_.getWidth();
        if (bufferedImage_.getHeight()) <> (bufferedImage2.getHeight()) then begin
            Self.isSameHeight := False;
            if (Self.imageHeight) > (bufferedImage2.getHeight()) then begin
                Self.imageHeight := bufferedImage2.getHeight();
            end;
        end else begin
            Self.isSameHeight := True;
        end;
        if (bufferedImage_.getWidth()) <> (bufferedImage2.getWidth()) then begin
            Self.isSameWidth := False;
            if (Self.imageWidth) > (bufferedImage2.getWidth()) then begin
                Self.imageWidth := bufferedImage2.getWidth();
            end;
        end else begin
            Self.isSameWidth := True;
        end;
        if (not (Self.isSameWidth)) or (not (Self.isSameHeight)) then begin
            imageUtil_ := TImageUtil.getInstance();
            Self.logUtil.putF('Images were not the same size? Most likely a resolution change.', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.logUtil.putF('1: ' + imageUtil_.toString(bufferedImage_), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.logUtil.putF('2: ' + imageUtil_.toString(bufferedImage2), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function TImageComparisonSearch.getMatchingPercent: Single;
begin
        if (Self.matchingPercent) = (-1) then begin
            Self.matchingPercent := (Self.pixelsThatMatch) / (((Self.imageWidth) * (Self.imageHeight)));
        end;
        Exit(Self.matchingPercent);
end;
    

procedure TImageComparisonSearch.add(pixel: TPixelDelta);
begin
        Self.nonMatchingPixelVector.add(TJava.Box(pixel));
end;
    

function TImageComparisonSearch.getNonMatchingPixelVector: TBasicArrayList;
begin
        Exit(Self.nonMatchingPixelVector);
end;
    

function TImageComparisonSearch.toString: string;
begin
        Exit('ImageComparisonInfo: ' + ' Number Of Matching Pixels: ' + IntToStr(Self.pixelsThatMatch) + ''#10'Number Of Non-Matching Pixels: ' + IntToStr(Self.getNonMatchingPixelVector().size()) + ''#10'Number Of Pixels Ignored: ' + IntToStr(Self.pixelsIgnored) + ''#10'Matching Percentage: ' + FloatToStr(Self.getMatchingPercent()));
end;
    

function TImageComparisonSearch.getBufferedImages: TArray<TBufferedImage>;
begin
        Exit(Self.bufferedImages);
end;
    

procedure TImageComparisonSearch.setBufferedImages(bufferedImages: TArray<TBufferedImage>);
begin
        Self.bufferedImages := bufferedImages;
end;
    

function TImageComparisonSearch.getTolerance: Integer;
begin
        Exit(Self.tolerance);
end;
    

procedure TImageComparisonSearch.setTolerance(tolerance: Integer);
begin
        Self.tolerance := tolerance;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

