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
unit AddFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, ValidationComponentInterface, StringMaker, TransformInfoInterface, Document, Node, InventoryItemView;

type
  {AB:TYPES}
  TAddFileValidationView = class(TInventoryItemView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    class var ADDPRODUCT: string;
    class var NEXTSTEP: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; overload; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; overload; virtual;
        function isValid(fileName: string; size: Int64): Boolean; overload;
        procedure validationInfo(stringBuffer: TStringMaker; fileName: string; fileItemFieldName: string; size: Int64); overload;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StoreFrontFactory, StoreFrontInterface, BasicItemValidation, MoneyException, InventoryEntityFactory, GLOBALS2, URLGLOBALS, HttpFileUploadUtil, UploadMediaSingleton, AbFile, FileData, AbPathData, StringUtil, CommonLabels, FileItem;


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
  stringBuffer: TStringMaker;
  basicItemValidation_: TBasicItemValidation;
  storeFrontInterface_: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  imageFileItemObject: TObject;
  fileItem_: TFileItem;
  fileName: string;
  size: Int64;
begin
        try
            command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
            if ((command = '')) or ((((CompareStr(command, TAddFileValidationView.ADDPRODUCT)) <> (0)) and ((CompareStr(command, TAddFileValidationView.NEXTSTEP)) <> (0)))) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Invalid AdminCommand: ');
                    stringBuffer.append(command);
                    stringBuffer.append(' must be: ');
                    stringBuffer.append(TAddFileValidationView.ADDPRODUCT);
                    stringBuffer.append(' or ');
                    stringBuffer.append(TAddFileValidationView.NEXTSTEP);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            basicItemValidation_ := TBasicItemValidation.Create(Self.itemInterface);
            if (basicItemValidation_.isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF(basicItemValidation_.validationInfo(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
            Self.itemInterface.setCategory((storeFrontInterface_.getCategoryPath()) + (Self.itemInterface.getCategory()));
            fullCategory := TStringMaker.Create().append(TURLGLOBALS.getWebappPath()).append(storeFrontInterface_.getCurrentHostNamePath()).append(Self.itemInterface.getCategory()).toString();
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Category Does Not Exist: ' + fullCategory, TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if not TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.itemInterface.getId())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Item Already Exists', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            imageFileItemObject := TJava.Box(Self.getRequestHashMap().get(Self.basicItemData.IMAGE));
            if THttpFileUploadUtil.getInstance().isValid(imageFileItemObject) then begin
                fileItem_ := TFileItem(TJava.ToObject(imageFileItemObject));
                fileName := fileItem_.getName();
                size := fileItem_.getSize();
                THttpFileUploadUtil.log(fileItem_);
                if (Self.isValid(fileName, size)) = (False) then begin
                    Exit(False);
                end;
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
  basicItemValidation_: TBasicItemValidation;
  storeFrontInterface_: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  anyType: TObject;
  fileItem_: TFileItem;
  fileName: string;
  fileItemFieldName: string;
  size: Int64;
begin
        try
            stringBuffer := TStringMaker.Create();
            command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
            if ((command = '')) or ((((CompareStr(command, TAddFileValidationView.ADDPRODUCT)) <> (0)) and ((CompareStr(command, TAddFileValidationView.NEXTSTEP)) <> (0)))) then begin
                Exit(TStringUtil.getInstance().EMPTY_STRING);
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
                stringBuffer.append(' does not exist.<br />');
            end;
            try
                if not TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.itemInterface.getId())) then begin
                    stringBuffer.append('Id is already in use. Refresh the page for a valid id.<br/>');
                end;
            except
                on e: TMoneyException do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Existing Item With MoneyException', TJava.Box(Self), 'validationInfo()');
                end;
                end;
            end;
            anyType := TJava.Box(Self.getRequestHashMap().get(Self.basicItemData.IMAGE));
            if THttpFileUploadUtil.getInstance().isValid(anyType) then begin
                fileItem_ := TFileItem(TJava.ToObject(anyType));
                fileName := fileItem_.getName();
                fileItemFieldName := fileItem_.getFieldName();
                size := fileItem_.getSize();
                Self.validationInfo(stringBuffer, fileName, fileItemFieldName, size);
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
  pathData: TAbPathData;
  extension: string;
  uploadMedia: TUploadMediaSingleton;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINIMAGEFILESIZE) then begin
            if (size) < (fileData_.MAXIMAGEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                    Exit(False);
                end else begin
                    pathData := TAbPathData.getInstance();
                    extension := pathData.getExtension(fileName);
                    uploadMedia := TUploadMediaSingleton.getInstance();
                    if (not (uploadMedia.isWriterSupported(extension))) and (not (uploadMedia.isReaderSupported(extension))) then begin
                        Exit(False);
                    end;
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('File Size To Large: ');
                    stringBuffer.appendlong(size);
                    stringBuffer.append('>');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MAXIMAGEFILESIZE)));
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            Self.processImageFiles();
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('File Size To Small: ');
                stringBuffer.appendlong(size);
                stringBuffer.append('>');
                stringBuffer.appendint(Integer(Trunc(fileData_.MINIMAGEFILESIZE)));
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(False);
        end;
        Exit(True);
end;
    

procedure TAddFileValidationView.validationInfo(stringBuffer: TStringMaker; fileName: string; fileItemFieldName: string; size: Int64);
var
  fileData_: TFileData;
  pathData: TAbPathData;
  extension: string;
  uploadMedia: TUploadMediaSingleton;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINIMAGEFILESIZE) then begin
            if (CompareStr(fileItemFieldName, Self.basicItemData.IMAGE)) = (0) then begin
                if (size) < (fileData_.MAXIMAGEFILESIZE) then begin
                    if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                        stringBuffer.append('FileName must be >');
                        stringBuffer.appendint(Integer(Trunc(fileData_.MINLEN)));
                        stringBuffer.append(' and <');
                        stringBuffer.appendint(Integer(Trunc(fileData_.MAXLEN)));
                        stringBuffer.append('<br/>');
                    end else begin
                        pathData := TAbPathData.getInstance();
                        extension := pathData.getExtension(fileName);
                        uploadMedia := TUploadMediaSingleton.getInstance();
                        if (not (uploadMedia.isWriterSupported(extension))) and (not (uploadMedia.isReaderSupported(extension))) then begin
                            stringBuffer.append('Image type: ');
                            stringBuffer.append(extension);
                            stringBuffer.append(' not supported.<br />');
                        end;
                    end;
                end else begin
                    stringBuffer.append('Image File Is To Large. ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MINIMAGEFILESIZE)));
                    stringBuffer.append(' < > ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MAXIMAGEFILESIZE)));
                    stringBuffer.append('<br/>');
                end;
            end;
        end else begin
            stringBuffer.append('Image File Is To Small. ');
            stringBuffer.appendint(Integer(Trunc(fileData_.MINIMAGEFILESIZE)));
            stringBuffer.append(' < > ');
            stringBuffer.appendint(Integer(Trunc(fileData_.MAXIMAGEFILESIZE)));
            stringBuffer.append('<br/>');
        end;
end;
    

// throws Exception
function TAddFileValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  TAddFileValidationView.ADDPRODUCT := 'Add Product';
  TAddFileValidationView.NEXTSTEP := TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Step';
  {AB:END}

end.

