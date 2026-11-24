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
unit UpdateFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, StringMaker, TransformInfoInterface, Document, Node, InventoryItemView;

type
  {AB:TYPES}
  TUpdateFileValidationView = class(TInventoryItemView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    class var UPDATEPRODUCT: string;
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
  StoreFrontFactory, StoreFrontInterface, BasicItemData, BasicItemValidation, MoneyException, InventoryEntity, InventoryEntityFactory, GLOBALS2, URLGLOBALS, HttpFileUploadUtil, AbFile, FileData, CommonSeps, CommonStrings, FileItem;


{AB:CODE}

procedure TUpdateFileValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TUpdateFileValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUpdateFileValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TUpdateFileValidationView.isValid: Boolean;
var
  command: string;
  storeFrontInterface_: IStoreFrontInterface;
  stringBuffer: TStringMaker;
  fullCategory: string;
  categoryFile: TAbFile;
  inventoryEntity_: TInventoryEntity;
  anyType: TObject;
  fileItem_: TFileItem;
  size: Int64;
  fileName: string;
begin
        try
            command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
            if ((command) = ('')) or ((CompareStr(command, TUpdateFileValidationView.UPDATEPRODUCT)) <> (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Invalid AdminCommand=' + command, TJava.Box(Self), Self.commonStrings.IS_VALID);
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
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(storeFrontInterface_.getCurrentHostNamePath());
            stringBuffer.append(Self.itemInterface.getCategory());
            fullCategory := stringBuffer.toString();
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Category Does Not Exist: ' + fullCategory, TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            inventoryEntity_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            if TJava.IsNull(inventoryEntity_.getItem(Self.itemInterface.getId())) then begin
                Exit(False);
            end;
            anyType := TJava.Box(Self.getRequestHashMap().get(Self.basicItemData.IMAGE));
            if THttpFileUploadUtil.getInstance().isValid(anyType) then begin
                fileItem_ := TFileItem(TJava.ToObject(anyType));
                size := fileItem_.getSize();
                fileName := fileItem_.getName();
                THttpFileUploadUtil.log(fileItem_);
                if (Self.isValid(fileName, size)) = (False) then begin
                    Exit(False);
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.put('Exception in validation', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TUpdateFileValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUpdateFileValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TUpdateFileValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  command: string;
  storeFrontInterface_: IStoreFrontInterface;
  fullCategory: string;
  anyType: TObject;
  fileItem_: TFileItem;
  size: Int64;
  fileName: string;
  fileItemFieldName: string;
begin
        stringBuffer := TStringMaker.Create();
        command := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)));
        if ((command) = ('')) or ((CompareStr(command, TUpdateFileValidationView.UPDATEPRODUCT)) <> (0)) then begin
            Exit(TCommonSeps.getInstance().SPACE);
        end;
        stringBuffer.append(TBasicItemValidation.Create(Self.itemInterface).validationInfo());
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
        fullCategory := ((TJava.UnboxString(TJava.ToObject(TURLGLOBALS.getWebappPath()))) + (storeFrontInterface_.getCurrentHostNamePath())) + (Self.itemInterface.getCategory());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Category: ' + fullCategory, TJava.Box(Self), 'validationInfo()');
        end;
        try
            if TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.itemInterface.getId())) then begin
                stringBuffer.append('Item does not exist.<br>');
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
            size := fileItem_.getSize();
            fileName := fileItem_.getName();
            fileItemFieldName := fileItem_.getFieldName();
            Self.validationInfo(stringBuffer, fileName, fileItemFieldName, size);
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
function TUpdateFileValidationView.isValid(fileName: string; size: Int64): Boolean;
var
  fileData_: TFileData;
  stringBuffer: TStringMaker;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINIMAGEFILESIZE) then begin
            if (size) < (fileData_.MAXIMAGEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                    Exit(False);
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
        end;
        Exit(True);
end;
    

procedure TUpdateFileValidationView.validationInfo(stringBuffer: TStringMaker; fileName: string; fileItemFieldName: string; size: Int64);
var
  fileData_: TFileData;
begin
        fileData_ := TFileData.getInstance();
        if (size) > (fileData_.MINIMAGEFILESIZE) then begin
            if (CompareStr(fileItemFieldName, Self.basicItemData.IMAGE)) = (0) then begin
                if (size) < (fileData_.MAXIMAGEFILESIZE) then begin
                    if not (nil.isValidRequired(fileName, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                        stringBuffer.append('FileName must be >');
                        stringBuffer.appendint(Integer(Trunc(fileData_.MINLEN)));
                        stringBuffer.append('and <');
                        stringBuffer.appendint(Integer(Trunc(fileData_.MAXLEN)));
                        stringBuffer.append('<br />');
                    end;
                end else begin
                    stringBuffer.append('Image File Is Not The Right Size. ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MINIMAGEFILESIZE)));
                    stringBuffer.append('< > ');
                    stringBuffer.appendint(Integer(Trunc(fileData_.MAXIMAGEFILESIZE)));
                    stringBuffer.append('<br />');
                end;
            end;
        end;
end;
    

// throws Exception
function TUpdateFileValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  TUpdateFileValidationView.UPDATEPRODUCT := TCommonStrings.getInstance().UPDATE;
  {AB:END}

end.

