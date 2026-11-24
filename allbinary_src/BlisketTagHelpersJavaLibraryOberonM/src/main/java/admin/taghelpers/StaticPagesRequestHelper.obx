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
unit StaticPagesRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbContext, LogUtil, SearchParams, AbeClientInformationInterface, TagHelperInterface;

type
  {AB:TYPES}
  TStaticPagesRequestHelper = class(TAbContext, ITagHelperInterface)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    request: THttpServletRequest;
    storeName: string;
    searchParams: TSearchParams;
    xslFile: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        procedure email;
        function generateStaticPages: string; virtual;
        function makePublic: string; virtual;
  end;

implementation
uses
  StoreFrontData, StoreFrontFactory, StoreFrontInterface, URLGLOBALS, AcceptableResponseGenerator, UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, StoreAdminUserEmailEventHandlerSingletons, AdminEmailInfo, BasicEmailInfo, EmailInfo, StoreEmailInfo, SearchRequest, FileUtil, AbPath, AbPathData, StringUtil, ServiceClientInformationInterfaceFactory, TransformInfoData, ProductListingFactory;


{AB:CODE}

procedure TStaticPagesRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
  
end;

function TStaticPagesRequestHelper.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStaticPagesRequestHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.xslFile := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TTransformInfoData.getInstance().TEMPLATEFILENAME))));
        Self.getFormData();
end;
    

procedure TStaticPagesRequestHelper.getFormData;
begin
        Self.storeName := Self.request.getParameter(TStoreFrontData.getInstance().NAME);
        Self.searchParams := TSearchParams.Create(Self.request);
end;
    

// throws Exception
procedure TStaticPagesRequestHelper.email;
var
  storeFrontInterface_: IStoreFrontInterface;
  adminEmailSubject: string;
  adminEmailTextBody: string;
  adminBasicEmailInfo: TBasicEmailInfo;
  storeAdminBasicEmailInfo: TBasicEmailInfo;
  storeAdminEmailInfo: TEmailInfo;
  adminEmailInfo_: TEmailInfo;
  adminUserEmailEventHandler: TUserEmailEventHandler;
  storeAdminUserEmailEventHandler: TUserEmailEventHandler;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Generated Static Pages Notification Email', TJava.Box(Self), 'email');
            end;
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.storeName);
            adminEmailSubject := 'Generated Static Pages Email Notification';
            adminEmailTextBody := 'Generated static pages for store: ' + Self.storeName;
            adminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(adminEmailSubject, adminEmailTextBody)));
            storeAdminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(storeFrontInterface_, adminEmailSubject, adminEmailTextBody)));
            storeAdminEmailInfo := TEmailInfo.Create(storeAdminBasicEmailInfo);
            adminEmailInfo_ := TEmailInfo.Create(adminBasicEmailInfo);
            adminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.STOREGENERATINGSTATICPAGES);
            storeAdminUserEmailEventHandler := TStoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(TUserEmailEventNameData.STOREGENERATINGSTATICPAGES, Self.abeClientInformation, storeFrontInterface_);
            storeAdminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.STOREGENERATINGSTATICPAGES, storeAdminEmailInfo);
            adminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.STOREGENERATINGSTATICPAGES, adminEmailInfo_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'email', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TStaticPagesRequestHelper.generateStaticPages: string;
var
  contentType: string;
  searchRequest_: TSearchRequest;
  success: string;
  error: string;
begin
        try
            contentType := TAcceptableResponseGenerator.getInstance().get(Self.request);
            searchRequest_ := TSearchRequest.Create(nil, Self.searchParams, Self.xslFile, contentType, Self.getPropertiesHashMap(), Self.getPageContext());
            success := TProductListingFactory.getInstance(searchRequest_).generateAll(Self.storeName);
            Self.email();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'generateStaticPages()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to generate staticpages table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateStaticPages()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TStaticPagesRequestHelper.makePublic: string;
var
  storeFrontInterface_: IStoreFrontInterface;
  fromAbPath: TAbPath;
  toAbPath: TAbPath;
  success: string;
  error: string;
begin
        try
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.storeName);
            fromAbPath := TAbPath.Create((storeFrontInterface_.getTestHtmlPath()) + (storeFrontInterface_.getStaticPath()), TStringUtil.getInstance().EMPTY_STRING);
            toAbPath := TAbPath.Create(TJava.ToString(TURLGLOBALS.getWebappPath()) + storeFrontInterface_.getName() + TJava.ToString(TAbPathData.getInstance().SEPARATOR) + TJava.ToString(storeFrontInterface_.getStaticPath()), TStringUtil.getInstance().EMPTY_STRING);
            TFileUtil.getInstance().copy(fromAbPath, toAbPath);
            success := 'Made Public';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'makePublic()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to makePublic';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'makePublic()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

