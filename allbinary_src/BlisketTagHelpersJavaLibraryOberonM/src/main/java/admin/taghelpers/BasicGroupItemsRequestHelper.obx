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
unit BasicGroupItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TBasicGroupItemsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    id: string;
    itemOne: string;
    itemTwo: string;
    itemThree: string;
    itemFour: string;
    itemFive: string;
    itemSix: string;
    itemSeven: string;
    itemEight: string;
    itemNine: string;
    itemTen: string;
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
  BasicArrayList, BasicArrayListD, EntryData, BasicGroupItemData, BasicGroupItemsEntityFactory, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TBasicGroupItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TBasicGroupItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TBasicGroupItemsRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
        Self.itemOne := Self.request.getParameter(TBasicGroupItemData.ITEM_ONE);
        Self.itemTwo := Self.request.getParameter(TBasicGroupItemData.ITEM_TWO);
        Self.itemThree := Self.request.getParameter(TBasicGroupItemData.ITEM_THREE);
        Self.itemFour := Self.request.getParameter(TBasicGroupItemData.ITEM_FOUR);
        Self.itemFive := Self.request.getParameter(TBasicGroupItemData.ITEM_FIVE);
        Self.itemSix := Self.request.getParameter(TBasicGroupItemData.ITEM_SIX);
        Self.itemSeven := Self.request.getParameter(TBasicGroupItemData.ITEM_SEVEN);
        Self.itemEight := Self.request.getParameter(TBasicGroupItemData.ITEM_EIGHT);
        Self.itemNine := Self.request.getParameter(TBasicGroupItemData.ITEM_NINE);
        Self.itemTen := Self.request.getParameter(TBasicGroupItemData.ITEM_TEN);
        Self.timeEntered := Self.request.getParameter(TEntryData.getInstance().TIMECREATED);
        Self.lastModified := Self.request.getParameter(TEntryData.getInstance().LASTMODIFIED);
end;
    

function TBasicGroupItemsRequestHelper.getHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.id));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_ONE), TJava.Box(Self.itemOne));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_TWO), TJava.Box(Self.itemTwo));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_THREE), TJava.Box(Self.itemThree));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_FOUR), TJava.Box(Self.itemFour));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_FIVE), TJava.Box(Self.itemFive));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_SIX), TJava.Box(Self.itemSix));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_SEVEN), TJava.Box(Self.itemSeven));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_EIGHT), TJava.Box(Self.itemEight));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_NINE), TJava.Box(Self.itemNine));
        values.put(TJava.Box(TBasicGroupItemData.ITEM_TEN), TJava.Box(Self.itemTen));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TBasicGroupItemsRequestHelper.insert: string;
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
            values.add(TJava.Box(Self.itemOne));
            values.add(TJava.Box(Self.itemTwo));
            values.add(TJava.Box(Self.itemThree));
            values.add(TJava.Box(Self.itemFour));
            values.add(TJava.Box(Self.itemFive));
            values.add(TJava.Box(Self.itemSix));
            values.add(TJava.Box(Self.itemSeven));
            values.add(TJava.Box(Self.itemEight));
            values.add(TJava.Box(Self.itemNine));
            values.add(TJava.Box(Self.itemTen));
            values.add(TJava.Box(time));
            values.add(TJava.Box(time));
            TBasicGroupItemsEntityFactory.getInstance().getBasicGroupItemsEntityInstance().insert(values);
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
    

function TBasicGroupItemsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            TBasicGroupItemsEntityFactory.getInstance().getBasicGroupItemsEntityInstance().delete_(Self.id);
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
    

function TBasicGroupItemsRequestHelper.update: string;
var
  success: string;
  values: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Update Pricing Successful';
            values := Self.getHashMap();
            TBasicGroupItemsEntityFactory.getInstance().getBasicGroupItemsEntityInstance().update(values);
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

