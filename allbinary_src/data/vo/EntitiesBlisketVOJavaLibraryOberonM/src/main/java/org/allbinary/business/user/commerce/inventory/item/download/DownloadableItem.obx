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
unit DownloadableItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TDownloadableItem = class(TObject)
  public
    id: string;
    basicItemId: string;
    enabled: string;
    system: string;
    platform: string;
    specialName: string;
    version: string;
    changes: string;
    licenseFile: string;
    file_: string;
    size: Int64;
    validTime: Int64;
    retries: string;
    procedure InitFields;
        constructor Create(id: string); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getId: string; virtual;
        function getSystem: string; virtual;
        function getPlatform: string; virtual;
        function getSpecialName: string; virtual;
        function getVersion: string; virtual;
        function getChanges: string; virtual;
        function getLicenseFile: string; virtual;
        function getFile: string; virtual;
        function getSize: Int64; virtual;
        function getValidTime: Int64; virtual;
        function getRetries: string; virtual;
  end;

implementation
uses
  DownloadItemData, BasicArrayListD, EntryData, BasicItemData, ProductIdGenerator, StdUtil, StringUtil, TimeUtil;


{AB:CODE}

procedure TDownloadableItem.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TDownloadableItem.Create(id: string);
var
  EMPTY_STRING: string;
begin
    inherited Create;
    InitFields;
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        Self.id := TProductIdGenerator.Create().getNext();
        Self.basicItemId := id;
        Self.enabled := TEntryData.getInstance().YES;
        Self.system := 'Java';
        Self.platform := 'Android';
        Self.specialName := EMPTY_STRING;
        Self.version := EMPTY_STRING;
        Self.changes := EMPTY_STRING;
        Self.licenseFile := EMPTY_STRING;
        Self.file_ := EMPTY_STRING;
        Self.size := IntToStr(0);
        Self.validTime := IntToStr(0);
        Self.retries := EMPTY_STRING;
end;
    

constructor TDownloadableItem.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  value: string;
  validTime: string;
  totalYears: string;
  totalMonths: string;
  totalDays: string;
  totalHours: string;
  totalMinutes: string;
  totalSeconds: string;
  totalTime: Int64;
begin
    inherited Create;
    InitFields;
        Self.id := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.ID))));
        Self.basicItemId := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TBasicItemData.getInstance().ID))));
        Self.enabled := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().ENABLE))));
        Self.system := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.SYSTEM))));
        Self.platform := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.PLATFORM))));
        Self.specialName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.SPECIAL_NAME))));
        Self.version := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VERSION))));
        Self.changes := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.CHANGES))));
        Self.licenseFile := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.LICENSE_FILE))));
        Self.file_ := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.FILE_))));
        value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.SIZE))));
        if not ((value = '')) then begin
            Self.size := IntToStr(value);
        end else begin
            Self.size := 0;
        end;
        validTime := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME))));
        if not ((validTime = '')) then begin
            Self.validTime := IntToStr(validTime);
        end else begin
            totalYears := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_YEARS))));
            totalMonths := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_MONTHS))));
            totalDays := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_DAYS))));
            totalHours := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_HOURS))));
            totalMinutes := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_MINUTES))));
            totalSeconds := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.VALID_TIME_SECONDS))));
            totalTime := TTimeUtil.getInstance().getTotalTime(totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds);
            Self.validTime := totalTime;
        end;
        Self.retries := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.RETRIES))));
end;
    

function TDownloadableItem.toVector: TBasicArrayList;
var
  calendar: TCalendar;
  time: string;
  values: TBasicArrayList;
begin
        calendar := TCalendar.getInstance();
        time := calendar.getTimeInMillis().toString();
        values := TBasicArrayListD.Create();
        values.add(TJava.Box(Self.getId()));
        values.add(TJava.Box(Self.basicItemId));
        values.add(TJava.Box(Self.enabled));
        values.add(TJava.Box(Self.getSpecialName()));
        values.add(TJava.Box(Self.getVersion()));
        values.add(TJava.Box(Self.getChanges()));
        values.add(TJava.Box(Self.getSystem()));
        values.add(TJava.Box(Self.getPlatform()));
        values.add(TJava.Box(Self.getLicenseFile()));
        values.add(TJava.Box(Self.getFile()));
        values.add(TJava.Box(Self.getSize().toString()));
        values.add(TJava.Box(Self.getValidTime().toString()));
        values.add(TJava.Box(Self.getRetries()));
        values.add(TJava.Box(time));
        values.add(TJava.Box(time));
        Exit(values);
end;
    

function TDownloadableItem.toHashMap: TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(TDownloadItemData.ID), TJava.Box(Self.getId()));
        values.put(TJava.Box(TBasicItemData.getInstance().ID), TJava.Box(Self.basicItemId));
        values.put(TJava.Box(TEntryData.getInstance().ENABLE), TJava.Box(Self.enabled));
        values.put(TJava.Box(TDownloadItemData.SYSTEM), TJava.Box(Self.getSystem()));
        values.put(TJava.Box(TDownloadItemData.PLATFORM), TJava.Box(Self.getPlatform()));
        values.put(TJava.Box(TDownloadItemData.SPECIAL_NAME), TJava.Box(Self.getSpecialName()));
        values.put(TJava.Box(TDownloadItemData.VERSION), TJava.Box(Self.getVersion()));
        values.put(TJava.Box(TDownloadItemData.CHANGES), TJava.Box(Self.getChanges()));
        values.put(TJava.Box(TDownloadItemData.LICENSE_FILE), TJava.Box(Self.getLicenseFile()));
        values.put(TJava.Box(TDownloadItemData.FILE_), TJava.Box(Self.getFile()));
        values.put(TJava.Box(TDownloadItemData.SIZE), TJava.Box(Self.getSize().toString()));
        values.put(TJava.Box(TDownloadItemData.VALID_TIME), TJava.Box(Self.getValidTime().toString()));
        values.put(TJava.Box(TDownloadItemData.RETRIES), TJava.Box(Self.getRetries()));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

function TDownloadableItem.getId: string;
begin
        Exit(Self.id);
end;
    

function TDownloadableItem.getSystem: string;
begin
        Exit(Self.system);
end;
    

function TDownloadableItem.getPlatform: string;
begin
        Exit(Self.platform);
end;
    

function TDownloadableItem.getSpecialName: string;
begin
        Exit(Self.specialName);
end;
    

function TDownloadableItem.getVersion: string;
begin
        Exit(Self.version);
end;
    

function TDownloadableItem.getChanges: string;
begin
        Exit(Self.changes);
end;
    

function TDownloadableItem.getLicenseFile: string;
begin
        Exit(Self.licenseFile);
end;
    

function TDownloadableItem.getFile: string;
begin
        Exit(Self.file_);
end;
    

function TDownloadableItem.getSize: Int64;
begin
        Exit(Self.size);
end;
    

function TDownloadableItem.getValidTime: Int64;
begin
        Exit(Self.validTime);
end;
    

function TDownloadableItem.getRetries: string;
begin
        Exit(Self.retries);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

