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
// package org.allbinary.business.user.commerce.inventory.item.download
unit DownloadableItemValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Validation, Document, Node, DownloadableItem;

type
  {AB:TYPES}
  TDownloadableItemValidation = class(TValidation)
  public
    logUtil: TLogUtil;
    downloadableItem: TDownloadableItem;
    procedure InitFields;
        constructor Create(downloadableItem_: TDownloadableItem);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  AbSqlData, StringMaker;


{AB:CODE}

procedure TDownloadableItemValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TDownloadableItemValidation.Create(downloadableItem_: TDownloadableItem);
begin
    inherited Create;
    InitFields;
        Self.downloadableItem := downloadableItem_;
end;
    

function TDownloadableItemValidation.isValid: Boolean;
var
  size: string;
begin
        try
            if ((TJava.IsNull(Self.downloadableItem.getId())) or ((Self.downloadableItem.getId().length()) < (1))) or ((Self.downloadableItem.getId().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if (not TJava.IsNull(Self.downloadableItem.getId())) and (not (TJava.IsNumber(Self.downloadableItem.getId()))) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.downloadableItem.getSystem())) or ((Self.downloadableItem.getSystem().length()) < (1))) or ((Self.downloadableItem.getSystem().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.downloadableItem.getPlatform())) or ((Self.downloadableItem.getPlatform().length()) < (1))) or ((Self.downloadableItem.getPlatform().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.downloadableItem.getSpecialName())) or ((Self.downloadableItem.getSpecialName().length()) < (0))) or ((Self.downloadableItem.getSpecialName().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.downloadableItem.getVersion())) or ((Self.downloadableItem.getVersion().length()) < (1))) or ((Self.downloadableItem.getVersion().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.downloadableItem.getChanges())) or ((Self.downloadableItem.getChanges().length()) < (1))) or ((Self.downloadableItem.getChanges().length()) > (TAbSqlData.MAXBLOB)) then begin
                Exit(False);
            end;
            if TJava.IsNull(Self.downloadableItem.getSize()) then begin
                Exit(False);
            end else begin
                size := Self.downloadableItem.getSize().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    Exit(False);
                end;
            end;
            if TJava.IsNull(Self.downloadableItem.getValidTime()) then begin
                Exit(False);
            end else begin
                size := Self.downloadableItem.getValidTime().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    Exit(False);
                end;
            end;
            if TJava.IsNull(Self.downloadableItem.getRetries()) then begin
                Exit(False);
            end else begin
                size := Self.downloadableItem.getRetries().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    Exit(False);
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TDownloadableItemValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
  size: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            if ((TJava.IsNull(Self.downloadableItem.getId())) or ((Self.downloadableItem.getId().length()) < (1))) or ((Self.downloadableItem.getId().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Id is invalid. Must be number < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXNUM)));
                stringBuffer.append(' and > 0 digits.<br/>');
            end;
            if (not TJava.IsNull(Self.downloadableItem.getId())) and (not (TJava.IsNumber(Self.downloadableItem.getId()))) then begin
                stringBuffer.append('Id is invalid. Must be > 0.<br/>');
            end;
            if ((TJava.IsNull(Self.downloadableItem.getSystem())) or ((Self.downloadableItem.getSystem().length()) < (1))) or ((Self.downloadableItem.getSystem().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('System value is invalid. Must be < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXSTRING)));
                stringBuffer.append(' and > 0 characters long.<br/>');
            end;
            if ((TJava.IsNull(Self.downloadableItem.getPlatform())) or ((Self.downloadableItem.getPlatform().length()) < (1))) or ((Self.downloadableItem.getPlatform().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Platform value is invalid. Must be < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXSTRING)));
                stringBuffer.append(' and > 0 characters long.<br/>');
            end;
            if ((TJava.IsNull(Self.downloadableItem.getSpecialName())) or ((Self.downloadableItem.getSpecialName().length()) < (0))) or ((Self.downloadableItem.getSpecialName().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Special Name value is invalid. Must be < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXSTRING)));
                stringBuffer.append(' and > 0 characters long.<br/>');
            end;
            if ((TJava.IsNull(Self.downloadableItem.getVersion())) or ((Self.downloadableItem.getVersion().length()) < (1))) or ((Self.downloadableItem.getVersion().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Version value is invalid. Must be < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXSTRING)));
                stringBuffer.append(' and > 0 characters long.<br/>');
            end;
            if ((TJava.IsNull(Self.downloadableItem.getChanges())) or ((Self.downloadableItem.getChanges().length()) < (0))) or ((Self.downloadableItem.getChanges().length()) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Changes value is invalid. Must be < ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXBLOB)));
                stringBuffer.append(' and >= 0 characters long.<br/>');
            end;
            if TJava.IsNull(Self.downloadableItem.getSize()) then begin
                stringBuffer.append('File Size is null');
            end else begin
                size := Self.downloadableItem.getSize().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    stringBuffer.append('File Size is invalid. Must be number < ');
                    stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXNUM)));
                    stringBuffer.append(' and > 0 digits.<br/>');
                end;
            end;
            if TJava.IsNull(Self.downloadableItem.getValidTime()) then begin
                stringBuffer.append('Valid Time is null');
            end else begin
                size := Self.downloadableItem.getValidTime().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    stringBuffer.append('Valid Time is invalid. Must be number < ');
                    stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXNUM)));
                    stringBuffer.append(' and > 0 digits.<br/>');
                end;
            end;
            if TJava.IsNull(Self.downloadableItem.getRetries()) then begin
                stringBuffer.append('Retries is null');
            end else begin
                size := Self.downloadableItem.getRetries().toString();
                if ((System.Length(size)) < (1)) or ((System.Length(size)) > (TAbSqlData.MAXNUM)) then begin
                    stringBuffer.append('Retries is invalid. Must be number < ');
                    stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXNUM)));
                    stringBuffer.append(' and > 0 digits.<br/>');
                end;
            end;
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
    

function TDownloadableItemValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDownloadableItemValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

