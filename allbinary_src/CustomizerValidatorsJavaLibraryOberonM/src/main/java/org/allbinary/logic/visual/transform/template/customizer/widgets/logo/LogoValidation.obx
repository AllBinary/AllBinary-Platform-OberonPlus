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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
unit LogoValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, AbPath, FileItem, Document, Node;

type
  {AB:TYPES}
  TLogoValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    logoFileItem: TFileItem;
    logoAbPath: TAbPath;
    logoFile: string;
    isFile: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure processLogoFile; virtual;
  end;

implementation
uses
  LogoData, LogoImageFileUtil, DomSearchHelper, ModDomHelper, StdUtil, HttpRequestUtil, FileData, StringMaker, StringUtil;


{AB:CODE}

procedure TLogoValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
end;

function TLogoValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLogoValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.isFile := False;
        Self.logoAbPath := nil;
        Self.logoFile := nil;
end;
    

constructor TLogoValidation.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.isFile := False;
        Self.logoAbPath := TAbPath.Create(TDomSearchHelper.getNode(TLogoData.getInstance().IMAGEPATH, node_.getChildNodes()).getNodeValue(), TStringUtil.getInstance().EMPTY_STRING);
        Self.logoFile := TDomSearchHelper.getNode(TLogoData.getInstance().IMAGEFILENAME, node_.getChildNodes()).getNodeValue();
end;
    

constructor TLogoValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.isFile := True;
        Self.getFormData(hashMap_);
end;
    

// throws Exception
procedure TLogoValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
var
  stringBuffer: TStringMaker;
begin
        Self.logoFileItem := TFileItem(TJava.ToObject(hashMap_.get(TJava.Box(TLogoData.getInstance().IMAGE))));
        Self.logoAbPath := TAbPath.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TLogoData.getInstance().IMAGEPATH)))), TStringUtil.getInstance().EMPTY_STRING);
        if (Self.logoFileItem) <> (nil) then begin
            Self.logoFile := THttpRequestUtil.getInstance().generateFileName(Self.logoFileItem.getName());
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('HashMap: ');
            stringBuffer.append(hashMap_.toString());
            stringBuffer.append(''#10'LogoFileName: ');
            stringBuffer.append(Self.logoFile);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getFormData()');
        end;
end;
    

function TLogoValidation.isValid: Boolean;
var
  valid: Boolean;
  fileData_: TFileData;
begin
        try
            valid := True;
            fileData_ := TFileData.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('LogoValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not (nil.isValidRequired(Self.logoAbPath.toString(), 0, 512)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('logoPath is invalid: ' + Self.logoAbPath.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if not (nil.isValidRequired(Self.logoFile, fileData_.MINLEN, fileData_.MAXLEN)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('logoFile is invalid: ' + Self.logoFile, TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if Self.isFile then begin
                if (Self.logoFileItem) = (nil) then begin
                    Exit(False);
                end;
                if ((Self.logoFileItem.getSize()) > (fileData_.MAXIMAGEFILESIZE)) or ((Self.logoFileItem.getSize()) < (fileData_.MINIMAGEFILESIZE)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF('Image File Is Not The Right Size. ' + TJava.ToString(fileData_.MINIMAGEFILESIZE) + '< > ' + TJava.ToString(fileData_.MAXIMAGEFILESIZE), TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    Exit(False);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Logo Validation: ' + BoolToStr(valid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TLogoValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Logo is not valid.');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TLogoValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TLogoValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TLogoValidation.toHashMap: TJavaHashMap<TObject, TObject>;
var
  stringUtil_: TStringUtil;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        stringUtil_ := TStringUtil.getInstance();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TLogoData.getInstance().IMAGE), TJava.Box(stringUtil_.EMPTY_STRING));
        if (Self.logoFile) <> ('') then begin
            hashMap_.put(TJava.Box(TLogoData.getInstance().IMAGEPATH), TJava.Box(Self.logoAbPath.toString()));
            hashMap_.put(TJava.Box(TLogoData.getInstance().IMAGEFILENAME), TJava.Box(Self.logoFile));
        end else begin
            hashMap_.put(TJava.Box(TLogoData.getInstance().IMAGEPATH), nil);
            hashMap_.put(TJava.Box(TLogoData.getInstance().IMAGEFILENAME), TJava.Box(Self.logoFile));
        end;
        Exit(hashMap_);
end;
    

// throws Exception
function TLogoValidation.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := Self.toHashMap();
        Exit(TModDomHelper.createNameValueNodes(document_, TLogoData.getInstance().NAME, hashMap_));
end;
    

// throws Exception
procedure TLogoValidation.processLogoFile;
var
  stringBuffer: TStringMaker;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Processing logoFile: ');
            stringBuffer.append(Self.logoAbPath.toString());
            stringBuffer.append(Self.logoFile);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'processLogoFile()');
        end;
        TLogoImageFileUtil.Create(Self.logoAbPath, Self.logoFile).saveFiles(Self.logoFileItem);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

