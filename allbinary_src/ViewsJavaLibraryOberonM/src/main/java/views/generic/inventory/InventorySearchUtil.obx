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
unit InventorySearchUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, LogUtil, SearchRequest, AbeClientInformationInterface, TransformDocumentInterface, CommonPhoneStrings, CommonStrings, BasicArrayList, Node;

type
  {AB:TYPES}
  TInventorySearchUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonPhoneStrings: TCommonPhoneStrings;
    basicItemData: TBasicItemData;
    class var instance: TInventorySearchUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInventorySearchUtil; static;
        function getBasicItemIdColumn(searchRequest_: TSearchRequest): TBasicArrayList; virtual;
        function getNoResults(viewDocumentInterface: ITransformDocumentInterface; inventoryNode: TNode): string;
        function search(abeClientInformation: IAbeClientInformationInterface; searchRequest_: TSearchRequest; column: TBasicArrayList): TArray<string>; virtual;
  end;

implementation
uses
  InventoryColumnUtil, BasicArrayListD, StoreFrontInterface, InventoryData, BasketData, BasicItemView, ItemInterface, InventoryEntity, InventoryEntityFactory, ModDomHelper, XmlDocumentHelper, SearchData, SearchParams, StringMaker, Replace, StoreTransformer, TransformStoreDocumentFactory, TransformInfoHttpSearch, TransformInfoInterface, CommonSeps, Document;


{AB:CODE}

procedure TInventorySearchUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonPhoneStrings := TCommonPhoneStrings.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
end;

constructor TInventorySearchUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInventorySearchUtil.getInstance: TInventorySearchUtil;
begin
        Exit(TInventorySearchUtil.instance);
end;
    

// throws Exception
function TInventorySearchUtil.getBasicItemIdColumn(searchRequest_: TSearchRequest): TBasicArrayList;
var
  inventoryEntityInterface: TInventoryEntity;
  storeFrontInterface_: IStoreFrontInterface;
  inventorySearchUtil_: TInventoryColumnUtil;
  column: TBasicArrayList;
  subStoreVector: TBasicArrayList;
  size: Integer;
  subStore: string;
  substoreIdColumn: TBasicArrayList;
  index: Integer;
begin
        inventoryEntityInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
        storeFrontInterface_ := searchRequest_.getStoreFront();
        inventorySearchUtil_ := TInventoryColumnUtil.getInstance();
        column := inventorySearchUtil_.getColumnWhereLike(inventoryEntityInterface, storeFrontInterface_.getCategoryPath(), Self.basicItemData.ID);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF('Number Of Items Found: ' + IntToStr(column.size()), TJava.Box(Self), 'search');
        end;
        subStoreVector := storeFrontInterface_.getSubStores();
        size := subStoreVector.size();
        for index := 0 to size - 1 do begin
            subStore := TJava.UnboxString(TJava.ToObject(subStoreVector.get(index)));
            substoreIdColumn := inventorySearchUtil_.getColumnWhereLike(inventoryEntityInterface, subStore, Self.basicItemData.ID);
            column.addAllList(substoreIdColumn);
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF('Number Of Items Found Including SubStores: ' + IntToStr(column.size()), TJava.Box(Self), 'search');
        end;
        Exit(column);
end;
    

// throws Exception
function TInventorySearchUtil.getNoResults(viewDocumentInterface: ITransformDocumentInterface; inventoryNode: TNode): string;
var
  success: string;
begin
        inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.TOTAL_NUMBER_PAGES, Self.commonPhoneStrings.ZERO));
        inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.TOTAL_NUMBER_ITEMS, Self.commonPhoneStrings.ZERO));
        success := TXmlDocumentHelper.toString(viewDocumentInterface.getDoc());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF('No Results Xml: ' + success, TJava.Box(Self), 'search');
        end;
        Exit(success);
end;
    

