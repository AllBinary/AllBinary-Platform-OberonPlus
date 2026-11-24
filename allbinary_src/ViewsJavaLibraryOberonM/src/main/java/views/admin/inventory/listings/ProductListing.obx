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
// package views.admin.inventory.listings
unit ProductListing;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, BasicItemData, StoreFrontsEntity, StaticPagesEntity, InventoryEntity, LogUtil, SearchRequest, Directory, AbPath, ProductListingInterface;

type
  {AB:TYPES}
  TProductListing = class(TInterfacedObject, IProductListingInterface)
  public
    logUtil: TLogUtil;
    directory: TDirectory;
    basicItemData: TBasicItemData;
    storeFronts: TStoreFrontsEntity;
    staticPages: TStaticPagesEntity;
    inventory: TInventoryEntity;
    searchRequest: TSearchRequest;
    INVENTORY_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(searchRequest_: TSearchRequest);
        function getHashSet(storeFront: IStoreFrontInterface): THashSet;
        procedure savePage(file_: string; data: string);
        procedure create_(keywordData: string; keywordFilenameHashMap: TJavaHashMap<TObject, TObject>; vector: TBasicArrayList; staticPath: TAbPath);
        procedure addStaticPageInfoToDatabase(storeFront: IStoreFrontInterface; keywordFilenameHashMap: TJavaHashMap<TObject, TObject>);
        function generateAll: string; overload; virtual;
        function generateAll(storeName: string): string; overload; virtual;
  end;

implementation
uses
  BasicArrayListD, GLOBALS2, URLGLOBALS, StdUtil, SearchParams, AbDataOutputStream, DataOutputStreamFactory, InputOutputTypeData, StreamUtil, AbFile, AbPathData, SpecialCharacterUtil, StringMaker, StringUtil, Replace, UniqueTokens, AbeClientInformationInterface, ServiceClientInformationInterfaceFactory, CommonPhoneStrings, CommonSeps, InventoryColumnUtil, InventorySearchUtil;


{AB:CODE}

procedure TProductListing.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  Self.INVENTORY_ := '.InventoryView';
end;

function TProductListing.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TProductListing.Create(searchRequest_: TSearchRequest);
begin
    inherited Create;
    InitFields;
        Self.searchRequest := searchRequest_;
        Self.storeFronts := TStoreFrontsEntity.Create();
        Self.staticPages := TStaticPagesEntity.Create();
        Self.inventory := TInventoryEntity.Create();
end;
    

// throws Exception
function TProductListing.getHashSet(storeFront: IStoreFrontInterface): THashSet;
var
  inventoryColumnUtil_: TInventoryColumnUtil;
  keywords: TBasicArrayList;
  subStoreVector: TBasicArrayList;
  size: Integer;
  subStore: string;
  substoreKeywords: TBasicArrayList;
  index: Integer;
  uniqueTokens_: TUniqueTokens;
  keywordHashSet: THashSet;
begin
        inventoryColumnUtil_ := TInventoryColumnUtil.getInstance();
        keywords := inventoryColumnUtil_.getColumnWhereLike(Self.inventory, storeFront.getCategoryPath(), Self.basicItemData.KEYWORDS);
        subStoreVector := storeFront.getSubStores();
        size := subStoreVector.size();
        for index := 0 to size - 1 do begin
            subStore := TJava.UnboxString(TJava.ToObject(subStoreVector.get(index)));
            substoreKeywords := inventoryColumnUtil_.getColumnWhereLike(Self.inventory, TJava.ToString(TAbPathData.getInstance().SEPARATOR) + subStore, Self.basicItemData.CATEGORY);
            keywords.addAllList(substoreKeywords);
        end;
        uniqueTokens_ := TUniqueTokens.Create();
        keywordHashSet := uniqueTokens_.getWhithoutDashesAndSkipNumberOnlyTokens(keywords);
        Exit(keywordHashSet);
end;
    

// throws Exception
procedure TProductListing.savePage(file_: string; data: string);
var
  newFile: TAbFile;
  idOutData: TAbDataOutputStream;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING) then begin
            Self.logUtil.putF('Creating File: ' + file_, TJava.Box(Self), 'generateAll()');
        end;
        newFile := TAbFile.createAbFile(file_);
        if newFile.exists() then begin
            newFile.delete_();
        end;
        newFile.createNewFile();
        if newFile.exists() then begin
            idOutData := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile);
            idOutData.writeBytes(data);
            idOutData.flush();
            TStreamUtil.getInstance().close(idOutData);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING) then begin
                Self.logUtil.putF('Wrote Total Bytes: ' + IntToStr(newFile.length()), TJava.Box(Self), 'generateAll()');
            end;
        end else begin
            raise SysUtils.Exception.Create('Could Not Create: ' + file_);
        end;
end;
    

