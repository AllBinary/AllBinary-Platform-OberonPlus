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
// package views.generic.inventory
unit InventorySearch;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, SearchRequest, CommonStrings, InventoryViewSearchInterface;

type
  {AB:TYPES}
  TInventorySearch = class(TInterfacedObject, IInventoryViewSearchInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    basicItemData: TBasicItemData;
    searchRequest: TSearchRequest;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(searchRequest_: TSearchRequest);
        function searchSingleStaticPage: string; virtual;
        function searchSingleDynamicPage: string; virtual;
        function search: TArray<string>; virtual;
        function getProduct(product: string): string; virtual;
  end;

implementation
uses
  InventorySearchUtil, InventorySearchProductUtil, BasicArrayList, BasicArrayListD, StoreFrontInterface, StaticPagesEntity, SearchParams, InputOutputTypeData, AbPathData, StringMaker, Replace, AbeClientInformationInterface, ServiceClientInformationInterfaceFactory, CommonSeps;


{AB:CODE}

procedure TInventorySearch.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
end;

function TInventorySearch.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInventorySearch.Create(searchRequest_: TSearchRequest);
begin
        inherited Create();
        InitFields;
        Self.searchRequest := searchRequest_;
end;
    

// throws Exception
function TInventorySearch.searchSingleStaticPage: string;
var
  storeFront: IStoreFrontInterface;
  searchParams_: TSearchParams;
  columnValueHashMap: TJavaHashMap<TObject, TObject>;
  file_: string;
  stringBuffer: TStringMaker;
  filePath: string;
begin
        try
            storeFront := Self.searchRequest.getStoreFront();
            searchParams_ := Self.searchRequest.getParams();
            columnValueHashMap := searchParams_.get();
            file_ := TStaticPagesEntity.Create().getFile(storeFront.getName(), TReplace.Create('-', TCommonSeps.getInstance().SPACE).all(TJava.UnboxString(TJava.ToObject(columnValueHashMap.get(TJava.Box(Self.basicItemData.KEYWORDS))))));
            if (file_ = '') then begin
                Exit(nil);
            end else begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(storeFront.getCurrentHostName());
                stringBuffer.append(storeFront.getCurrentHostNamePath());
                stringBuffer.append(storeFront.getStaticPath());
                stringBuffer.append(file_);
                stringBuffer.append(Self.searchRequest.getParams().getEndPage());
                stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
                stringBuffer.append(TInputOutputTypeData.getInstance().DEFAULT);
                filePath := TReplace.Create(TCommonSeps.getInstance().SPACE, '%20').all(stringBuffer.toString());
                Exit(filePath);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'searchSingleStaticPage', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create('Failed retrieve Single Product Page Static');
            end;
        end;
end;
    

// throws Exception
function TInventorySearch.searchSingleDynamicPage: string;
var
  str: TArray<string>;
begin
        try
            str := Self.search();
            Exit(str[Self.searchRequest.getParams().getStartPageInt().intValue()]);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'searchSingleDynamicPage', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create('Failed retrieve Single Product Page Dynamically');
            end;
        end;
end;
    

// throws Exception
function TInventorySearch.search: TArray<string>;
var
  abeClientInformation: IAbeClientInformationInterface;
  inventorySearchUtil_: TInventorySearchUtil;
  vector: TBasicArrayList;
begin
        abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
        inventorySearchUtil_ := TInventorySearchUtil.getInstance();
        vector := inventorySearchUtil_.getBasicItemIdColumn(Self.searchRequest);
        Exit(inventorySearchUtil_.search(abeClientInformation, Self.searchRequest, vector));
end;
    

// throws Exception
function TInventorySearch.getProduct(product: string): string;
var
  abeClientInformation: IAbeClientInformationInterface;
begin
        abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
        Exit(TInventorySearchProductUtil.getInstance().getProduct(abeClientInformation, Self.searchRequest, product));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

