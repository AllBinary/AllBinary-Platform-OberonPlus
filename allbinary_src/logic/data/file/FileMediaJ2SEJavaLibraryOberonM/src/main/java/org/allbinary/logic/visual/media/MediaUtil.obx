// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media
unit MediaUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, MediaData;

type
  {AB:TYPES}
  // import com.sun.imageio.plugins.common.ImageUtil;
  TMediaUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TMediaUtil;
    procedure InitFields;
        class function getInstance: TMediaUtil; static;
        constructor Create;
        procedure saveImageFile(originalImageFile: TAbFile; newImageFileName: string; category: string; mediaData_: TMediaData; newWidth: Integer; newHeight: Integer); virtual;
        class function getImageBufferPropertyHashMap(bufferedImage_: TBufferedImage): TJavaHashMap<TObject, TObject>; static;
  end;

implementation
uses
  ImageIOUtil, StdUtil, LogConfigTypeFactory, LogConfigTypes, StringMaker, ImageUtil, CommonLabels;


{AB:CODE}

procedure TMediaUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TMediaUtil.getInstance: TMediaUtil;
begin
        Exit(TMediaUtil.instance);
end;
    

constructor TMediaUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TMediaUtil.saveImageFile(originalImageFile: TAbFile; newImageFileName: string; category: string; mediaData_: TMediaData; newWidth: Integer; newHeight: Integer);
var
  bufferedImage_: TBufferedImage;
  hashMap_: TJavaHashMap<TObject, TObject>;
  imageFile: TAbFile;
  imageUtil_: TImageUtil;
  newBufferedImage: TBufferedImage;
  isWritten: Boolean;
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        if ((originalImageFile) = (nil)) or (not (originalImageFile.isFile())) then begin
            raise SysUtils.Exception.Create('Original Image File Does Not Exist.');
        end;
        bufferedImage_ := TImageIOUtil.read(originalImageFile);
        if (bufferedImage_) = (nil) then begin
            raise SysUtils.Exception.Create('Unable to find ImageReader for this file.');
        end;
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().VIEW) then begin
            hashMap_ := Self.getImageBufferPropertyHashMap(bufferedImage_);
            Self.logUtil.putF('Image Properties: ' + hashMap_.toString(), TJava.Box(Self), 'saveImageFile()');
        end;
        imageFile := TAbFile.createAbFile(category + newImageFileName);
        imageFile.createNewFile();
        imageUtil_ := TImageUtil.getInstance();
        newBufferedImage := imageUtil_.createBufferedImageForSave(bufferedImage_, newWidth, newHeight);
        isWritten := TImageIOUtil.write(TRenderedImage(TJava.ToObject(newBufferedImage)), mediaData_.getName(), imageFile);
        if not (isWritten) then begin
            raise SysUtils.Exception.Create('Unable to write.');
        end;
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().VIEW) then begin
            commonLabels_ := TCommonLabels.getInstance();
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Get Path: ');
            stringBuffer.append(originalImageFile.getPath());
            stringBuffer.append(''#10'NewImageFileName: ');
            stringBuffer.append(newImageFileName);
            stringBuffer.append(''#10'Category: ');
            stringBuffer.append(category);
            stringBuffer.append(''#10'Save File Type: ');
            stringBuffer.append(mediaData_.getName());
            stringBuffer.append(''#10'New').append(commonLabels_.WIDTH_LABEL);
            stringBuffer.appendint(newWidth);
            stringBuffer.append(''#10'New').append(commonLabels_.HEIGHT_LABEL);
            stringBuffer.appendint(newHeight);
            stringBuffer.append(''#10'File Length: ');
            stringBuffer.appendlong(Int64(originalImageFile.length()));
            stringBuffer.append(''#10'New File Length: ');
            stringBuffer.appendlong(Int64(imageFile.length()));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'saveImageFile()');
        end;
end;
    

class function TMediaUtil.getImageBufferPropertyHashMap(bufferedImage_: TBufferedImage): TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  propertyStringArray: TArray<string>;
  propertyObject: TObject;
  index: Integer;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        propertyStringArray := bufferedImage_.getPropertyNames();
        if (propertyStringArray) <> (nil) then begin
            for index := 0 to System.Length(propertyStringArray) - 1 do begin
                propertyObject := TJava.Box(bufferedImage_.getProperty(propertyStringArray[index]));
                hashMap_.put(TJava.Box(propertyStringArray[index]), TJava.Box(propertyObject.toString()));
            end;
        end;
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  TMediaUtil.instance := TMediaUtil.Create();
  {AB:END}

end.

