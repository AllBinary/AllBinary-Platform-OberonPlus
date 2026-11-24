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
// package views.admin.inventory.download
unit AddFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, ValidationComponentInterface, StringMaker, TransformInfoInterface, Document, Node, DownloadableInventoryItemView;

type
  {AB:TYPES}
  TAddFileValidationView = class(TDownloadableInventoryItemView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    class var ADDPRODUCT: string;
    class var ADDANOTHERDOWNLOADABLE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; overload; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; overload; virtual;
        function isValid(fileName: string; size: Int64): Boolean; overload;
        procedure validationInfo(stringBuffer: TStringMaker; fileName: string; size: Int64); overload;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StoreFrontFactory, StoreFrontInterface, BasicItemValidation, DownloadItemData, DownloadableItem, DownloadableItemValidation, MoneyException, InventoryEntity, InventoryEntityFactory, GLOBALS2, URLGLOBALS, HttpFileUploadUtil, AbFile, FileData, StringUtil, FileItem;


{AB:CODE}

procedure TAddFileValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
end;

function TAddFileValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAddFileValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TAddFileValidationView.isValid: Boolean;
var
  command: string;
  inventoryEntity_: TInventoryEntity;
  storeFrontInterface_: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  downloadableFileObject: TObject;
  fileItem_: TFileItem;
  fileName: string;
  size: Int64;
  licenseFileObject: TObject;
  extraFilesObject: TObject;
  hashMap_: TJavaHashMap<TObject, TObject>;
  licenseObject: TObject;
  fileObject: TObject;
  downloadableItemValidation_: TDownloadableItemValidation;
begin
        try
            command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
            if ((command = '')) or ((((CompareStr(command, TAddFileValidationView.ADDPRODUCT)) <> (0)) and ((CompareStr(command, TAddFileValidationView.ADDANOTHERDOWNLOADABLE)) <> (0)))) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Invalid AdminCommand=' + command, TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            try
                inventoryEntity_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
                Self.itemInterface := inventoryEntity_.getItem(Self.id);
            except
                on e: TMoneyException do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.put('Existing Item With MoneyException', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
                end;
                end;
            end;
            if (Self.itemInterface) = (nil) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Item Does Not Exist', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if (TBasicItemValidation.Create(Self.itemInterface).isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('BasicItem is not valid', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
            fullCategory := TStringMaker.Create().append(TURLGLOBALS.getWebappPath()).append(storeFrontInterface_.getCurrentHostNamePath()).append(Self.itemInterface.getCategory()).toString();
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Category Does Not Exist: ' + fullCategory, TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            downloadableFileObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.FILE_));
            if THttpFileUploadUtil.getInstance().isValid(downloadableFileObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(downloadableFileObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                THttpFileUploadUtil.log(fileItem_);
                if (Self.isValid(fileName, size)) = (False) then begin
                    Exit(False);
                end else begin
                    Self.processFile(fileItem_);
                    Self.getRequestHashMap().put(TDownloadItemData.SIZE, IntToStr(size));
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.FILE_);
            end;
            licenseFileObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.LICENSE_FILE));
            if THttpFileUploadUtil.getInstance().isValid(licenseFileObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(licenseFileObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                THttpFileUploadUtil.log(fileItem_);
                if (Self.isValid(fileName, size)) = (False) then begin
                end else begin
                    Self.processFile(fileItem_);
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.LICENSE_FILE);
            end;
            extraFilesObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.EXTRA_FILES));
            if THttpFileUploadUtil.getInstance().isValid(extraFilesObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(extraFilesObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                THttpFileUploadUtil.log(fileItem_);
                if (Self.isValid(fileName, size)) = (False) then begin
                end else begin
                    Self.processFile(fileItem_);
                    Self.unzip(fileItem_);
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.EXTRA_FILES);
            end;
            hashMap_ := Self.getRequestHashMap();
            hashMap_.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.itemInterface.getId()));
            licenseObject := TJava.Box(hashMap_.get(TJava.Box(TDownloadItemData.LICENSE_FILE)));
            if (licenseObject) <> (nil) then begin
                hashMap_.put(TJava.Box(TDownloadItemData.LICENSE_FILE), TJava.Box((TFileItem(TJava.ToObject(licenseObject))).getName()));
            end else begin
                hashMap_.put(TJava.Box(TDownloadItemData.LICENSE_FILE), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
            end;
            fileObject := TJava.Box(hashMap_.get(TJava.Box(TDownloadItemData.FILE_)));
            if (fileObject) <> (nil) then begin
                hashMap_.put(TJava.Box(TDownloadItemData.FILE_), TJava.Box((TFileItem(TJava.ToObject(fileObject))).getName()));
            end else begin
                hashMap_.put(TJava.Box(TDownloadItemData.FILE_), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
            end;
            Self.downloadableItem := TDownloadableItem.Create(hashMap_);
            downloadableItemValidation_ := TDownloadableItemValidation.Create(Self.downloadableItem);
            if (downloadableItemValidation_.isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('DownloadableItem is not valid', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Exception in validation', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TAddFileValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TAddFileValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TAddFileValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  command: string;
  ITEM_NOT_FOUND: string;
  basicItemValidation_: TBasicItemValidation;
  storeFrontInterface_: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  downloadableFileObject: TObject;
  fileItem_: TFileItem;
  fileName: string;
  size: Int64;
  licenseFileObject: TObject;
  extraFilesObject: TObject;
  downloadableItemValidation_: TDownloadableItemValidation;
  log: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
            if ((command = '')) or ((((CompareStr(command, TAddFileValidationView.ADDPRODUCT)) <> (0)) and ((CompareStr(command, TAddFileValidationView.ADDANOTHERDOWNLOADABLE)) <> (0)))) then begin
                Exit(TStringUtil.getInstance().EMPTY_STRING);
            end;
            if (Self.itemInterface) = (nil) then begin
                ITEM_NOT_FOUND := 'Item Does Not Exist';
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF(ITEM_NOT_FOUND, TJava.Box(Self), 'validationInfo()');
                end;
                Exit(ITEM_NOT_FOUND);
            end;
            basicItemValidation_ := TBasicItemValidation.Create(Self.itemInterface);
            if (basicItemValidation_.isValid()) = (False) then begin
                stringBuffer.append(basicItemValidation_.validationInfo());
                stringBuffer.append('<br/>');
            end;
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
            fullCategory := TStringMaker.Create().append(TURLGLOBALS.getWebappPath()).append(storeFrontInterface_.getCurrentHostNamePath()).append(Self.itemInterface.getCategory()).toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Category: ' + fullCategory, TJava.Box(Self), 'validationInfo()');
            end;
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                stringBuffer.append('Category ');
                stringBuffer.append(Self.itemInterface.getCategory());
                stringBuffer.append(' does not exist.');
                stringBuffer.append('<br />');
            end;
            downloadableFileObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.FILE_));
            if THttpFileUploadUtil.getInstance().isValid(downloadableFileObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(downloadableFileObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
                stringBuffer.append('Download File Missing');
                stringBuffer.append('<br/>');
            end;
            licenseFileObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.LICENSE_FILE));
            if THttpFileUploadUtil.getInstance().isValid(licenseFileObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(licenseFileObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
            end;
            extraFilesObject := TJava.Box(Self.getRequestHashMap().get(TDownloadItemData.EXTRA_FILES));
            if THttpFileUploadUtil.getInstance().isValid(extraFilesObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(extraFilesObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
            end;
            if (Self.downloadableItem) <> (nil) then begin
                downloadableItemValidation_ := TDownloadableItemValidation.Create(Self.downloadableItem);
                if (downloadableItemValidation_.isValid()) = (False) then begin
                    log := downloadableItemValidation_.validationInfo();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF(log, TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    stringBuffer.append(log);
                    stringBuffer.append('<br/>');
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

// throws Exception
function TAddFileValidationView.isValid(fileName: string; size: Int64): Boolean;
var
  fileData_: TFileData;
  stringBuffer: TStringMaker;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINDOWNLOADABLEFILESIZE) then begin
            if (size) < (fileData_.MAXDOWNLOADABLEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('File name is not valid: ');
                        stringBuffer.append(fileName);
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    Exit(False);
                end else begin
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('File Size To Large: ');
                    stringBuffer.appendlong(size);
                    stringBuffer.append('>');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MAXDOWNLOADABLEFILESIZE)));
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('File Size To Small: ');
                stringBuffer.appendlong(size);
                stringBuffer.append('>');
                stringBuffer.appendint(Integer(Trunc(fileData_.MINDOWNLOADABLEFILESIZE)));
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(False);
        end;
        Exit(True);
end;
    

procedure TAddFileValidationView.validationInfo(stringBuffer: TStringMaker; fileName: string; size: Int64);
var
  fileData_: TFileData;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINDOWNLOADABLEFILESIZE) then begin
            if (size) < (fileData_.MAXDOWNLOADABLEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                    stringBuffer.append('File Name must be more than ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MINLEN)));
                    stringBuffer.append(' and less than ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MAXLEN)));
                    stringBuffer.append(' characters in length: ');
                    stringBuffer.append(fileName);
                    stringBuffer.append('<br/>');
                end else begin
                end;
            end else begin
                stringBuffer.append('File Is Not The Right Size. ');
                stringBuffer.appendint(Integer(Trunc(fileData_.MINDOWNLOADABLEFILESIZE)));
                stringBuffer.append('< >');
                stringBuffer.appendint(Integer(Trunc(fileData_.MAXDOWNLOADABLEFILESIZE)));
                stringBuffer.append('<br/>');
            end;
        end;
end;
    

// throws Exception
function TAddFileValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  TAddFileValidationView.ADDPRODUCT := 'Finish';
  TAddFileValidationView.ADDANOTHERDOWNLOADABLE := 'Add Another';
  {AB:END}

end.

