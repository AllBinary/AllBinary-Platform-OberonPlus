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
// package org.allbinary.media.image.comparison.motion
unit MotionRectanglesImageInputOutput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageIOInterface, MotionRectangles;

type
  {AB:TYPES}
  TMotionRectanglesImageInputOutput = class(TInterfacedObject, IImageIOInterface)
  public
    logUtil: TLogUtil;
    NUMBER_OF_IMAGES: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure save(frame: Int64); overload; virtual;
        procedure save(motionRectangles_: TMotionRectangles; frame: Int64); overload; virtual;
  end;

implementation
uses
  AllMotionRectanglesResultsCacheSingleton, MotionRectanglesResultsFrameCacheable, ConsolidatedMotionRectanglesResultsCacheSingleton, ConstrainedMotionRectanglesResultsCacheSingleton, Graphics, MotionRectangle, Rectangle, Color, BasicArrayList, BasicArrayListD, ImageOutputData, LongUtil, StringMaker, AutomaticCacheInterface, PoolInterface, MediaDataFactory, ImagePersistanceUtil, BufferedImageCacheable, BufferedImageInfo, BufferedImageInfoFactory, BufferedImagePoolSingleton, ImageComparisonResult, CommonStrings;


{AB:CODE}

procedure TMotionRectanglesImageInputOutput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NUMBER_OF_IMAGES := 1;
end;

function TMotionRectanglesImageInputOutput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMotionRectanglesImageInputOutput.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TMotionRectanglesImageInputOutput.save(frame: Int64);
var
  commonStrings_: TCommonStrings;
  motionRectanglesResultsFrameCacheable_: TMotionRectanglesResultsFrameCacheable;
  motionRectangles_: TMotionRectangles;
