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
unit BasicItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Money, LogUtil, CommonStrings, BasicItemData, ItemInterface;

type
  {AB:TYPES}
  TBasicItem = class(TInterfacedObject, IItemInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    basicItemData: TBasicItemData;
    itemId: string;
    number: string;
    inBaskets: string;
    weight: string;
    enabled: string;
    newOrUsed: string;
    summary: string;
    distributor: string;
    idUsedByDistributor: string;
    producedBy: string;
    productionDate: string;
    startProductionDate: string;
    description: string;
    keywords: string;
    category: string;
    type_: string;
    smallImage: string;
    mediumImage: string;
    largeImage: string;
    price: TMoney;
    comment: string;
    customs: string;
    downloads: string;
    groups: string;
    options: string;
    permissions: string;
    specials: string;
    downloadable: Boolean;
    timeEntered: string;
    lastModified: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(itemHashMap: TJavaHashMap<TObject, TObject>); overload;
        constructor Create; overload;
        procedure setId(itemId: string); virtual;
        procedure setNumber(number: string); virtual;
        procedure setInBaskets(value: string); virtual;
        procedure setWeight(value: string); virtual;
        procedure setNewOrUsed(value: string); virtual;
        procedure setSummary(value: string); virtual;
        procedure setDistributor(value: string); virtual;
        procedure setIdUsedByDistributor(value: string); virtual;
        procedure setProducedBy(value: string); virtual;
        procedure setProductionDate(value: string); virtual;
        procedure setStartProductionDate(value: string); virtual;
        procedure setDescription(value: string); virtual;
        procedure setKeywords(value: string); virtual;
        procedure setCategory(value: string); virtual;
        procedure setType(value: string); virtual;
        procedure setSmallImage(value: string); virtual;
        procedure setMediumImage(value: string); virtual;
        procedure setLargeImage(value: string); virtual;
        procedure setTimeEntered(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setPrice(value: TMoney); virtual;
        procedure setComment(value: string); virtual;
        procedure setCustoms(value: string); virtual;
        procedure setDownloads(value: string); virtual;
        procedure setGroups(value: string); virtual;
        procedure setOptions(value: string); virtual;
        procedure setPermissions(value: string); virtual;
        procedure setSpecials(value: string); virtual;
        procedure setEnabled(value: string); virtual;
        function getId: string; virtual;
        function getNumber: string; virtual;
        function getInBaskets: string; virtual;
        function getWeight: string; virtual;
        function getNewOrUsed: string; virtual;
        function getSummary: string; virtual;
        function getDistributor: string; virtual;
        function getIdUsedByDistributor: string; virtual;
        function getProducedBy: string; virtual;
        function getProductionDate: string; virtual;
        function getStartProductionDate: string; virtual;
        function getDescription: string; virtual;
        function getKeywords: string; virtual;
        function getCategory: string; virtual;
        function getType: string; virtual;
        function getSmallImage: string; virtual;
        function getMediumImage: string; virtual;
        function getLargeImage: string; virtual;
        function getTimeEntered: string; virtual;
        function getLastModified: string; virtual;
        function getPrice: TMoney; virtual;
        function getComment: string; virtual;
        function getCustoms: string; virtual;
        function getDownloads: string; virtual;
        function getGroups: string; virtual;
        function getOptions: string; virtual;
        function getPermissions: string; virtual;
        function getSpecials: string; virtual;
        procedure setDownloadable(downloadable: Boolean); virtual;
        function isDownloadable: Boolean; virtual;
        function getEnabled: string; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, MoneyException, ProductIdGenerator, StdUtil, StringUtil, CommonPhoneStrings;


{AB:CODE}

procedure TBasicItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TBasicItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicItem.Create(itemHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'Constructor(HashMap)');
        end;
        Self.itemId := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.ID))));
        Self.number := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.NUMBER))));
        Self.inBaskets := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.INBASKETS))));
        Self.weight := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.WEIGHT))));
        Self.enabled := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TEntryData.getInstance().ENABLE))));
        Self.newOrUsed := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.NEWORUSED))));
        Self.summary := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.SUMMARY))));
        Self.distributor := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.DISTRIBUTOR))));
        Self.idUsedByDistributor := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.IDUSEDBYDISTRIBUTOR))));
        Self.producedBy := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.PRODUCEDBY))));
        Self.productionDate := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.PRODUCTIONDATE))));
        Self.startProductionDate := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.STARTPRODUCTIONDATE))));
        Self.description := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.DESCRIPTION))));
        Self.keywords := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.KEYWORDS))));
        Self.category := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.CATEGORY))));
        Self.type_ := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.TYPE_))));
        Self.smallImage := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.SMALLIMAGE))));
        Self.mediumImage := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.MEDIUMIMAGE))));
        Self.largeImage := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.LARGEIMAGE))));
        Self.timeEntered := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TEntryData.getInstance().TIMECREATED))));
        Self.lastModified := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TEntryData.getInstance().LASTMODIFIED))));
        Self.price := TMoney.Create(TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.PRICE)))));
        Self.comment := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.COMMENT))));
        Self.customs := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.CUSTOMS))));
        Self.setDownloads(TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.DOWNLOADS)))));
        Self.groups := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.GROUPS))));
        Self.options := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.OPTIONS))));
        Self.permissions := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.PERMISSIONS))));
        Self.specials := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.SPECIALS))));
