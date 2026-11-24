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
// package taghelpers
unit InventoryHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelper, StreetAddress, BasicItemData, WeblisketSession, LogUtil, SearchRequest;

type
  {AB:TYPES}
  TInventoryHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    weblisketSession: TWeblisketSession;
    response: THttpServletResponse;
    request: THttpServletRequest;
    streetAddress: TStreetAddress;
    id: string;
    searchRequest: TSearchRequest;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function viewSummary: string; virtual;
        function search: string; virtual;
  end;

implementation
uses
  StoreFrontData, StoreFrontFactory, StoreFrontInterface, AcceptableResponseGenerator, SearchParams, StringUtil, TransformInfoData, InventoryViewFactory, InventoryViewSearchInterface;


{AB:CODE}

procedure TInventoryHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
end;
    

constructor TInventoryHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
  xslFile: string;
  storeFrontInterface_: IStoreFrontInterface;
  contentType: string;
  searchParams_: TSearchParams;
begin
    inherited Create;
    InitFields;
        Self.response := THttpServletResponse(TJava.ToObject(pageContext_.getResponse()));
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        storeName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        xslFile := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TTransformInfoData.getInstance().TEMPLATEFILENAME))));
        if (storeName) <> ('') then begin
            storeFrontInterface_ := TStoreFrontFactory.getInstance(storeName);
            contentType := TAcceptableResponseGenerator.getInstance().get(Self.request);
            searchParams_ := TSearchParams.Create(Self.request);
            Self.searchRequest := TSearchRequest.Create(storeFrontInterface_, searchParams_, xslFile, contentType, propertiesHashMap, pageContext_);
        end;
        Self.getFormData();
end;
    

procedure TInventoryHelper.getFormData;
begin
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
end;
    

function TInventoryHelper.viewSummary: string;
var
  inventoryViewSearchInterface_: IInventoryViewSearchInterface;
  result_: string;
  error: string;
begin
        try
            inventoryViewSearchInterface_ := TInventoryViewFactory.getInstance(Self.searchRequest);
            result_ := inventoryViewSearchInterface_.getProduct(Self.id);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfull Inventory View Summary', TJava.Box(Self), 'viewSummary()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to View Summary';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewSummary()', TJava.Box(e));
            end;
            Exit(error + '<br>' + 'Exception: ' + TJava.ToString(e) + '<br>');
            end;
        end;
end;
    

function TInventoryHelper.search: string;
var
  stringUtil_: TStringUtil;
  keywords: string;
  inventoryViewSearchInterface_: IInventoryViewSearchInterface;
  result_: string;
  error: string;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            keywords := TJava.UnboxString(TJava.ToObject(Self.searchRequest.getParams().get().get(Self.basicItemData.KEYWORDS)));
            if ((keywords) = ('')) or ((CompareStr(keywords, stringUtil_.EMPTY_STRING)) = (0)) then begin
                Exit('Please enter a keyword in the search field above the Search button.');
            end;
            inventoryViewSearchInterface_ := TInventoryViewFactory.getInstance(Self.searchRequest);
            result_ := inventoryViewSearchInterface_.searchSingleDynamicPage();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successful Inventory Dynamic Search', TJava.Box(Self), 'searchSingleDynamicPage()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to search Inventory by keyword';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'searchSingleDynamicPage()', TJava.Box(e));
            end;
            Exit(error + '<br>' + 'Exception: ' + TJava.ToString(e) + '<br>');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

