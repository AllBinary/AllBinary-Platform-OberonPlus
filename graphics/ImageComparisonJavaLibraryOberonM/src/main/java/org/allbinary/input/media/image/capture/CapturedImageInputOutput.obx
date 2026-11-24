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
// package org.allbinary.input.media.image.capture
unit CapturedImageInputOutput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageIOInterface;

type
  {AB:TYPES}
  TCapturedImageInputOutput = class(TInterfacedObject, IImageIOInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure save(frame: Int64); overload; virtual;
        procedure save(bufferedImage_: TBufferedImage; frame: Int64); overload; virtual;
  end;

implementation
uses
  CapturedBufferedImagesCacheSingleton, ImageOutputData, LongUtil, StringMaker, AutomaticCacheInterface, MediaDataFactory, ImagePersistanceUtil, ImageUtil, BufferedImageFrameCacheable, CommonStrings;


{AB:CODE}

procedure TCapturedImageInputOutput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TCapturedImageInputOutput.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TCapturedImageInputOutput.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TCapturedImageInputOutput.save(frame: Int64);
var
  commonStrings_: TCommonStrings;
  capturedBufferedImageCacheable: TBufferedImageFrameCacheable;
begin
        commonStrings_ := TCommonStrings.getInstance();
        capturedBufferedImageCacheable := (TBufferedImageFrameCacheable(TJava.ToObject(((TJava.ToObject(TCapturedBufferedImagesCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(frame))));
        Self.logUtil.putF(('Saving: ' + capturedBufferedImageCacheable.toString()), TJava.Box(Self), commonStrings_.SAVE);
        Self.save(capturedBufferedImageCacheable.getBufferedImage(), frame);
end;
    

procedure TCapturedImageInputOutput.save(bufferedImage_: TBufferedImage; frame: Int64);
var
  commonStrings_: TCommonStrings;
  imageUtil_: TImageUtil;
  filePathStringBuffer: TStringMaker;
  filePath: string;
  imagePersistanceUtil_: TImagePersistanceUtil;
begin
        commonStrings_ := TCommonStrings.getInstance();
        imageUtil_ := TImageUtil.getInstance();
        filePathStringBuffer := TStringMaker.Create();
        filePathStringBuffer.append(TImageOutputData.SAVE_PATH);
        filePathStringBuffer.append(TLongUtil.fillIn(frame.toString()));
        filePathStringBuffer.append(TMediaDataFactory.getInstance().JPG.getExtension());
        filePath := filePathStringBuffer.toString();
        Self.logUtil.putF(('Image File Path: ' + filePath + imageUtil_.toString(bufferedImage_)), TJava.Box(Self), commonStrings_.SAVE);
        imagePersistanceUtil_ := TImagePersistanceUtil.getInstance();
        imagePersistanceUtil_.saveWithImageIO(filePath, bufferedImage_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

