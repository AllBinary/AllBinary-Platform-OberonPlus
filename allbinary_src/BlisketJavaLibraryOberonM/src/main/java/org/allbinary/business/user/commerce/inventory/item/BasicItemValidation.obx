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
// package org.allbinary.business.user.commerce.inventory.item
unit BasicItemValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Validation, Document, Node, ItemInterface;

type
  {AB:TYPES}
  TBasicItemValidation = class(TValidation)
  public
    logUtil: TLogUtil;
    MAXWEIGHT: Integer;
    MAXPRICE: Integer;
    itemInterface: IItemInterface;
    procedure InitFields;
        constructor Create(itemInterface_: IItemInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  AbSqlData, StringMaker;


{AB:CODE}

procedure TBasicItemValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.MAXWEIGHT := 14;
  Self.MAXPRICE := 14;
  
end;
    

constructor TBasicItemValidation.Create(itemInterface_: IItemInterface);
begin
    inherited Create;
    InitFields;
        Self.itemInterface := itemInterface_;
end;
    

function TBasicItemValidation.isValid: Boolean;
var
  stringValidationUtil_: TObject;
begin
        try
            if ((TJava.IsNull(Self.itemInterface.getId())) or ((Self.itemInterface.getId().length()) < (1))) or ((Self.itemInterface.getId().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            stringValidationUtil_ := nil;
            if (not TJava.IsNull(Self.itemInterface.getId())) and (not (TJava.IsNumber(Self.itemInterface.getId()))) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getNumber())) or ((Self.itemInterface.getNumber().length()) < (1))) or ((Self.itemInterface.getNumber().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if (not TJava.IsNull(Self.itemInterface.getNumber())) and (not (TJava.IsNumber(Self.itemInterface.getNumber()))) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getInBaskets())) or ((Self.itemInterface.getInBaskets().length()) < (1))) or ((Self.itemInterface.getInBaskets().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if (not TJava.IsNull(Self.itemInterface.getInBaskets())) and (not (TJava.IsNumber(Self.itemInterface.getInBaskets()))) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getWeight())) or ((Self.itemInterface.getWeight().length()) < (1))) or ((Self.itemInterface.getWeight().length()) > (Self.MAXWEIGHT)) then begin
                Exit(False);
            end;
            if (not TJava.IsNull(Self.itemInterface.getWeight())) and (not (TJava.IsNumber(Self.itemInterface.getWeight()))) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getEnabled())) or ((Self.itemInterface.getEnabled().length()) < (1))) or ((Self.itemInterface.getEnabled().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getNewOrUsed())) or ((Self.itemInterface.getNewOrUsed().length()) < (1))) or ((Self.itemInterface.getNewOrUsed().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getSummary())) or ((Self.itemInterface.getSummary().length()) < (1))) or ((Self.itemInterface.getSummary().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getDescription())) or ((Self.itemInterface.getDescription().length()) < (1))) or ((Self.itemInterface.getDescription().length()) > (TAbSqlData.MAXBLOB)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getKeywords())) or ((Self.itemInterface.getKeywords().length()) < (1))) or ((Self.itemInterface.getKeywords().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getCategory())) or ((Self.itemInterface.getCategory().length()) < (1))) or ((Self.itemInterface.getCategory().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getType())) or ((Self.itemInterface.getType().length()) < (1))) or ((Self.itemInterface.getType().length()) > (TAbSqlData.MAXSTRING)) then begin
                Exit(False);
            end;
            if (TJava.IsNull(Self.itemInterface.getPrice())) or (not (Self.itemInterface.getPrice().isValid())) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getCustoms())) or ((Self.itemInterface.getCustoms().length()) < (1))) or ((Self.itemInterface.getCustoms().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getDownloads())) or ((Self.itemInterface.getDownloads().length()) < (1))) or ((Self.itemInterface.getDownloads().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getGroups())) or ((Self.itemInterface.getGroups().length()) < (1))) or ((Self.itemInterface.getGroups().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getOptions())) or ((Self.itemInterface.getOptions().length()) < (1))) or ((Self.itemInterface.getOptions().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getPermissions())) or ((Self.itemInterface.getPermissions().length()) < (1))) or ((Self.itemInterface.getPermissions().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
            end;
            if ((TJava.IsNull(Self.itemInterface.getSpecials())) or ((Self.itemInterface.getSpecials().length()) < (1))) or ((Self.itemInterface.getSpecials().length()) > (TAbSqlData.MAXNUM)) then begin
                Exit(False);
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
    

function TBasicItemValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
  stringValidationUtil_: TObject;
begin
        try
            stringBuffer := TStringMaker.Create();
            if ((TJava.IsNull(Self.itemInterface.getId())) or ((Self.itemInterface.getId().length()) < (1))) or ((Self.itemInterface.getId().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Id is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            stringValidationUtil_ := nil;
            if (not TJava.IsNull(Self.itemInterface.getId())) and (not (TJava.IsNumber(Self.itemInterface.getId()))) then begin
                stringBuffer.append('Id is invalid. Must be > 0.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getNumber())) or ((Self.itemInterface.getNumber().length()) < (1))) or ((Self.itemInterface.getNumber().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Number of items is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if (not TJava.IsNull(Self.itemInterface.getNumber())) and (not (TJava.IsNumber(Self.itemInterface.getNumber()))) then begin
                stringBuffer.append('Number of items value is not a valid number.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getInBaskets())) or ((Self.itemInterface.getInBaskets().length()) < (1))) or ((Self.itemInterface.getInBaskets().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Number in baskets is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if (not TJava.IsNull(Self.itemInterface.getInBaskets())) and (not (TJava.IsNumber(Self.itemInterface.getInBaskets()))) then begin
                stringBuffer.append('In Baskets value is not a valid number.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getWeight())) or ((Self.itemInterface.getWeight().length()) < (1))) or ((Self.itemInterface.getWeight().length()) > (Self.MAXWEIGHT)) then begin
                stringBuffer.append('Weight value is invalid. Must be < ' + IntToStr(Self.MAXWEIGHT) + ' and > 0 digits.<br />');
            end;
            if (not TJava.IsNull(Self.itemInterface.getWeight())) and (not (TJava.IsNumber(Self.itemInterface.getWeight()))) then begin
                stringBuffer.append('Weight value is not a valid number.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getEnabled())) or ((Self.itemInterface.getEnabled().length()) < (1))) or ((Self.itemInterface.getEnabled().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('For Sale value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getNewOrUsed())) or ((Self.itemInterface.getNewOrUsed().length()) < (1))) or ((Self.itemInterface.getNewOrUsed().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('New Or Used value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getSummary())) or ((Self.itemInterface.getSummary().length()) < (1))) or ((Self.itemInterface.getSummary().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Summary value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getDescription())) or ((Self.itemInterface.getDescription().length()) < (1))) or ((Self.itemInterface.getDescription().length()) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Description value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getKeywords())) or ((Self.itemInterface.getKeywords().length()) < (1))) or ((Self.itemInterface.getKeywords().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Keywords value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getCategory())) or ((Self.itemInterface.getCategory().length()) < (1))) or ((Self.itemInterface.getCategory().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Category value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getType())) or ((Self.itemInterface.getType().length()) < (1))) or ((Self.itemInterface.getType().length()) > (TAbSqlData.MAXSTRING)) then begin
                stringBuffer.append('Type value is invalid. Must be < ' + TJava.ToString(TAbSqlData.MAXSTRING) + ' and > 0 characters long.<br />');
            end;
            if (TJava.IsNull(Self.itemInterface.getPrice())) or (not (Self.itemInterface.getPrice().isValid())) then begin
                stringBuffer.append('Price value is invalid. Must be < ' + IntToStr(Self.MAXPRICE) + ' and > 0 in length.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getCustoms())) or ((Self.itemInterface.getCustoms().length()) < (1))) or ((Self.itemInterface.getCustoms().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Custom items value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getDownloads())) or ((Self.itemInterface.getDownloads().length()) < (1))) or ((Self.itemInterface.getDownloads().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Downloadable item value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getGroups())) or ((Self.itemInterface.getGroups().length()) < (1))) or ((Self.itemInterface.getGroups().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Group item value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getOptions())) or ((Self.itemInterface.getOptions().length()) < (1))) or ((Self.itemInterface.getOptions().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Option item value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getPermissions())) or ((Self.itemInterface.getPermissions().length()) < (1))) or ((Self.itemInterface.getPermissions().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Permission item value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
            end;
            if ((TJava.IsNull(Self.itemInterface.getSpecials())) or ((Self.itemInterface.getSpecials().length()) < (1))) or ((Self.itemInterface.getSpecials().length()) > (TAbSqlData.MAXNUM)) then begin
                stringBuffer.append('Special item value is invalid. Must be number < ' + TJava.ToString(TAbSqlData.MAXNUM) + ' and > 0 digits.<br />');
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
    

function TBasicItemValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TBasicItemValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

