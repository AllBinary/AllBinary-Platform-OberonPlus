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
unit ChangedPixelsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BufferedImageCacheable, ImageComparisonResult;

type
  {AB:TYPES}
  TChangedPixelsUtil = class(TObject)
  public
    class var START_X: Integer;
    class var START_Y: Integer;
    class var OFFSET: Integer;
    class var SCAN_SIZE: Integer;
    class var CLEAR_INT_ARRAY: TArray<Integer>;
        constructor Create;
        class function generateBufferedImageChacheables(imageComparisonInfo: TImageComparisonResult): TArray<TBufferedImageCacheable>; static;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, PoolInterface, BufferedImageInfo, BufferedImageInfoFactory, BufferedImagePoolSingleton, PixelDelta;


{AB:CODE}
    

constructor TChangedPixelsUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TChangedPixelsUtil.generateBufferedImageChacheables(imageComparisonInfo: TImageComparisonResult): TArray<TBufferedImageCacheable>;
var
  bufferedImageCacheables: TArray<TBufferedImageCacheable>;
  originalBufferedImage: TBufferedImage;
  bufferedImageInfo_: TBufferedImageInfo;
  poolInterface_: IPoolInterface;
  bufferedImageCacheable_: TBufferedImageCacheable;
  index: Integer;
  vector: TBasicArrayList;
  size: Integer;
  pixelDelta_: TPixelDelta;
begin
        
        originalBufferedImage := imageComparisonInfo.getBufferedImages()[0];
        bufferedImageCacheables := TJava.NewArray<TBufferedImageCacheable>(2);
        bufferedImageInfo_ := TBufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType());
        poolInterface_ := TBufferedImagePoolSingleton.getInstance();
        for index := 0 to System.Length(bufferedImageCacheables) - 1 do begin
            bufferedImageCacheable_ := TBufferedImageCacheable(TJava.ToObject(poolInterface_.remove(bufferedImageInfo_)));
            bufferedImageCacheables[index] := bufferedImageCacheable_;
            bufferedImageCacheables[index].getBufferedImage().setRGB(TChangedPixelsUtil.START_X, TChangedPixelsUtil.START_Y, bufferedImageInfo_.getWidth(), bufferedImageInfo_.getHeight(), TChangedPixelsUtil.CLEAR_INT_ARRAY, TChangedPixelsUtil.OFFSET, TChangedPixelsUtil.SCAN_SIZE);
        end;
        vector := imageComparisonInfo.getNonMatchingPixelVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            pixelDelta_ := TPixelDelta(TJava.ToObject(vector.get(index)));
            if TJava.IsNull(pixelDelta_.getColorDelta()) then begin
                Write('ColorDelta');
                Halt(0);
            end;
            bufferedImageCacheables[0].getBufferedImage().setRGB(pixelDelta_.getPoint().getX(), pixelDelta_.getPoint().getY(), pixelDelta_.getColorDelta().getRgb1());
            bufferedImageCacheables[1].getBufferedImage().setRGB(pixelDelta_.getPoint().getX(), pixelDelta_.getPoint().getY(), pixelDelta_.getColorDelta().getRgb2());
        end;
        Exit(bufferedImageCacheables);
end;

initialization
  {AB:INITIALIZATION}
  TChangedPixelsUtil.START_X := 0;
  TChangedPixelsUtil.START_Y := 0;
  TChangedPixelsUtil.OFFSET := 0;
  TChangedPixelsUtil.SCAN_SIZE := 0;
  TChangedPixelsUtil.CLEAR_INT_ARRAY := TJava.NewArray<Integer>((1800) * (1600));
  {AB:END}

end.