begin
        commonStrings_ := TCommonStrings.getInstance();
        motionRectanglesResultsFrameCacheable_ := TMotionRectanglesResultsFrameCacheable(TJava.ToObject(((TJava.ToObject(TAllMotionRectanglesResultsCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(frame)));
        if (motionRectanglesResultsFrameCacheable_) <> (nil) then begin
            motionRectangles_ := motionRectanglesResultsFrameCacheable_.getMotionRectangles();
            Self.save(motionRectangles_, frame);
            motionRectanglesResultsFrameCacheable_ := TMotionRectanglesResultsFrameCacheable(TJava.ToObject(((TJava.ToObject(TConsolidatedMotionRectanglesResultsCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(frame)));
            motionRectangles_ := motionRectanglesResultsFrameCacheable_.getMotionRectangles();
            Self.save(motionRectangles_, frame);
            motionRectanglesResultsFrameCacheable_ := TMotionRectanglesResultsFrameCacheable(TJava.ToObject(((TJava.ToObject(TConstrainedMotionRectanglesResultsCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(frame)));
            motionRectangles_ := motionRectanglesResultsFrameCacheable_.getMotionRectangles();
            Self.save(motionRectangles_, frame);
        end else begin
            Self.logUtil.putF('No Motion Rectangle Results for Frame: ' + IntToStr(frame), TJava.Box(Self), commonStrings_.SAVE);
        end;
end;
    

// throws Exception
procedure TMotionRectanglesImageInputOutput.save(motionRectangles_: TMotionRectangles; frame: Int64);
var
  commonStrings_: TCommonStrings;
  filePathStringBuffer: TStringMaker;
  filePathStringBuffer1: TStringMaker;
  filePathStringBuffer2: TStringMaker;
  filePathStringBuffer3: TStringMaker;
  bufferedImageCacheables: TArray<TBufferedImageCacheable>;
  imageComparisonInfo: TImageComparisonResult;
  originalBufferedImage: TBufferedImage;
  bufferedImageInfo_: TBufferedImageInfo;
  poolInterface_: IPoolInterface;
  index: Integer;
  bufferedImageGraphicsArray: TArray<TGraphics>;
  rectangelList: TBasicArrayList;
  size: Integer;
  motionRectangle_: TMotionRectangle;
  rectangle_: TRectangle;
  index2: Integer;
  imagePersistanceUtil_: TImagePersistanceUtil;
begin
        commonStrings_ := TCommonStrings.getInstance();
        filePathStringBuffer := TStringMaker.Create();
        filePathStringBuffer.append(TImageOutputData.SAVE_PATH);
        filePathStringBuffer.append(TLongUtil.fillIn(frame.toString()));
        filePathStringBuffer.append('_');
        filePathStringBuffer.append(motionRectangles_.getName());
        filePathStringBuffer1 := TStringMaker.Create();
        filePathStringBuffer1.append(filePathStringBuffer.toString());
        filePathStringBuffer1.append('_1');
        filePathStringBuffer1.append(TMediaDataFactory.getInstance().JPG.getExtension());
        filePathStringBuffer2 := TStringMaker.Create();
        filePathStringBuffer2.append(filePathStringBuffer.toString());
        filePathStringBuffer2.append('_2');
        filePathStringBuffer2.append(TMediaDataFactory.getInstance().JPG.getExtension());
        filePathStringBuffer3 := TStringMaker.Create();
        filePathStringBuffer3.append(filePathStringBuffer.toString());
        filePathStringBuffer3.append(TMediaDataFactory.getInstance().JPG.getExtension());
        Self.logUtil.putF('Motion Image File Path 1: ' + filePathStringBuffer1.toString(), TJava.Box(Self), commonStrings_.SAVE);
        Self.logUtil.putF('Motion Image File Path 2: ' + filePathStringBuffer2.toString(), TJava.Box(Self), commonStrings_.SAVE);
        Self.logUtil.putF('Motion Image File Path 2: ' + filePathStringBuffer3.toString(), TJava.Box(Self), commonStrings_.SAVE);
        bufferedImageCacheables := TJava.NewArray<TBufferedImageCacheable>(Self.NUMBER_OF_IMAGES);
        imageComparisonInfo := motionRectangles_.getImageComparisonResult();
        originalBufferedImage := imageComparisonInfo.getBufferedImages()[0];
        bufferedImageInfo_ := TBufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType());
        poolInterface_ := TBufferedImagePoolSingleton.getInstance();
        for index := 0 to Self.NUMBER_OF_IMAGES - 1 do begin
            bufferedImageCacheables[index] := TBufferedImageCacheable(TJava.ToObject(poolInterface_.remove(bufferedImageInfo_)));
        end;
        bufferedImageCacheables[0].getBufferedImage().setData(imageComparisonInfo.getBufferedImages()[1].getData());
        if (Self.NUMBER_OF_IMAGES) > (1) then begin
            bufferedImageCacheables[1].getBufferedImage().setData(imageComparisonInfo.getBufferedImages()[1].getData());
        end;
        
        bufferedImageGraphicsArray := TJava.NewArray<TGraphics>(Self.NUMBER_OF_IMAGES);
        for index := 0 to Self.NUMBER_OF_IMAGES - 1 do begin
            bufferedImageGraphicsArray[index] := bufferedImageCacheables[index].getBufferedImage().getGraphics();
        end;
        rectangelList := motionRectangles_.getVector();
        size := rectangelList.size();
        for index2 := 0 to size - 1 do begin
            motionRectangle_ := TMotionRectangle(TJava.ToObject(rectangelList.get(index2)));
            rectangle_ := motionRectangle_.getRectangle();
            for index := 0 to Self.NUMBER_OF_IMAGES - 1 do begin
                bufferedImageGraphicsArray[index].setColor(TColor.ORANGE);
                bufferedImageGraphicsArray[index].drawRect(rectangle_.x, rectangle_.y, rectangle_.width, rectangle_.height);
            end;
        end;
        imagePersistanceUtil_ := TImagePersistanceUtil.getInstance();
        if (Self.NUMBER_OF_IMAGES) > (1) then begin
            imagePersistanceUtil_.saveWithImageIO(filePathStringBuffer1.toString(), bufferedImageCacheables[1].getBufferedImage());
        end;
        imagePersistanceUtil_.saveWithImageIO(filePathStringBuffer2.toString(), bufferedImageCacheables[0].getBufferedImage());
        if (Self.NUMBER_OF_IMAGES) > (2) then begin
            imagePersistanceUtil_.saveWithImageIO(filePathStringBuffer3.toString(), bufferedImageCacheables[2].getBufferedImage());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

