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
// package views.admin.inventory
unit InventoryUploadMediaUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, ItemInterface, LogUtil, MediaData, MediaUtil;

type
  {AB:TYPES}
  TInventoryUploadMediaUtil = class(TObject)
  public
    logUtil: TLogUtil;
    mediaUtil: TMediaUtil;
    LARGEWIDTH: Integer;
    LARGEHEIGHT: Integer;
    MEDIUMWIDTH: Integer;
    MEDIUMHEIGHT: Integer;
    SMALLWIDTH: Integer;
    SMALLHEIGHT: Integer;
    SMALL: string;
    MEDIUM: string;
    LARGE: string;
    storeFrontInterface: IStoreFrontInterface;
    itemInterface: IItemInterface;
    procedure InitFields;
        constructor Create(storeFrontInterface_: IStoreFrontInterface; itemInterface_: IItemInterface);
        function saveFiles(byteArray: TArray<ShortInt>; fileName: string; mediaData_: TMediaData): IItemInterface; virtual;
        procedure setFileNames(fileName: string);
  end;

implementation
uses
  URLGLOBALS, UploadMediaSingleton, AbFile, FileUtil, AbPathData, StringMaker, MediaTypeData, CommonStrings;


{AB:CODE}

procedure TInventoryUploadMediaUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.mediaUtil := TMediaUtil.getInstance();
  Self.LARGEWIDTH := 1024;
  Self.LARGEHEIGHT := 1024;
  Self.MEDIUMWIDTH := 256;
  Self.MEDIUMHEIGHT := 256;
  Self.SMALLWIDTH := 128;
  Self.SMALLHEIGHT := 128;
  Self.SMALL := 'Small';
  Self.MEDIUM := 'Medium';
  Self.LARGE := 'Large';
  
  
end;
    