end;
    

constructor TBasicItem.Create;
var
  EMPTY: string;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        EMPTY := TStringUtil.getInstance().EMPTY_STRING;
        Self.itemId := TProductIdGenerator.Create().getNext();
        Self.number := TCommonPhoneStrings.getInstance().ZERO;
        Self.inBaskets := EMPTY;
        Self.weight := EMPTY;
        Self.enabled := EMPTY;
        Self.newOrUsed := EMPTY;
        Self.summary := EMPTY;
        Self.distributor := EMPTY;
        Self.idUsedByDistributor := EMPTY;
        Self.producedBy := EMPTY;
        Self.productionDate := EMPTY;
        Self.startProductionDate := EMPTY;
        Self.description := EMPTY;
        Self.keywords := EMPTY;
        Self.category := EMPTY;
        Self.type_ := EMPTY;
        Self.smallImage := EMPTY;
        Self.mediumImage := EMPTY;
        Self.largeImage := EMPTY;
        Self.timeEntered := EMPTY;
        Self.lastModified := EMPTY;
        Self.price := TMoney.Create();
        Self.comment := EMPTY;
        Self.customs := EMPTY;
        Self.setDownloads(EMPTY);
        Self.groups := EMPTY;
        Self.options := EMPTY;
        Self.permissions := EMPTY;
        Self.specials := EMPTY;
end;
    

procedure TBasicItem.setId(itemId: string);
begin
        Self.itemId := itemId;
end;
    

procedure TBasicItem.setNumber(number: string);
begin
        Self.number := number;
end;
    

procedure TBasicItem.setInBaskets(value: string);
begin
        Self.inBaskets := value;
end;
    

procedure TBasicItem.setWeight(value: string);
begin
        Self.weight := value;
end;
    

procedure TBasicItem.setNewOrUsed(value: string);
begin
        Self.newOrUsed := value;
end;
    

procedure TBasicItem.setSummary(value: string);
begin
        Self.summary := value;
end;
    

procedure TBasicItem.setDistributor(value: string);
begin
        Self.distributor := value;
end;
    

procedure TBasicItem.setIdUsedByDistributor(value: string);
begin
        Self.idUsedByDistributor := value;
end;
    

procedure TBasicItem.setProducedBy(value: string);
begin
        Self.producedBy := value;
end;
    

procedure TBasicItem.setProductionDate(value: string);
begin
        Self.productionDate := value;
end;
    

procedure TBasicItem.setStartProductionDate(value: string);
begin
        Self.startProductionDate := value;
end;
    

procedure TBasicItem.setDescription(value: string);
begin
        Self.description := value;
end;
    

procedure TBasicItem.setKeywords(value: string);
begin
        Self.keywords := value;
end;
    

procedure TBasicItem.setCategory(value: string);
begin
        Self.category := value;
end;
    

procedure TBasicItem.setType(value: string);
begin
        Self.type_ := value;
end;
    

procedure TBasicItem.setSmallImage(value: string);
begin
        Self.smallImage := value;
end;
    

procedure TBasicItem.setMediumImage(value: string);
begin
        Self.mediumImage := value;
end;
    

procedure TBasicItem.setLargeImage(value: string);
begin
        Self.largeImage := value;
end;
    

procedure TBasicItem.setTimeEntered(value: string);
begin
        Self.timeEntered := value;
end;
    

procedure TBasicItem.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

procedure TBasicItem.setPrice(value: TMoney);
begin
        Self.price := value;
end;
    

procedure TBasicItem.setComment(value: string);
begin
        Self.comment := value;
end;
    

procedure TBasicItem.setCustoms(value: string);
begin
        Self.customs := value;
end;
    

procedure TBasicItem.setDownloads(value: string);
var
  downloadInteger: Integer;
