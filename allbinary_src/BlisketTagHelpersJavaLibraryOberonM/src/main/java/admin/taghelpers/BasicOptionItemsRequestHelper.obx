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
unit BasicOptionItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TBasicOptionItemsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    id: string;
    optionOneTitle: string;
    defaultOptionItem: string;
    defaultOptionValue: string;
    optionItem: TBasicArrayList;
    optionValue: TBasicArrayList;
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
  BasicArrayListD, EntryData, BasicOptionItemData, BasicOptionItemsEntityFactory, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TBasicOptionItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  
  
end;
    

constructor TBasicOptionItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TBasicOptionItemsRequestHelper.getFormData;
begin
        Self.optionItem := TBasicArrayListD.Create();
        Self.optionValue := TBasicArrayListD.Create();
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
        Self.optionOneTitle := Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_TITLE);
        Self.defaultOptionItem := Self.request.getParameter(TBasicOptionItemData.DEFAULT_OPTION_ITEM);
        Self.defaultOptionValue := Self.request.getParameter(TBasicOptionItemData.DEFAULT_OPTION_VALUE);
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_ONE_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_ONE_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_TWO_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_TWO_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_THREE_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_THREE_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_FOUR_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_FOUR_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_FIVE_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_FIVE_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_SIX_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_SIX_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_SEVEN_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_SEVEN_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_EIGHT_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_EIGHT_VALUE)));
        Self.optionItem.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_NINE_ITEM)));
        Self.optionValue.add(TJava.Box(Self.request.getParameter(TBasicOptionItemData.OPTION_ONE_NINE_VALUE)));
        Self.timeEntered := Self.request.getParameter(TEntryData.getInstance().TIMECREATED);
        Self.lastModified := Self.request.getParameter(TEntryData.getInstance().LASTMODIFIED);
end;
    

function TBasicOptionItemsRequestHelper.getHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.id));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_ONE_ITEM), TJava.Box(Self.optionItem.get(0)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_ONE_VALUE), TJava.Box(Self.optionValue.get(0)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_TWO_ITEM), TJava.Box(Self.optionItem.get(1)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_TWO_VALUE), TJava.Box(Self.optionValue.get(1)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_THREE_ITEM), TJava.Box(Self.optionItem.get(2)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_THREE_VALUE), TJava.Box(Self.optionValue.get(2)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_FOUR_ITEM), TJava.Box(Self.optionItem.get(3)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_FOUR_VALUE), TJava.Box(Self.optionValue.get(3)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_FIVE_ITEM), TJava.Box(Self.optionItem.get(4)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_FIVE_VALUE), TJava.Box(Self.optionValue.get(4)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_SIX_ITEM), TJava.Box(Self.optionItem.get(5)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_SIX_VALUE), TJava.Box(Self.optionValue.get(5)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_SEVEN_ITEM), TJava.Box(Self.optionItem.get(6)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_SEVEN_VALUE), TJava.Box(Self.optionValue.get(6)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_EIGHT_ITEM), TJava.Box(Self.optionItem.get(7)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_EIGHT_VALUE), TJava.Box(Self.optionValue.get(7)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_NINE_ITEM), TJava.Box(Self.optionItem.get(8)));
        values.put(TJava.Box(TBasicOptionItemData.OPTION_ONE_NINE_VALUE), TJava.Box(Self.optionValue.get(8)));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TBasicOptionItemsRequestHelper.insert: string;
var
  calendar: TCalendar;
  time: string;
  values: TBasicArrayList;
  size: Integer;
  index: Integer;
  success: string;
  error: string;
begin
        try
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(Self.id));
            size := Self.optionValue.size();
            for index := 0 to size - 1 do begin
                values.add(TJava.Box(Self.optionValue.get(index)));
                values.add(TJava.Box(Self.optionItem.get(index)));
            end;
            values.add(TJava.Box(time));
            values.add(TJava.Box(time));
            TBasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().insert(values);
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
    

function TBasicOptionItemsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            TBasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().delete_(Self.id);
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
    

function TBasicOptionItemsRequestHelper.update: string;
var
  success: string;
  values: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Update Pricing Successful';
            values := Self.getHashMap();
            TBasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().update(values);
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