function TInventorySearchUtil.search(abeClientInformation: IAbeClientInformationInterface; searchRequest_: TSearchRequest; column: TBasicArrayList): TArray<string>;
var
  inventoryEntityInterface: TInventoryEntity;
  searchParams_: TSearchParams;
  startPage: Integer;
  endPage: Integer;
  pageLength: Integer;
  savedPagesInRange: Integer;
  columnValueHashMap: TJavaHashMap<TObject, TObject>;
  keyword: string;
  stringBuffer: TStringMaker;
  MAXPAGES: Integer;
  productListingPages: TArray<string>;
  documents: TArray<TDocument>;
  inventoryNodes: TArray<TNode>;
  lastPage: Integer;
  numberOfResultsOnCurrentPage: Integer;
  numberOfResults: Integer;
  viewDocumentInterface: ITransformDocumentInterface;
  inventoryNode: TNode;
  currentPage: Integer;
  size: Integer;
  product: string;
  itemInterface_: IItemInterface;
  keywords: string;
  itemNode: TNode;
  index: Integer;
  tempDocument: TDocument;
  pageIndex: Integer;
  success: string;
  result_: string;
begin
        try
            inventoryEntityInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            searchParams_ := searchRequest_.getParams();
            startPage := searchParams_.getStartPageInt().intValue();
            endPage := searchParams_.getEndPageInt().intValue();
            pageLength := searchParams_.getLengthInt().intValue();
            savedPagesInRange := 0;
            columnValueHashMap := searchParams_.get();
            keyword := TReplace.Create('-', TCommonSeps.getInstance().SPACE).all(TJava.UnboxString(TJava.ToObject(columnValueHashMap.get(TJava.Box(Self.basicItemData.KEYWORDS)))));
            if (keyword = '') then begin
                Exit(nil);
            end;
            stringBuffer := TStringMaker.Create();
            if (startPage) >= (0) then begin
                if (pageLength) = (0) then begin
                    pageLength := TSearchData.DEFAULT_PAGE_LENGTH;
                end;
                MAXPAGES := 100;
                productListingPages := TJava.NewArray<string>(MAXPAGES);
                documents := TJava.NewArray<TDocument>(MAXPAGES);
                inventoryNodes := TJava.NewArray<TNode>(MAXPAGES);
                keyword := UpperCase(keyword);
                lastPage := -1;
                numberOfResultsOnCurrentPage := 0;
                numberOfResults := 0;
                viewDocumentInterface := TTransformStoreDocumentFactory.getInstance(searchRequest_);
                inventoryNode := viewDocumentInterface.getDoc().createElement(TInventoryData.INVENTORY);
                viewDocumentInterface.getBaseNode().appendChild(inventoryNode);
                inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.PAGE, startPage.toString()));
                if not TJava.IsNull(searchRequest_.getFileBaseName()) then begin
                    inventoryNode.appendChild(searchRequest_.getFileBaseNameNode(viewDocumentInterface.getDoc()));
                end;
                currentPage := -1;
                size := column.size();
                for index := 0 to size - 1 do begin
                    product := TJava.NewString(TJava.UnboxString(TJava.ToObject(column.get(index))));
                    itemInterface_ := inventoryEntityInterface.getItem(product);
                    keywords := itemInterface_.getKeywords();
                    keywords := UpperCase(keywords);
                    if ((Pos(TJava.ToString(keyword), keywords) - 1)) <> (-1) then begin
                        if (((currentPage) + (1)) >= (startPage)) and (((currentPage) + (1)) <= (endPage)) then begin
                            itemNode := TBasicItemView.Create(itemInterface_, TBasicArrayListD.Create()).toXmlNode(viewDocumentInterface.getDoc());
                            itemNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TBasketData.ITEMTOTALINBASKET, Self.commonPhoneStrings.ONE));
                            inventoryNode.appendChild(itemNode.cloneNode(True));
                        end;
                        currentPage := (((((numberOfResults) + (1))) div (pageLength))) - (1);
                        Inc(numberOfResultsOnCurrentPage);
                        if (lastPage) < (currentPage) then begin
                            if ((currentPage) >= (startPage)) and ((currentPage) <= (endPage)) then begin
                                inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage.toString()));
                                documents[currentPage] := viewDocumentInterface.getDoc();
                                inventoryNodes[currentPage] := inventoryNode;
                                Inc(savedPagesInRange);
                                viewDocumentInterface := TTransformStoreDocumentFactory.getInstance(searchRequest_);
                                inventoryNode := viewDocumentInterface.getDoc().createElement(TInventoryData.INVENTORY);
                                viewDocumentInterface.getBaseNode().appendChild(inventoryNode);
                                inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.PAGE, (currentPage) + (1).toString()));
                                if not TJava.IsNull(searchRequest_.getFileBaseName()) then begin
                                    inventoryNode.appendChild(searchRequest_.getFileBaseNameNode(viewDocumentInterface.getDoc()));
                                end;
                            end;
                            lastPage := currentPage;
                            numberOfResultsOnCurrentPage := 0;
                        end;
                        Inc(numberOfResults);
                        if (lastPage) >= ((MAXPAGES) - (1)) then begin
                            Break;
                        end;
                    end;
                end;
                if ((numberOfResultsOnCurrentPage) > (0)) and (((((currentPage) + (1)) >= (startPage)) and (((currentPage) + (1)) <= (endPage)))) then begin
                    inventoryNode.appendChild(TModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), TSearchData.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, (numberOfResultsOnCurrentPage) - (1).toString()));
                    documents[(lastPage) + (1)] := viewDocumentInterface.getDoc();
                    inventoryNodes[(lastPage) + (1)] := inventoryNode;
                    Inc(savedPagesInRange);
                end;
                if (numberOfResultsOnCurrentPage) > (0) then begin
                    Inc(lastPage);
                end;
                if (endPage) > ((MAXPAGES) - (1)) then begin
                    endPage := (MAXPAGES) - (1);
                end;
                for index := startPage to endPage do begin
                    if (index) <= (lastPage) then begin
                        tempDocument := documents[index];
                        inventoryNodes[index].appendChild(TModDomHelper.createNameValueNodes(tempDocument, TSearchData.TOTAL_NUMBER_PAGES, (lastPage) + (1).toString()));
                        inventoryNodes[index].appendChild(TModDomHelper.createNameValueNodes(tempDocument, TSearchData.TOTAL_NUMBER_ITEMS, numberOfResults.toString()));
                        for pageIndex := 0 to lastPage do begin
                            stringBuffer.delete_(0, stringBuffer.length());
                            stringBuffer.append(searchRequest_.getFileBaseName());
                            if (stringBuffer.length()) > (0) then begin
                                if (pageIndex) <> (0) then begin
                                    stringBuffer.append(IntToStr(pageIndex));
                                end;
                                inventoryNodes[index].appendChild(TModDomHelper.createNameValueNodes(tempDocument, TSearchData.PAGE_INFO, IntToStr(pageIndex), stringBuffer.toString()));
                            end else begin
                                inventoryNodes[index].appendChild(TModDomHelper.createNameValueNodes(tempDocument, TSearchData.PAGE_INFO, IntToStr(pageIndex), TSearchData.SEARCH));
                            end;
                        end;
                        success := TXmlDocumentHelper.toString(tempDocument);
                        productListingPages[index] := TStoreTransformer.Create(abeClientInformation, (TJava.ToObject(TTransformInfoHttpSearch.Create(searchRequest_)) as ITransformInfoInterface)).translate(success);
                    end;
                end;
                if (savedPagesInRange) = (0) then begin
                    result_ := Self.getNoResults(viewDocumentInterface, inventoryNode);
                    productListingPages[0] := TStoreTransformer.Create(abeClientInformation, TTransformInfoHttpSearch.Create(searchRequest_)).translate(result_);
                end;
                Exit(productListingPages);
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'search', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInventorySearchUtil.instance := TInventorySearchUtil.Create();
  {AB:END}

end.