constructor TInventoryUploadMediaUtil.Create(storeFrontInterface_: IStoreFrontInterface; itemInterface_: IItemInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontInterface := storeFrontInterface_;
        Self.itemInterface := itemInterface_;
end;
    

// throws Exception
function TInventoryUploadMediaUtil.saveFiles(byteArray: TArray<ShortInt>; fileName: string; mediaData_: TMediaData): IItemInterface;
var
  fileUtil_: TFileUtil;
  stringBuffer: TStringMaker;
  fullPath: string;
  imageDirectoryFile: TAbFile;
  originalImageFile: TAbFile;
  uploadMedia: TUploadMediaSingleton;
  isMediaSupported: Boolean;
  defaultMediaData: TMediaData;
  isMediaResizable: Boolean;
  isConvertable: Boolean;
  smallImageFile: TAbFile;
  mediumImageFile: TAbFile;
  largeImageFile: TAbFile;
  commonStrings_: TCommonStrings;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('Start FileName: ' + fileName, TJava.Box(Self), 'saveFiles()');
        end;
        if (fileName = '') then begin
            raise SysUtils.Exception.Create('Image File Name Was Null');
        end;
        fileUtil_ := TFileUtil.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getWebappPath());
        stringBuffer.append(Self.storeFrontInterface.getCurrentHostNamePath());
        stringBuffer.append(Self.itemInterface.getCategory());
        fullPath := stringBuffer.toString();
        imageDirectoryFile := TAbFile.createAbFile(fullPath);
        if not (imageDirectoryFile.isDirectory()) then begin
            raise SysUtils.Exception.Create('Unable to save file to non existant directory');
        end;
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(fullPath);
        stringBuffer.append(fileName);
        stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
        stringBuffer.append(mediaData_.getName());
        originalImageFile := TAbFile.createAbFile(stringBuffer.toString());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('Saving Original Image: ' + TJava.ToString(originalImageFile), TJava.Box(Self), 'saveFiles()');
        end;
        originalImageFile.createNewFile();
        fileUtil_.write(TByteArrayInputStream.Create(byteArray), originalImageFile);
        uploadMedia := TUploadMediaSingleton.getInstance();
        isMediaSupported := (uploadMedia.isWriterSupported(mediaData_.getName())) or (uploadMedia.isReaderSupported(mediaData_.getName()));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Is Image Type: ');
            stringBuffer.append(mediaData_.getName());
            stringBuffer.append(' supported: ');
            stringBuffer.appendboolean(isMediaSupported);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'saveFiles()');
        end;
        defaultMediaData := TMediaData.getDefault();
        Self.setFileNames(fileName);
        if isMediaSupported then begin
            isMediaResizable := uploadMedia.isWriterMedia(mediaData_.getName(), TMediaTypeData.getInstance().RESIZABLE_MEDIA);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Is ');
                stringBuffer.append(mediaData_.toString());
                stringBuffer.append(' Image Resize Supported:');
                stringBuffer.appendboolean(uploadMedia.isSupported(mediaData_.getName()));
                stringBuffer.append(' WriterMedia: ');
                stringBuffer.appendboolean(isMediaResizable);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'saveFiles()');
            end;
            if isMediaResizable then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                    Self.logUtil.putF('Saving Small Image: ' + TJava.ToString(Self.itemInterface.getSmallImage()), TJava.Box(Self), 'saveFiles()');
                end;
                Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getSmallImage(), fullPath, mediaData_, Self.SMALLWIDTH, Self.SMALLHEIGHT);
                Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getMediumImage(), fullPath, mediaData_, Self.MEDIUMWIDTH, Self.MEDIUMHEIGHT);
                Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getLargeImage(), fullPath, mediaData_, Self.LARGEWIDTH, Self.LARGEHEIGHT);
            end else begin
                isConvertable := mediaData_.isConvertableTo(defaultMediaData);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Converting: ');
                    stringBuffer.append(defaultMediaData.getName());
                    stringBuffer.append(' into ');
                    stringBuffer.append(mediaData_.getName());
                    stringBuffer.append(' if Convertable is it: ');
                    stringBuffer.appendboolean(isConvertable);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'saveFiles()');
                end;
                if isConvertable then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                        Self.logUtil.putF('Saving Small Image: ' + TJava.ToString(Self.itemInterface.getSmallImage()), TJava.Box(Self), 'saveFiles()');
                    end;
                    Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getSmallImage(), fullPath, defaultMediaData, Self.SMALLWIDTH, Self.SMALLHEIGHT);
                    Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getMediumImage(), fullPath, defaultMediaData, Self.MEDIUMWIDTH, Self.MEDIUMHEIGHT);
                    Self.mediaUtil.saveImageFile(originalImageFile, Self.itemInterface.getLargeImage(), fullPath, defaultMediaData, Self.LARGEWIDTH, Self.LARGEHEIGHT);
                end else begin
                    smallImageFile := TAbFile.createAbFile(Self.itemInterface.getSmallImage());
                    smallImageFile.createNewFile();
                    fileUtil_.write(TByteArrayInputStream.Create(byteArray), smallImageFile);
                    mediumImageFile := TAbFile.createAbFile(Self.itemInterface.getMediumImage());
                    smallImageFile.createNewFile();
                    fileUtil_.write(TByteArrayInputStream.Create(byteArray), mediumImageFile);
                    largeImageFile := TAbFile.createAbFile(Self.itemInterface.getSmallImage());
                    largeImageFile.createNewFile();
                    fileUtil_.write(TByteArrayInputStream.Create(byteArray), largeImageFile);
                end;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.END_, TJava.Box(Self), 'saveFiles()');
        end;
        Exit(Self.itemInterface);
end;
    

procedure TInventoryUploadMediaUtil.setFileNames(fileName: string);
var
  stringBuffer: TStringMaker;
  END_: string;
  newImageFileName: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.itemInterface.getId());
        stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
        stringBuffer.append(TMediaData.getDefault().getName());
        END_ := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(fileName);
        stringBuffer.append(Self.SMALL);
        stringBuffer.append(END_);
        newImageFileName := stringBuffer.toString();
        Self.itemInterface.setSmallImage(newImageFileName);
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(fileName);
        stringBuffer.append(Self.MEDIUM);
        stringBuffer.append(END_);
        newImageFileName := stringBuffer.toString();
        Self.itemInterface.setMediumImage(newImageFileName);
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(fileName);
        stringBuffer.append(Self.LARGE);
        stringBuffer.append(END_);
        newImageFileName := stringBuffer.toString();
        Self.itemInterface.setLargeImage(newImageFileName);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

