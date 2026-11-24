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
unit CustomItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TCustomItemsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    id: string;
    className: string;
    packageName: string;
    timeEntered: string;
    lastModified: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData; virtual;
        function getHashMap: TJavaHashMap<TObject, TObject>;
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, DynamicObjectData, EntryData, CustomItemData, CustomItemsEntityFactory, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TCustomItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
end;
    

constructor TCustomItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TCustomItemsRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
        Self.className := Self.request.getParameter(TDynamicObjectData.NAME);
        Self.packageName := Self.request.getParameter(TCustomItemData.PACKAGE);
        Self.timeEntered := Self.request.getParameter(TEntryData.getInstance().TIMECREATED);
        Self.lastModified := Self.request.getParameter(TEntryData.getInstance().LASTMODIFIED);
end;
    

function TCustomItemsRequestHelper.getHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.id));
        values.put(TJava.Box(TDynamicObjectData.NAME), TJava.Box(Self.className));
        values.put(TJava.Box(TCustomItemData.PACKAGE), TJava.Box(Self.packageName));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TCustomItemsRequestHelper.insert: string;
var
  calendar: TCalendar;
  time: string;
  values: TBasicArrayList;
  success: string;
  error: string;
begin
        try
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(Self.id));
            values.add(TJava.Box(Self.className));
            values.add(TJava.Box(Self.packageName));
            values.add(TJava.Box(time));
            values.add(TJava.Box(time));
            TCustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().insert(values);
            success := 'Successfully inserted ' + Self.id + ' into items table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to insert ' + Self.id + ' into items table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'inserts()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TCustomItemsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            TCustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().delete_(Self.id);
            success := 'Successfully deleted';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TCustomItemsRequestHelper.update: string;
var
  success: string;
  values: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Update Pricing Successful';
            values := Self.getHashMap();
            TCustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().update(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.id).append(TCommonSeps.getInstance().SPACE).append(success).toString(), TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update: ' + Self.id;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