// throws Exception
procedure TProductListing.create_(keywordData: string; keywordFilenameHashMap: TJavaHashMap<TObject, TObject>; vector: TBasicArrayList; staticPath: TAbPath);
var
  stringBuffer: TStringMaker;
  hashMap_: TJavaHashMap<TObject, TObject>;
  pageName: string;
  searchParams_: TSearchParams;
  abeClientInformation: IAbeClientInformationInterface;
  inventorySearchUtil_: TInventorySearchUtil;
  productListingPages: TArray<string>;
  indexStr: string;
  file_: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        hashMap_ := TSpecialCharacterUtil.getHashMap();
        hashMap_.put(TJava.Box(TCommonSeps.getInstance().SPACE), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
        pageName := TReplace.Create(hashMap_).all(keywordData);
        searchParams_ := Self.searchRequest.getParams();
        searchParams_.add(Self.basicItemData.KEYWORDS, keywordData);
        searchParams_.setStartPage(TCommonPhoneStrings.getInstance().ZERO);
        Self.searchRequest.setParams(searchParams_);
        Self.searchRequest.setFileBaseName(pageName);
        abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
        inventorySearchUtil_ := TInventorySearchUtil.getInstance();
        productListingPages := inventorySearchUtil_.search(abeClientInformation, Self.searchRequest, vector);
        for index := 0 to System.Length(productListingPages) - 1 do begin
            if (productListingPages[index]) = ('') then begin
                Break;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING) then begin
                Self.logUtil.putF('Saving Listing: ' + IntToStr(index), TJava.Box(Self), 'generateAll()');
            end;
            indexStr := TStringUtil.getInstance().EMPTY_STRING;
            if (index) > (0) then begin
                indexStr := index.toString();
            end;
            keywordFilenameHashMap.put(TJava.Box(keywordData), TJava.Box(pageName + indexStr));
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(staticPath.toString());
            stringBuffer.append(pageName);
            stringBuffer.append(indexStr);
            stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
            stringBuffer.append(TInputOutputTypeData.getInstance().DEFAULT);
            file_ := stringBuffer.toString();
            if not (Self.directory.create_(staticPath)) then begin
                raise SysUtils.Exception.Create('Could Not Create Directory: ' + TJava.ToString(staticPath));
            end;
            Self.savePage(file_, productListingPages[index]);
        end;
end;
    

procedure TProductListing.addStaticPageInfoToDatabase(storeFront: IStoreFrontInterface; keywordFilenameHashMap: TJavaHashMap<TObject, TObject>);
var
  keywordHashSet: ISet;
  keywordArray: TArray<TObject>;
  size: Integer;
  insertVector: TBasicArrayList;
  keywordData: string;
  fileName: string;
  index: Integer;
begin
        keywordHashSet := keywordFilenameHashMap.keySet();
        keywordArray := keywordHashSet.toArray();
        size := System.Length(keywordArray);
        for index := 0 to size - 1 do begin
            insertVector := TBasicArrayListD.Create();
            keywordData := TJava.UnboxString(TJava.ToObject(keywordArray[index]));
            fileName := TJava.UnboxString(TJava.ToObject(keywordFilenameHashMap.get(TJava.Box(keywordData))));
            insertVector.add(TJava.Box(storeFront.getName()));
            insertVector.add(TJava.Box(keywordData));
            insertVector.add(TJava.Box(fileName));
            Self.staticPages.insert(insertVector);
        end;
end;
    

// throws Exception
function TProductListing.generateAll: string;
var
  storeFront: IStoreFrontInterface;
  stringBuffer: TStringMaker;
  staticPath: TAbPath;
  keywordHashSet: THashSet;
  keywordArray: TArray<TObject>;
  size: Integer;
  keywordFilenameHashMap: TJavaHashMap<TObject, TObject>;
  inventorySearchUtil_: TInventorySearchUtil;
  vector: TBasicArrayList;
  keywordData: string;
  index: Integer;
begin
        try
            storeFront := Self.searchRequest.getStoreFront();
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(storeFront.getName());
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            stringBuffer.append(storeFront.getStaticPath());
            staticPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING) then begin
                Self.logUtil.putF('Store Static Pages Path: ' + TJava.ToString(staticPath), TJava.Box(Self), 'generateAll()');
            end;
            keywordHashSet := Self.getHashSet(storeFront);
            keywordArray := keywordHashSet.toArray();
            size := System.Length(keywordArray);
            keywordFilenameHashMap := TStdUtil.getInstance().createHashMap();
            if (size) = (0) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Products For ');
                stringBuffer.append(storeFront.getName());
                stringBuffer.append(' Store Not Found');
                Exit(stringBuffer.toString());
            end;
            inventorySearchUtil_ := TInventorySearchUtil.getInstance();
            vector := inventorySearchUtil_.getBasicItemIdColumn(Self.searchRequest);
            for index := 0 to size - 1 do begin
                keywordData := TJava.UnboxString(TJava.ToObject(keywordArray[index]));
                if (System.Length(keywordData)) > (1) then begin
                    Self.create_(keywordData, keywordFilenameHashMap, vector, staticPath);
                end;
            end;
            Self.addStaticPageInfoToDatabase(storeFront, keywordFilenameHashMap);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Static Files Generated Successfully For ');
            stringBuffer.append(storeFront.getName());
            stringBuffer.append(' it used packages ');
            stringBuffer.append(storeFront.getPackageLocation());
            stringBuffer.append(Self.INVENTORY_);
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TProductListing.generateAll(storeName: string): string;
var
  stringBuffer: TStringMaker;
  storeFrontVector: TBasicArrayList;
  size: Integer;
  index: Integer;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (storeName) <> ('') then begin
                if (CompareStr(storeName, GLOBALS2.GENERATEALLSTORES)) <> (0) then begin
                    Self.searchRequest.setStoreFront(Self.storeFronts.getStoreFrontInterface(storeName));
                    stringBuffer.append(Self.generateAll());
                    stringBuffer.append('<br />');
                end else begin
                    storeFrontVector := Self.storeFronts.getStoreFrontNames();
                    size := storeFrontVector.size();
                    for index := 0 to size - 1 do begin
                        storeName := TJava.UnboxString(TJava.ToObject(storeFrontVector.get(index)));
                        Self.searchRequest.setStoreFront(Self.storeFronts.getStoreFrontInterface(storeName));
                        stringBuffer.append(Self.generateAll());
                        stringBuffer.append('<br />');
                    end;
                end;
            end else begin
                Exit('Generation Failed No Store Specified<br/>');
            end;
            stringBuffer.append('All Static Pages Generated<br/>');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