begin
        Self.downloads := value;
        if not ((Self.downloads = '')) then begin
            downloadInteger := IntToStr(Self.downloads);
            if ((downloadInteger)) <> (0) then begin
                Self.setDownloadable(True);
            end;
        end;
end;
    

procedure TBasicItem.setGroups(value: string);
begin
        Self.groups := value;
end;
    

procedure TBasicItem.setOptions(value: string);
begin
        Self.options := value;
end;
    

procedure TBasicItem.setPermissions(value: string);
begin
        Self.permissions := value;
end;
    

procedure TBasicItem.setSpecials(value: string);
begin
        Self.specials := value;
end;
    

procedure TBasicItem.setEnabled(value: string);
begin
        Self.enabled := value;
end;
    

function TBasicItem.getId: string;
begin
        Exit(Self.itemId);
end;
    

function TBasicItem.getNumber: string;
begin
        Exit(Self.number);
end;
    

function TBasicItem.getInBaskets: string;
begin
        Exit(Self.inBaskets);
end;
    

function TBasicItem.getWeight: string;
begin
        Exit(Self.weight);
end;
    

function TBasicItem.getNewOrUsed: string;
begin
        Exit(Self.newOrUsed);
end;
    

function TBasicItem.getSummary: string;
begin
        Exit(Self.summary);
end;
    

function TBasicItem.getDistributor: string;
begin
        Exit(Self.distributor);
end;
    

function TBasicItem.getIdUsedByDistributor: string;
begin
        Exit(Self.idUsedByDistributor);
end;
    

function TBasicItem.getProducedBy: string;
begin
        Exit(Self.producedBy);
end;
    

function TBasicItem.getProductionDate: string;
begin
        Exit(Self.productionDate);
end;
    

function TBasicItem.getStartProductionDate: string;
begin
        Exit(Self.startProductionDate);
end;
    

function TBasicItem.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TBasicItem.getKeywords: string;
begin
        Exit(Self.keywords);
end;
    

function TBasicItem.getCategory: string;
begin
        Exit(Self.category);
end;
    

function TBasicItem.getType: string;
begin
        Exit(Self.type_);
end;
    

function TBasicItem.getSmallImage: string;
begin
        Exit(Self.smallImage);
end;
    

function TBasicItem.getMediumImage: string;
begin
        Exit(Self.mediumImage);
end;
    

function TBasicItem.getLargeImage: string;
begin
        Exit(Self.largeImage);
end;
    

function TBasicItem.getTimeEntered: string;
begin
        Exit(Self.timeEntered);
end;
    

function TBasicItem.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

function TBasicItem.getPrice: TMoney;
begin
        Exit(Self.price);
end;
    

function TBasicItem.getComment: string;
begin
        Exit(Self.comment);
end;
    

function TBasicItem.getCustoms: string;
begin
        Exit(Self.customs);
end;
    

function TBasicItem.getDownloads: string;
begin
        Exit(Self.downloads);
end;
    

function TBasicItem.getGroups: string;
begin
        Exit(Self.groups);
end;
    

function TBasicItem.getOptions: string;
begin
        Exit(Self.options);
end;
    

function TBasicItem.getPermissions: string;
begin
        Exit(Self.permissions);
end;
    

function TBasicItem.getSpecials: string;
begin
        Exit(Self.specials);
end;
    

procedure TBasicItem.setDownloadable(downloadable: Boolean);
begin
        Self.downloadable := downloadable;
end;
    

function TBasicItem.isDownloadable: Boolean;
begin
        Exit(Self.downloadable);
end;
    

function TBasicItem.getEnabled: string;
begin
        Exit(Self.enabled);
end;
    

function TBasicItem.getTotal: TMoney;
var
  itemTotal: TMoney;
begin
        itemTotal := TMoney.Create(Self.price);
        itemTotal.multiply(StrToInt(Self.number));
        Exit(itemTotal);
end;
    

