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
unit ImageComparator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, ImageComparatorConstraintsInterface, ImageComparisonResult;

type
  {AB:TYPES}
  TImageComparator = class(TObject)
  public
    imageComparatorConstraintsInterface: IImageComparatorConstraintsInterface;
    procedure InitFields;
        constructor Create(imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
        procedure process(imageComparisonInfo: TImageComparisonResult; point: TGPoint);
        function compare(bufferedImage1: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer): TImageComparisonResult; overload; virtual;
        function compare(bufferedImage1: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer; name: string): TImageComparisonResult; overload; virtual;
  end;

implementation
uses
  Color, PointFactory, ColorCacheFactory, ColorCacheable, StringUtil, AutomaticCacheInterface, PixelDeltaFactory;


{AB:CODE}

procedure TImageComparator.InitFields;
begin
  
end;
    

constructor TImageComparator.Create(imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
begin
    inherited Create;
    InitFields;
        Self.imageComparatorConstraintsInterface := imageComparatorConstraintsInterface_;
end;
    

// throws Exception
procedure TImageComparator.process(imageComparisonInfo: TImageComparisonResult; point: TGPoint);
var
  isCollsionWithAvoidRectangles: Boolean;
  rgb1: Integer;
  rgb2: Integer;
  automaticCacheInterface_: IAutomaticCacheInterface;
  colorInteger: Integer;
  colorCacheable_: TColorCacheable;
  color_: TColor;
  colorInteger2: Integer;
  colorCacheable2: TColorCacheable;
  color2: TColor;
begin
        isCollsionWithAvoidRectangles := Self.imageComparatorConstraintsInterface.isCollisionWithAvoidRectangles(point);
        if not (isCollsionWithAvoidRectangles) then begin
            rgb1 := imageComparisonInfo.getBufferedImages()[0].getRGB(point.getX(), point.getY());
            rgb2 := imageComparisonInfo.getBufferedImages()[1].getRGB(point.getX(), point.getY());
            automaticCacheInterface_ := TColorCacheFactory.getInstance();
            colorInteger := IntToStr(rgb1);
            colorCacheable_ := TColorCacheable(TJava.ToObject(automaticCacheInterface_.get(colorInteger)));
            color_ := colorCacheable_.getColor();
            colorInteger2 := IntToStr(rgb2);
            colorCacheable2 := TColorCacheable(TJava.ToObject(automaticCacheInterface_.get(colorInteger)));
            color2 := colorCacheable_.getColor();
            if (Self.imageComparatorConstraintsInterface.isColorAllowed(0, point, color_)) or (Self.imageComparatorConstraintsInterface.isColorAllowed(1, point, color2)) then begin
                if (Abs((rgb1) - (rgb2))) <= (imageComparisonInfo.getTolerance()) then begin
                    Inc(imageComparisonInfo.pixelsThatMatch);
                end else begin
                    imageComparisonInfo.add(TPixelDeltaFactory.getInstance(point.getX(), point.getY(), rgb1, rgb2));
                end;
            end;
        end else begin
            Inc(imageComparisonInfo.pixelsIgnored);
        end;
end;
    

// throws Exception
function TImageComparator.compare(bufferedImage1: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer): TImageComparisonResult;
begin
        Exit(Self.compare(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, TStringUtil.getInstance().EMPTY_STRING));
end;
    

// throws Exception
function TImageComparator.compare(bufferedImage1: TBufferedImage; bufferedImage2: TBufferedImage; frameOne: Int64; frameTwo: Int64; tolerance: Integer; name: string): TImageComparisonResult;
var
  imageComparisonInfo: TImageComparisonResult;
  indexX: Integer;
  indexY: Integer;
begin
        if ((bufferedImage1) = (nil)) or ((bufferedImage2) = (nil)) then begin
            raise SysUtils.Exception.Create('Input images must not be null.');
        end;
        imageComparisonInfo := TImageComparisonResult.Create(name, bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance);
        for indexY := 0 to imageComparisonInfo.imageHeight - 1 do begin
            for indexX := 0 to imageComparisonInfo.imageWidth - 1 do begin
                Self.process(imageComparisonInfo, TPointFactory.getInstance().createXY(indexX, indexY));
                if (imageComparisonInfo.getNonMatchingPixelVector().size()) > (Self.imageComparatorConstraintsInterface.getMaxNonMatchingPixelDeltas()) then begin
                    Break;
                end;
            end;
        end;
        Exit(imageComparisonInfo);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

