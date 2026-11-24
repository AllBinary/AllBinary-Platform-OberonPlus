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
// package admin.taghelpers
unit StoreFrontsHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, LogUtil, CommonPhoneStrings, BasicTable;

type
  {AB:TYPES}
  TStoreFrontsHelper = class(TBasicTable)
  public
    logUtil: TLogUtil;
    portion: TPortion;
    commonPhoneStrings: TCommonPhoneStrings;
    class var CLASS_: string;
    class var TEXT: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
        function generateSelect: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontData, StoreFrontsEntityFactory, AbSqlTableUtil, StringUtil, HtmlSelect, CommonSeps;


{AB:CODE}

procedure TStoreFrontsHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.commonPhoneStrings := TCommonPhoneStrings.getInstance();
end;
    

constructor TStoreFrontsHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.portion := TPortion.Create(hashMap_);
end;
    

function TStoreFrontsHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().dropTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.commonStrings.DROP);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TStoreFrontsHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'create()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create new storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TStoreFrontsHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance(), Self.portion);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'restore()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to restore backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'restore()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TStoreFrontsHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'backup()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to make backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TStoreFrontsHelper.generateSelect: string;
var
  success: string;
  storeNamesVector: TBasicArrayList;
  storeSelect: THtmlSelect;
  size: Integer;
  storeName: string;
  index: Integer;
  error: string;
begin
        try
            success := TCommonSeps.getInstance().SPACE;
            storeNamesVector := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().getStoreFrontNames();
            storeSelect := THtmlSelect.Create(TStringUtil.getInstance().EMPTY_STRING, Self.commonPhoneStrings.ONE, TStoreFrontData.getInstance().SELECTSTORENAME, TStringUtil.getInstance().EMPTY_STRING);
            storeSelect.addAttribute(TStoreFrontsHelper.CLASS_, TStoreFrontsHelper.TEXT);
            size := storeNamesVector.size();
            for index := 0 to size - 1 do begin
                storeName := TJava.UnboxString(TJava.ToObject(storeNamesVector.get(index)));
                storeSelect.addOption(storeName);
            end;
            success := success + storeSelect;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'generateSelect()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to generate storefronts select';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateSelect()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStoreFrontsHelper.CLASS_ := 'class';
  TStoreFrontsHelper.TEXT := 'text';
  {AB:END}

end.

