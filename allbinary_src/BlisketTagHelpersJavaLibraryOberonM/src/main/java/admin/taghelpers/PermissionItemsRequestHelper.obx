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
unit PermissionItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TPermissionItemsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    id: string;
    enabled: string;
    number: string;
    who: string;
    what: string;
    type_: string;
    remoteAddr: string;
    startTime: string;
    endTime: string;
    price: string;
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
  BasicArrayList, BasicArrayListD, EntryData, PermissionItemData, PermissionItemsEntityFactory, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TPermissionItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TPermissionItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TPermissionItemsRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
        Self.number := Self.request.getParameter(Self.basicItemData.NUMBER);
        Self.enabled := Self.request.getParameter(TEntryData.getInstance().ENABLE);
        Self.who := Self.request.getParameter(TPermissionItemData.WHO);
        Self.what := Self.request.getParameter(TPermissionItemData.WHAT);
        Self.type_ := Self.request.getParameter(TPermissionItemData.TYPE_);
        Self.remoteAddr := Self.request.getParameter(TPermissionItemData.REMOTE_ADDR);
        Self.startTime := Self.request.getParameter(TPermissionItemData.START_TIME);
        Self.endTime := Self.request.getParameter(TPermissionItemData.END_TIME);
        Self.price := Self.request.getParameter(Self.basicItemData.PRICE);
        Self.timeEntered := Self.request.getParameter(TEntryData.getInstance().TIMECREATED);
        Self.lastModified := Self.request.getParameter(TEntryData.getInstance().LASTMODIFIED);
end;
    

function TPermissionItemsRequestHelper.getHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.id));
        values.put(TJava.Box(Self.basicItemData.NUMBER), TJava.Box(Self.number));
        values.put(TJava.Box(TEntryData.getInstance().ENABLE), TJava.Box(Self.enabled));
        values.put(TJava.Box(TPermissionItemData.WHO), TJava.Box(Self.who));
        values.put(TJava.Box(TPermissionItemData.WHAT), TJava.Box(Self.what));
        values.put(TJava.Box(TPermissionItemData.TYPE_), TJava.Box(Self.type_));
        values.put(TJava.Box(TPermissionItemData.REMOTE_ADDR), TJava.Box(Self.remoteAddr));
        values.put(TJava.Box(TPermissionItemData.START_TIME), TJava.Box(Self.startTime));
        values.put(TJava.Box(TPermissionItemData.END_TIME), TJava.Box(Self.endTime));
        values.put(TJava.Box(Self.basicItemData.PRICE), TJava.Box(Self.price));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TPermissionItemsRequestHelper.insert: string;
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
            values.add(TJava.Box(Self.number));
            values.add(TJava.Box(Self.enabled));
            values.add(TJava.Box(Self.who));
            values.add(TJava.Box(Self.what));
            values.add(TJava.Box(Self.type_));
            values.add(TJava.Box(Self.remoteAddr));
            values.add(TJava.Box(Self.startTime));
            values.add(TJava.Box(Self.endTime));
            values.add(TJava.Box(Self.price));
            values.add(TJava.Box(time));
            values.add(TJava.Box(time));
            TPermissionItemsEntityFactory.getInstance().getPermissionItemsEntityInstance().insert(values);
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
    

function TPermissionItemsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            TPermissionItemsEntityFactory.getInstance().getPermissionItemsEntityInstance().delete_(Self.id);
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
    

function TPermissionItemsRequestHelper.update: string;
var
  success: string;
  values: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Update Pricing Successful';
            values := Self.getHashMap();
            TPermissionItemsEntityFactory.getInstance().getPermissionItemsEntityInstance().update(values);
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

