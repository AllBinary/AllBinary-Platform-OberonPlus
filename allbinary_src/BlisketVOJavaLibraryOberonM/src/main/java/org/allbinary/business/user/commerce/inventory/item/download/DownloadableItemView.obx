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
unit DownloadableItemView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node, DownloadableItem;

type
  {AB:TYPES}
  TDownloadableItemView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    downloadableItem: TDownloadableItem;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(downloadableItem_: TDownloadableItem);
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  DownloadItemData, ModDomHelper, StringUtil;


{AB:CODE}

procedure TDownloadableItemView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TDownloadableItemView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDownloadableItemView.Create(downloadableItem_: TDownloadableItem);
begin
    inherited Create;
    InitFields;
        Self.downloadableItem := downloadableItem_;
end;
    

// throws Exception
function TDownloadableItemView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  totalTime: Int64;
  calendar: TCalendar;
  year: Integer;
  month: Integer;
  day: Integer;
  hour: Integer;
  minute: Integer;
  second: Integer;
  yearDelta: Integer;
  monthDelta: Integer;
  dayDelta: Integer;
  hourDelta: Integer;
  minuteDelta: Integer;
  secondDelta: Integer;
  keySet: ISet;
  node_: TNode;
  stringUtil_: TStringUtil;
  nameArray: TArray<TObject>;
  size: Integer;
  name: string;
  value: string;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toXmlNode');
        end;
        hashMap_ := Self.downloadableItem.toHashMap();
        totalTime := Self.downloadableItem.getValidTime().longValue();
        calendar := TCalendar.getInstance();
        year := calendar.get(TCalendar.YEAR);
        month := calendar.get(TCalendar.MONTH);
        day := calendar.get(TCalendar.DAY_OF_MONTH);
        hour := calendar.get(TCalendar.HOUR);
        minute := calendar.get(TCalendar.MINUTE);
        second := calendar.get(TCalendar.SECOND);
        calendar.setTimeInMillis((calendar.getTimeInMillis()) + (totalTime));
        yearDelta := calendar.get(TCalendar.YEAR);
        monthDelta := calendar.get(TCalendar.MONTH);
        dayDelta := calendar.get(TCalendar.DAY_OF_MONTH);
        hourDelta := calendar.get(TCalendar.HOUR);
        minuteDelta := calendar.get(TCalendar.MINUTE);
        secondDelta := calendar.get(TCalendar.SECOND);
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_YEARS), TJava.Box(IntToStr((yearDelta) - (year))));
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_MONTHS), TJava.Box(IntToStr((monthDelta) - (month))));
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_DAYS), TJava.Box(IntToStr((dayDelta) - (day))));
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_HOURS), TJava.Box(IntToStr((hourDelta) - (hour))));
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_MINUTES), TJava.Box(IntToStr((minuteDelta) - (minute))));
        hashMap_.put(TJava.Box(TDownloadItemData.VALID_TIME_SECONDS), TJava.Box(IntToStr((secondDelta) - (second))));
        keySet := hashMap_.keySet();
        node_ := document_.createElement(TDownloadItemData.NAME);
        stringUtil_ := TStringUtil.getInstance();
        nameArray := keySet.toArray();
        size := System.Length(nameArray);
        for index := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(nameArray[index]));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
            value := stringUtil_.getNonNull(value);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        Exit(node_);
end;
    

function TDownloadableItemView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDownloadableItemView.view: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