function TBasicItem.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toHashMap');
        end;
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(Self.basicItemData.ID), TJava.Box(Self.itemId));
        hashMap_.put(TJava.Box(Self.basicItemData.NUMBER), TJava.Box(Self.number));
        hashMap_.put(TJava.Box(Self.basicItemData.INBASKETS), TJava.Box(Self.inBaskets));
        hashMap_.put(TJava.Box(Self.basicItemData.WEIGHT), TJava.Box(Self.weight));
        hashMap_.put(TJava.Box(TEntryData.getInstance().ENABLE), TJava.Box(Self.enabled));
        hashMap_.put(TJava.Box(Self.basicItemData.NEWORUSED), TJava.Box(Self.newOrUsed));
        hashMap_.put(TJava.Box(Self.basicItemData.SUMMARY), TJava.Box(Self.summary));
        hashMap_.put(TJava.Box(Self.basicItemData.DISTRIBUTOR), TJava.Box(Self.distributor));
        hashMap_.put(TJava.Box(Self.basicItemData.IDUSEDBYDISTRIBUTOR), TJava.Box(Self.idUsedByDistributor));
        hashMap_.put(TJava.Box(Self.basicItemData.PRODUCEDBY), TJava.Box(Self.producedBy));
        hashMap_.put(TJava.Box(Self.basicItemData.PRODUCTIONDATE), TJava.Box(Self.productionDate));
        hashMap_.put(TJava.Box(Self.basicItemData.STARTPRODUCTIONDATE), TJava.Box(Self.startProductionDate));
        hashMap_.put(TJava.Box(Self.basicItemData.DESCRIPTION), TJava.Box(Self.description));
        hashMap_.put(TJava.Box(Self.basicItemData.KEYWORDS), TJava.Box(Self.keywords));
        hashMap_.put(TJava.Box(Self.basicItemData.CATEGORY), TJava.Box(Self.category));
        hashMap_.put(TJava.Box(Self.basicItemData.TYPE_), TJava.Box(Self.type_));
        hashMap_.put(TJava.Box(Self.basicItemData.SMALLIMAGE), TJava.Box(Self.smallImage));
        hashMap_.put(TJava.Box(Self.basicItemData.MEDIUMIMAGE), TJava.Box(Self.mediumImage));
        hashMap_.put(TJava.Box(Self.basicItemData.LARGEIMAGE), TJava.Box(Self.largeImage));
        calendar := TCalendar.getInstance();
        time := calendar.getTimeInMillis().toString();
        hashMap_.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        hashMap_.put(TJava.Box(Self.basicItemData.PRICE), TJava.Box(Self.price.toString()));
        hashMap_.put(TJava.Box(Self.basicItemData.COMMENT), TJava.Box(Self.comment));
        hashMap_.put(TJava.Box(Self.basicItemData.CUSTOMS), TJava.Box(Self.customs));
        hashMap_.put(TJava.Box(Self.basicItemData.DOWNLOADS), TJava.Box(Self.getDownloads()));
        hashMap_.put(TJava.Box(Self.basicItemData.GROUPS), TJava.Box(Self.groups));
        hashMap_.put(TJava.Box(Self.basicItemData.OPTIONS), TJava.Box(Self.options));
        hashMap_.put(TJava.Box(Self.basicItemData.PERMISSIONS), TJava.Box(Self.permissions));
        hashMap_.put(TJava.Box(Self.basicItemData.SPECIALS), TJava.Box(Self.specials));
        Exit(hashMap_);
end;
    

function TBasicItem.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toVector');
        end;
        values := TBasicArrayListD.Create();
        values.add(TJava.Box(Self.itemId));
        values.add(TJava.Box(Self.number));
        values.add(TJava.Box(Self.inBaskets));
        values.add(TJava.Box(Self.weight));
        values.add(TJava.Box(Self.enabled));
        values.add(TJava.Box(Self.newOrUsed));
        values.add(TJava.Box(Self.summary));
        values.add(TJava.Box(Self.distributor));
        values.add(TJava.Box(Self.idUsedByDistributor));
        values.add(TJava.Box(Self.producedBy));
        values.add(TJava.Box(Self.productionDate));
        values.add(TJava.Box(Self.startProductionDate));
        values.add(TJava.Box(Self.description));
        values.add(TJava.Box(Self.keywords));
        values.add(TJava.Box(Self.category));
        values.add(TJava.Box(Self.type_));
        values.add(TJava.Box(Self.getSmallImage()));
        values.add(TJava.Box(Self.getMediumImage()));
        values.add(TJava.Box(Self.getLargeImage()));
        calendar := TCalendar.getInstance();
        time := calendar.getTimeInMillis().toString();
        values.add(TJava.Box(time));
        values.add(TJava.Box(time));
        values.add(TJava.Box(Self.price.toString()));
        values.add(TJava.Box(Self.comment));
        values.add(TJava.Box(Self.customs));
        values.add(TJava.Box(Self.getDownloads()));
        values.add(TJava.Box(Self.groups));
        values.add(TJava.Box(Self.options));
        values.add(TJava.Box(Self.permissions));
        values.add(TJava.Box(Self.specials));
        Exit(values);
end;
    

// throws Exception
function TBasicItem.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getId())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

