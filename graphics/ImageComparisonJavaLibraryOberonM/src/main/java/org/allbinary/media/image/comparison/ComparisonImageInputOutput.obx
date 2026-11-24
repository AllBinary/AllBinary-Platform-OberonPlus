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
unit ComparisonImageInputOutput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageIOInterface, ImageComparisonResult;

type
  {AB:TYPES}
  TComparisonImageInputOutput = class(TInterfacedObject, IImageIOInterface)
  public
    logUtil: TLogUtil;
    class var ROOT_NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure save(frame: Int64); overload; virtual;
        procedure save(imageComparisonResult_: TImageComparisonResult; frame: Int64); overload; virtual;
  end;

implementation
uses
  ImageComparisonResultCacheSingleton, ImageComparisonResultFrameCacheable, ChangedPixelsUtil, ImageOutputData, LongUtil, StringMaker, AutomaticCacheInterface, MediaDataFactory, ImagePersistanceUtil, BufferedImageCacheable, CommonStrings;


{AB:CODE}

procedure TComparisonImageInputOutput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TComparisonImageInputOutput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TComparisonImageInputOutput.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TComparisonImageInputOutput.save(frame: Int64);
var
  commonStrings_: TCommonStrings;
  imageComparisonResultFrameCacheable_: TImageComparisonResultFrameCacheable;
  imageComparisonResult_: TImageComparisonResult;
begin
        commonStrings_ := TCommonStrings.getInstance();
        if (frame) > (0) then begin
            imageComparisonResultFrameCacheable_ := TImageComparisonResultFrameCacheable(TJava.ToObject(((TJava.ToObject(TImageComparisonResultCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(frame)));
            if (imageComparisonResultFrameCacheable_) <> (nil) then begin
                imageComparisonResult_ := imageComparisonResultFrameCacheable_.getImageComparisonResult();
                Self.save(imageComparisonResult_, imageComparisonResultFrameCacheable_.getFrame());
            end else begin
                Self.logUtil.putF('Comparison Results Not Available for Output: ' + IntToStr(frame), TJava.Box(Self), commonStrings_.SAVE);
            end;
        end else begin
            Self.logUtil.putF('No Comparison Results: for first frame: ' + IntToStr(frame), TJava.Box(Self), commonStrings_.SAVE);
        end;
end;
    

// throws Exception
procedure TComparisonImageInputOutput.save(imageComparisonResult_: TImageComparisonResult; frame: Int64);
var
  commonStrings_: TCommonStrings;
  filePathStringBuffer: TStringMaker;
  filePathStringBuffer1: TStringMaker;
  filePath1: string;
  filePathStringBuffer2: TStringMaker;
  filePath2: string;
  bufferedImageCacheables: TArray<TBufferedImageCacheable>;
  bufferedImageArray: TArray<TBufferedImage>;
  imagePersistanceUtil_: TImagePersistanceUtil;
begin
        commonStrings_ := TCommonStrings.getInstance();
        filePathStringBuffer := TStringMaker.Create();
        filePathStringBuffer.append(TImageOutputData.SAVE_PATH);
        filePathStringBuffer.append(TLongUtil.fillIn(frame.toString()));
        filePathStringBuffer.append(TComparisonImageInputOutput.ROOT_NAME);
        filePathStringBuffer1 := TStringMaker.Create();
        filePathStringBuffer1.append(filePathStringBuffer.toString());
        filePathStringBuffer1.append('_1');
        filePathStringBuffer1.append(TMediaDataFactory.getInstance().JPG.getExtension());
        filePath1 := filePathStringBuffer1.toString();
        filePathStringBuffer2 := TStringMaker.Create();
        filePathStringBuffer2.append(filePathStringBuffer.toString());
        filePathStringBuffer2.append('_2');
        filePathStringBuffer2.append(TMediaDataFactory.getInstance().JPG.getExtension());
        filePath2 := filePathStringBuffer2.toString();
        bufferedImageCacheables := TChangedPixelsUtil.generateBufferedImageChacheables(imageComparisonResult_);
        Self.logUtil.putF('Comparison Image File Path 1: ' + filePath1, TJava.Box(Self), commonStrings_.SAVE);
        Self.logUtil.putF('Comparison Image File Path 2: ' + filePath2, TJava.Box(Self), commonStrings_.SAVE);
        bufferedImageArray := TJava.NewArray<TBufferedImage>(2);
        bufferedImageArray[0] := bufferedImageCacheables[0].getBufferedImage();
        bufferedImageArray[1] := bufferedImageCacheables[1].getBufferedImage();
        imagePersistanceUtil_ := TImagePersistanceUtil.getInstance();
        imagePersistanceUtil_.saveWithImageIO(filePath1, bufferedImageArray[0]);
        imagePersistanceUtil_.saveWithImageIO(filePath2, bufferedImageArray[1]);
end;

initialization
  {AB:INITIALIZATION}
  TComparisonImageInputOutput.ROOT_NAME := '_Changed_';
  {AB:END}

end.

