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
// package org.allbinary.logic.communication.http.file.upload.media
unit UploadMediaSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TUploadMediaSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    readerFileTypesHashMap: TJavaHashMap<TObject, TObject>;
    writerFileTypesHashMap: TJavaHashMap<TObject, TObject>;
    class var uploadMedia: TUploadMediaSingleton;
    procedure InitFields;
        constructor Create;
        class function getInstance: TUploadMediaSingleton; static;
        function isReaderSupported(mediaFileType: string): Boolean; virtual;
        function isWriterSupported(mediaFileType: string): Boolean; virtual;
        function isSupported(mediaFileType: string): Boolean; virtual;
        function isMedia(mediaFileType: string; aMediaType: string): Boolean; overload; virtual;
        function isReaderMedia(mediaFileType: string; aMediaType: string): Boolean; virtual;
        function isWriterMedia(mediaFileType: string; aMediaType: string): Boolean; virtual;
        function isMedia(mediaFileType: string; aMediaType: string; hashMap_: TJavaHashMap<TObject, TObject>): Boolean; overload;
  end;

implementation
uses
  StdUtil, StringMaker, MediaData, MediaIOUtil, MediaTypeData;


{AB:CODE}

procedure TUploadMediaSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

constructor TUploadMediaSingleton.Create;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  mediaDataNameArray: TArray<TObject>;
  size: Integer;
  mediaDataName: string;
  mediaData_: TMediaData;
  index: Integer;
  mediaIOUtil_: TMediaIOUtil;
  RESIZABLE_MEDIA: string;
  readerFileTypes: TArray<string>;
  writerFileTypes: TArray<string>;
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.readerFileTypesHashMap := TStdUtil.getInstance().createHashMap();
        Self.writerFileTypesHashMap := TStdUtil.getInstance().createHashMap();
        hashMap_ := TMediaData.toHashMap();
        set_ := hashMap_.keySet();
        mediaDataNameArray := set_.toArray();
        size := System.Length(mediaDataNameArray);
        for index := 0 to size - 1 do begin
            mediaDataName := TJava.UnboxString(TJava.ToObject(mediaDataNameArray[index]));
            mediaData_ := TMediaData(TJava.ToObject(hashMap_.get(TJava.Box(mediaDataName))));
            Self.readerFileTypesHashMap.put(TJava.Box(mediaData_.getName()), TJava.Box(mediaData_.getType()));
        end;
        mediaIOUtil_ := TMediaIOUtil.getInstance();
        RESIZABLE_MEDIA := TMediaTypeData.getInstance().RESIZABLE_MEDIA;
        readerFileTypes := mediaIOUtil_.getReaderFormatNames();
        for index := 0 to System.Length(readerFileTypes) - 1 do begin
            Self.readerFileTypesHashMap.put(TJava.Box(readerFileTypes[index]), TJava.Box(RESIZABLE_MEDIA));
        end;
        writerFileTypes := mediaIOUtil_.getWriterFormatNames();
        for index := 0 to System.Length(writerFileTypes) - 1 do begin
            Self.writerFileTypesHashMap.put(TJava.Box(writerFileTypes[index]), TJava.Box(RESIZABLE_MEDIA));
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Supported Media Readers: ');
            stringBuffer.append(Self.readerFileTypesHashMap.toString());
            stringBuffer.append(' Writers: ');
            stringBuffer.append(Self.writerFileTypesHashMap.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

class function TUploadMediaSingleton.getInstance: TUploadMediaSingleton;
begin
    TJava.MonitorEnter(nil);
    try
        if (TUploadMediaSingleton.uploadMedia) = (nil) then begin
            TUploadMediaSingleton.uploadMedia := TUploadMediaSingleton.Create();
        end;
        Exit(TUploadMediaSingleton.uploadMedia);
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

function TUploadMediaSingleton.isReaderSupported(mediaFileType: string): Boolean;
begin
        Exit(Self.readerFileTypesHashMap.containsKey(TJava.Box(mediaFileType)));
end;
    

function TUploadMediaSingleton.isWriterSupported(mediaFileType: string): Boolean;
begin
        Exit(Self.readerFileTypesHashMap.containsKey(TJava.Box(mediaFileType)));
end;
    

function TUploadMediaSingleton.isSupported(mediaFileType: string): Boolean;
begin
        Exit((Self.isReaderSupported(mediaFileType)) and (Self.isWriterSupported(mediaFileType)));
end;
    

function TUploadMediaSingleton.isMedia(mediaFileType: string; aMediaType: string): Boolean;
begin
        Exit((Self.isReaderMedia(mediaFileType, aMediaType)) and (Self.isWriterMedia(mediaFileType, aMediaType)));
end;
    

function TUploadMediaSingleton.isReaderMedia(mediaFileType: string; aMediaType: string): Boolean;
begin
        Exit(Self.isMedia(mediaFileType, aMediaType, Self.readerFileTypesHashMap));
end;
    

function TUploadMediaSingleton.isWriterMedia(mediaFileType: string; aMediaType: string): Boolean;
begin
        Exit(Self.isMedia(mediaFileType, aMediaType, Self.writerFileTypesHashMap));
end;
    

function TUploadMediaSingleton.isMedia(mediaFileType: string; aMediaType: string; hashMap_: TJavaHashMap<TObject, TObject>): Boolean;
var
  mediaType: string;
begin
        if hashMap_.containsKey(TJava.Box(mediaFileType)) then begin
            mediaType := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(mediaFileType))));
            if (CompareStr(mediaType, aMediaType)) = (0) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

