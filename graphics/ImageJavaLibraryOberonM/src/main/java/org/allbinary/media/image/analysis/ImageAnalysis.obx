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
// package org.allbinary.media.image.analysis
unit ImageAnalysis;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ColorRangeInterface, ImageAnalysisResults, Color, ImageColorResults;

type
  {AB:TYPES}
  TImageAnalysis = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TImageAnalysis;
    procedure InitFields;
        class function getInstance: TImageAnalysis; static;
        constructor Create;
        function process(bufferedImageArray: TArray<TBufferedImage>; colorRangeInterface_: IColorRangeInterface): TArray<TImageAnalysisResults>; overload; virtual;
        class function process(bufferedImage_: TBufferedImage; colorRangeInterface_: IColorRangeInterface): TImageAnalysisResults; overload; static;
        class procedure processColorRangeResults(imageAnalysisResults_: TImageAnalysisResults; colorRangeInterface_: IColorRangeInterface; color_: TColor); static;
        class procedure processImageColorResults(imageColorResults_: TImageColorResults; colorRangeInterface_: IColorRangeInterface; color_: TColor); static;
  end;

implementation
uses
  ColorAverage, ColorCacheFactory, ColorCacheable, CommonLabels, CommonStrings;


{AB:CODE}

procedure TImageAnalysis.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TImageAnalysis.getInstance: TImageAnalysis;
begin
        Exit(TImageAnalysis.instance);
end;
    

constructor TImageAnalysis.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageAnalysis.process(bufferedImageArray: TArray<TBufferedImage>; colorRangeInterface_: IColorRangeInterface): TArray<TImageAnalysisResults>;
var
  commonStrings_: TCommonStrings;
  imageAnalysisResultsArray: TArray<TImageAnalysisResults>;
  index: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + TJava.ToString(TJava.ToObject(colorRangeInterface_)), TJava.Box(Self), commonStrings_.PROCESS);
        imageAnalysisResultsArray := TJava.NewArray<TImageAnalysisResults>(System.Length(bufferedImageArray));
        for index := 0 to System.Length(bufferedImageArray) - 1 do begin
            imageAnalysisResultsArray[index] := TImageAnalysis.process(bufferedImageArray[index], colorRangeInterface_);
        end;
        Exit(imageAnalysisResultsArray);
end;
    

// throws Exception
class function TImageAnalysis.process(bufferedImage_: TBufferedImage; colorRangeInterface_: IColorRangeInterface): TImageAnalysisResults;
var
  imageAnalysisResults_: TImageAnalysisResults;
  redTotal: Int64;
  greenTotal: Int64;
  blueTotal: Int64;
  keyInteger: Integer;
  colorCacheable_: TColorCacheable;
  color_: TColor;
  indexX: Integer;
  indexY: Integer;
  totalPixels: Int64;
  colorAverage_: TColorAverage;
begin
        imageAnalysisResults_ := TImageAnalysisResults.Create();
        redTotal := 0;
        greenTotal := 0;
        blueTotal := 0;
        for indexY := 0 to bufferedImage_.getHeight() - 1 do begin
            for indexX := 0 to bufferedImage_.getWidth() - 1 do begin
                keyInteger := IntToStr(bufferedImage_.getRGB(indexX, indexY));
                colorCacheable_ := TColorCacheable(TJava.ToObject(TColorCacheFactory.getInstance().get(keyInteger)));
                color_ := colorCacheable_.getColor();
                TImageAnalysis.processColorRangeResults(imageAnalysisResults_, colorRangeInterface_, color_);
                TImageAnalysis.processImageColorResults(imageAnalysisResults_.getImageColorResults(), colorRangeInterface_, color_);
                redTotal := (redTotal) + (color_.getRed());
                greenTotal := (greenTotal) + (color_.getGreen());
                blueTotal := (blueTotal) + (color_.getBlue());
            end;
        end;
        totalPixels := imageAnalysisResults_.getImageColorRangeResults().getTotalPixelsChecked();
        colorAverage_ := imageAnalysisResults_.getImageColorResults().getColorAverage();
        colorAverage_.setAvgRed((redTotal) / (totalPixels));
        colorAverage_.setAvgGreen((greenTotal) / (totalPixels));
        colorAverage_.setAvgBlue((blueTotal) / (totalPixels));
        Exit(imageAnalysisResults_);
end;
    

class procedure TImageAnalysis.processColorRangeResults(imageAnalysisResults_: TImageAnalysisResults; colorRangeInterface_: IColorRangeInterface; color_: TColor);
begin
        if colorRangeInterface_.isInRange(color_) then begin
            imageAnalysisResults_.getImageColorRangeResults().addMatchingPixelsChecked();
        end else begin
        end;
        imageAnalysisResults_.getImageColorRangeResults().addTotalPixelsChecked();
end;
    

class procedure TImageAnalysis.processImageColorResults(imageColorResults_: TImageColorResults; colorRangeInterface_: IColorRangeInterface; color_: TColor);
begin
        if (color_.getRed()) < (imageColorResults_.getColorRange().getMinRed()) then begin
            imageColorResults_.getColorRange().setMinRed(color_.getRed());
        end;
        if (color_.getGreen()) < (imageColorResults_.getColorRange().getMinGreen()) then begin
            imageColorResults_.getColorRange().setMinGreen(color_.getGreen());
        end;
        if (color_.getBlue()) < (imageColorResults_.getColorRange().getMinBlue()) then begin
            imageColorResults_.getColorRange().setMinBlue(color_.getBlue());
        end;
        if (color_.getRed()) > (imageColorResults_.getColorRange().getMaxRed()) then begin
            imageColorResults_.getColorRange().setMaxRed(color_.getRed());
        end;
        if (color_.getGreen()) > (imageColorResults_.getColorRange().getMaxGreen()) then begin
            imageColorResults_.getColorRange().setMaxGreen(color_.getGreen());
        end;
        if (color_.getBlue()) > (imageColorResults_.getColorRange().getMaxBlue()) then begin
            imageColorResults_.getColorRange().setMaxBlue(color_.getBlue());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageAnalysis.instance := TImageAnalysis.Create();
  {AB:END}

end.

